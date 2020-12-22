package com.example.clean_arch.todos.biz_core.usecase;

import com.example.clean_arch.todos.TodosApplication;
import com.example.clean_arch.todos.biz_core.domain.Task;
import com.example.clean_arch.todos.biz_core.port.ITaskRepo;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.UUID;

@Service
public class TaskUC {
    private static Logger LOGGER = LoggerFactory.getLogger(TaskUC.class);

    @Autowired
    private ITaskRepo taskRepo;

    public Task createTask(String userName, String taskDesc) {
        String taskID = UUID.randomUUID().toString();
        Task newTask = new Task(taskID, taskDesc);
        taskRepo.createTaskForUser(userName, newTask);
        return newTask;
    }

    public List<Task> getTasksByUsername(String userName) {
        List<Task> lst = taskRepo.getTasksOfUser(userName);
        return lst;
    }

    public Task getTaskById(String taskID) {
        return taskRepo.getTaskById(taskID);
    }
}
