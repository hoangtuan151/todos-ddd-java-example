package com.example.clean_arch.todos.ui.rest.model;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Data
public class TaskReqModel {
    @NotBlank
    private String userName;
    @NotBlank
    private String taskDesc;
}
