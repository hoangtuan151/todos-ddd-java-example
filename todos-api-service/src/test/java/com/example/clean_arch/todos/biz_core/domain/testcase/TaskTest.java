package com.example.clean_arch.todos.biz_core.domain.testcase;

import com.example.clean_arch.todos.biz_core.domain.Task;
import com.example.clean_arch.todos.biz_core.domain.utils.TaskAssert;
import org.junit.jupiter.api.Test;

public class TaskTest {

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
