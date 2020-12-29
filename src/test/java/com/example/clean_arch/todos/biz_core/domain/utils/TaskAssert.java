package com.example.clean_arch.todos.biz_core.domain.utils;

import com.example.clean_arch.todos.biz_core.domain.Task;
import org.assertj.core.api.AbstractAssert;
import org.assertj.core.api.Assertions;

public class TaskAssert extends AbstractAssert<TaskAssert, Task> {

    private TaskAssert(Task actual) {
        super(actual, TaskAssert.class);
    }

    public static TaskAssert makeSureTheTask(Task actual) {
        return new TaskAssert(actual);
    }

    public TaskAssert hasID(String id) {
        isNotNull();
        Assertions.assertThat(actual.getId()).isEqualTo(id);
        return this;
    }

    public TaskAssert isNewTask() {
        isNotNull();
        Assertions.assertThat(actual.isNew()).isTrue();
        return this;
    }

    public TaskAssert hasDescription(String desc) {
        isNotNull();
        Assertions.assertThat(actual.getDesc()).isEqualTo(desc);
        return this;
    }
}
