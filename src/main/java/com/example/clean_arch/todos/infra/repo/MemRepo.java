package com.example.clean_arch.todos.infra.repo;

import com.example.clean_arch.todos.biz_core.domain.Task;
import com.example.clean_arch.todos.biz_core.port.ITaskRepo;
import com.example.clean_arch.todos.ui.rest.controller.AppTodosAPI;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Hashtable;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

@Repository
public class MemRepo implements ITaskRepo {

    private static Logger LOGGER = LoggerFactory.getLogger(MemRepo.class);
    private Hashtable<String, List<Task>> memory = new Hashtable<>();

    @Override
    public void createTaskForUser(String userName, Task task) {
        List<Task> lstTaskOfUser = memory.get(userName);
        if (lstTaskOfUser != null) {
            lstTaskOfUser.add(task);
        } else {
            lstTaskOfUser = new ArrayList<Task>();
            lstTaskOfUser.add(task);
            memory.put(userName, lstTaskOfUser);
        }
    }

    @Override
    public List<Task> getTasksOfUser(String userName) {
        List<Task> lstTask = memory.get(userName);
        return lstTask;
        // how to avoid null
    }

    @Override
    public Task getTaskById(String taskID) {
        AtomicReference<Task> value = new AtomicReference<>();
        memory.values().forEach((taskList) -> {
            taskList.forEach((task) -> {
                LOGGER.info("getTaskById() - task: " + task.toString());
                if (task.getId().equals(taskID)) {
                    value.set(task);
                }
            });
        });

        return value.get();
    }
}
