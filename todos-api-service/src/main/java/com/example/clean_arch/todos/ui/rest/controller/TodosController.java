package com.example.clean_arch.todos.ui.rest.controller;

import com.example.clean_arch.todos.biz_core.domain.Task;
import com.example.clean_arch.todos.biz_core.usecase.TaskUC;
import com.example.clean_arch.todos.ui.rest.api.v1.AppTodosApi;
import com.example.clean_arch.todos.ui.rest.api.v1.model.TaskReqModel;
import com.example.clean_arch.todos.ui.rest.api.v1.model.TaskRespDetailModel;
import com.example.clean_arch.todos.ui.rest.api.v1.model.TaskRespModel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.net.URI;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@RestController
public class TodosController implements AppTodosApi {

    private static Logger LOGGER = LoggerFactory.getLogger(TodosController.class);

    @Autowired
    private TaskUC taskUC;

    @Override
    public ResponseEntity<TaskRespModel> addNewTodoTask(@Valid @NotNull TaskReqModel reqModel) {
        LOGGER.info("reqModel: " + reqModel.toString());
        Task newTask = taskUC.createTask(reqModel.getUserName(), reqModel.getTaskDesc());
        LOGGER.info("newTask: " + newTask.toString());

        TaskRespModel respModel = new TaskRespModel();
        respModel.setId(newTask.getId());
//        respModel.setDescription(newTask.getDesc());
//        respModel.setStatus(newTask.getState());
        respModel.setDetail(
            new TaskRespDetailModel()
                .description(newTask.getDesc())
                .status(newTask.getState()))
        ;

//        return ResponseEntity.ok().body(respModel);

        // return 201 with url?
        URI detailURI = ServletUriComponentsBuilder
                .fromCurrentRequest()
                .path("/{id}")
                .buildAndExpand(newTask.getId())
                .toUri();
        return ResponseEntity.created(detailURI).body(respModel);
    }

    @Override
    public ResponseEntity<List<TaskRespModel>> getListTask(@Valid @NotNull String userName) {
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
                        item -> new TaskRespModel()
                                .id(item.getId())
                                .detail(
                                    new TaskRespDetailModel()
                                        .description(item.getDesc())
                                        .status(item.getState())
                                )
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

    @Override
    public ResponseEntity<TaskRespModel> getTodoById(String todoId) {
        LOGGER.info("getTaskById() - id: " + todoId);
        Task task = taskUC.getTaskById(todoId);
        if (task == null) {
            return ResponseEntity.notFound().build();
        } else {
            return ResponseEntity.ok().body(
                new TaskRespModel()
                    .id(task.getId())
                    .detail(
                        new TaskRespDetailModel()
                            .description(task.getDesc())
                            .status(task.getState())
                    )
            );
        }
    }
}
