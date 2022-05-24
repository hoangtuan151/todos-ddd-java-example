package com.example.clean_arch.todos.biz_core.port;

import com.example.clean_arch.todos.biz_core.domain.Task;

import java.util.List;

public interface ITaskRepo {
    public void createTaskForUser(String userName, Task task);
    public List<Task> getTasksOfUser(String userName);
    public Task getTaskById(String taskID);
}
