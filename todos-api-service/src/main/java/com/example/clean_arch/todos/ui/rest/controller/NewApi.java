package com.example.clean_arch.todos.ui.rest.controller;

import com.example.clean_arch.todos.ui.rest.api.v1.AppTodosApi;
import com.example.clean_arch.todos.ui.rest.api.v1.model.TaskReqModel;
import com.example.clean_arch.todos.ui.rest.api.v1.model.TaskRespDetailModel;
import com.example.clean_arch.todos.ui.rest.api.v1.model.TaskRespModel;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

@RestController
public class NewApi implements AppTodosApi {
    @Override
    public ResponseEntity<TaskRespModel> createPost(@Valid @NotNull TaskReqModel taskReqModel) {
        return ResponseEntity.ok(new TaskRespModel().id("123").detail(new TaskRespDetailModel().description(taskReqModel.getTaskDesc()).status("new")));
    }
}
