package com.example.clean_arch.todos.ui.rest.model;

import com.example.clean_arch.todos.biz_core.domain.Task;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class TaskRespModel {
    private String id;
//    private String description;
//    private String status;

    private Detail detail;

    public TaskRespModel() {};

    public TaskRespModel(Task task) {
        this.id = task.getId();
        this.detail = this.new Detail(
            task.getDesc(),
            task.getState()
        );
    }

    @Data
    @AllArgsConstructor
    public class Detail {
        private String description;
        private String status;
    }
}
