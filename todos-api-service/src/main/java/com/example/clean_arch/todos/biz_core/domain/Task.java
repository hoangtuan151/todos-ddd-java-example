package com.example.clean_arch.todos.biz_core.domain;

import lombok.Data;

@Data
public class Task {
    private String id;
    private String desc;
    private String state;

    public Task(String id, String desc) {
        this.id = id;
        this.desc = desc;
        this.state = "NEW";
    }

    public boolean isNew() {
        return this.state == "NEW";
    }
}
