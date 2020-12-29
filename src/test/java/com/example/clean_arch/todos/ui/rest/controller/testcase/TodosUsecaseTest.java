package com.example.clean_arch.todos.ui.rest.controller.testcase;

import com.example.clean_arch.todos.biz_core.domain.Task;
import com.example.clean_arch.todos.biz_core.domain.utils.TaskAssert;
import com.example.clean_arch.todos.biz_core.port.ITaskRepo;
import com.example.clean_arch.todos.biz_core.usecase.TaskUC;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import static org.mockito.Mockito.when;

@SpringBootTest
public class TodosUsecaseTest {

    @Autowired
    private ITaskRepo taskRepo;

    @Autowired
    private TaskUC taskUC;

    @Test
    void getTasksOfUser() {
        String user = "johndoe";

        Task newTask = new Task("task_id", "My first task");
        taskRepo.createTaskForUser(user, newTask);

        Task lastTask = taskUC.getTasksByUsername(user).get(0);

        TaskAssert.makeSureTheTask(lastTask)
                .hasID(newTask.getId())
                .hasDescription(newTask.getDesc());
    }
    
}
