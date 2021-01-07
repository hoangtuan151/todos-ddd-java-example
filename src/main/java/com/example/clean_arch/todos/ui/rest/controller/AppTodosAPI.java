package com.example.clean_arch.todos.ui.rest.controller;

import com.example.clean_arch.todos.TodosApplication;
import com.example.clean_arch.todos.biz_core.domain.Task;
import com.example.clean_arch.todos.biz_core.usecase.TaskUC;
import com.example.clean_arch.todos.ui.rest.model.TaskReqModel;
import com.example.clean_arch.todos.ui.rest.model.TaskRespModel;
import com.example.clean_arch.todos.ui.rest.util.EmptyJsonBodyArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.Errors;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

import javax.validation.Valid;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/app")
public class AppTodosAPI {

    private static Logger LOGGER = LoggerFactory.getLogger(AppTodosAPI.class);

    @Autowired
    private TaskUC taskUC;

    @PostMapping("/todos")
    public ResponseEntity addNewTodoTask(@Valid @RequestBody TaskReqModel reqModel, Errors errs) {
        if (errs.hasErrors()) {
            LOGGER.error("Request errors: " + errs.getErrorCount());
            for (ObjectError err : errs.getAllErrors()) {
                LOGGER.error("\t - err: " + err.getDefaultMessage());
            }

            return ResponseEntity.badRequest().build();
        }

        LOGGER.info("reqModel: " + reqModel.toString());
        Task newTask = taskUC.createTask(reqModel.getUserName(), reqModel.getTaskDesc());
        LOGGER.info("newTask: " + newTask.toString());

        TaskRespModel respModel = new TaskRespModel();
        respModel.setId(newTask.getId());
//        respModel.setDescription(newTask.getDesc());
//        respModel.setStatus(newTask.getState());
        respModel.setDetail(respModel.new Detail(newTask.getDesc(), newTask.getState()));

//        return ResponseEntity.ok().body(respModel);

        // return 201 with url?
        URI detailURI = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(newTask.getId())
                .toUri();
        return ResponseEntity.created(detailURI).body(respModel);
    }

    @GetMapping("/todos")
    public ResponseEntity<List<TaskRespModel>> getListTask(@RequestParam("user") String userName) {
        try {
            LOGGER.info("getListTask for user: " + userName);
            List<Task> taskList = taskUC.getTasksByUsername(userName);

            /*List<TaskRespModel> responses = new ArrayList<>();
            taskList.forEach((item) -> {
                TaskRespModel respItem = new TaskRespModel();
                respItem.setId(item.getId());
                respItem.setDetail(respItem.new Detail(item.getDesc(), item.getState()));

                responses.add(
                    respItem
                );
            });
            return ResponseEntity.ok().body(responses);
            */

            if (taskList != null) {
                return ResponseEntity.ok().body(
                        taskList.stream().map(
                            item -> new TaskRespModel(item)
                        ).collect(Collectors.toList())
                );
            } else {
                return ResponseEntity.ok().body(new ArrayList<>());
            }
        } catch (Exception e) {
            LOGGER.error("Exception here: " + e.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
        }
    }

    @GetMapping("/todos/{id}")
    public ResponseEntity getTaskById(@PathVariable("id") String taskID) {
        LOGGER.info("getTaskById() - id: " + taskID);
        Task task = taskUC.getTaskById(taskID);
        if (task == null) {
            return ResponseEntity.notFound().build();
        } else {
            return ResponseEntity.ok().body(new TaskRespModel(task));
        }
    }
}
