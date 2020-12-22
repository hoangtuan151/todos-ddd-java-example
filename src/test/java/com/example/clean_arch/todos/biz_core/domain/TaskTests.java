package com.example.clean_arch.todos.biz_core.domain;

import com.example.clean_arch.todos.utils.TaskAssert;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class TaskTests {

    @Test
    void creationTest() {
        String id = "id123";
        String desc = "The first task";
        Task t1 = new Task(id, desc);

//        Unit test language
//        Assertions.assertEquals(t1.getId(), id);

//        Domain language
        TaskAssert.makeSureTheTask(t1)
                .hasID(id)
                .isNewTask();
    }
}
