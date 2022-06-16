package com.example.clean_arch.todos.ui.rest.controller.testcase;

import com.example.clean_arch.todos.biz_core.domain.Task;
import com.example.clean_arch.todos.biz_core.domain.utils.TaskAssert;
import com.example.clean_arch.todos.biz_core.port.ITaskRepo;
import com.example.clean_arch.todos.biz_core.usecase.TaskUC;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
public class TodosUsecaseTest {

    @Autowired
    private ITaskRepo taskRepo;

    @Autowired
    private TaskUC taskUC;

    private String defaultUser;

    @BeforeEach
    void setUp() {
        defaultUser = "joe";
    }

    @Test
    void successToGetTasksOfUser() {
        String user = "johndoe";

        Task newTask = new Task("task_id", "My first task");
        taskRepo.createTaskForUser(user, newTask);

        Task lastTask = taskUC.getTasksByUsername(user).get(0);

        TaskAssert.makeSureTheTask(lastTask)
                .hasID(newTask.getId())
                .hasDescription(newTask.getDesc());
    }

    @Test
    void successCreateTaskForUser() {
        Task aTask = new Task("id-001", "Task 001");
        Task savedTask = taskUC.createTask(defaultUser, aTask.getDesc());

        Task expectedTask = taskRepo.getTaskById(savedTask.getId());
        TaskAssert.makeSureTheTask(expectedTask)
                .hasDescription(aTask.getDesc());
    }

    /*@Test
    void whenValidId_thenTaskShouldBeFound() {
        // Arrange
        Task aTask = new Task("001", "Task 001");
        when(
            mockTaskRepo.getTaskById(aTask.getId())
        ).thenReturn(
            aTask
        );

        // Act
        Task found = taskUC.getTaskById(aTask.getId());

        // Assert
        Assertions.assertEquals(aTask.getId(), found.getId());
    }*/
}
