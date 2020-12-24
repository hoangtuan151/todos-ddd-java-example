package com.example.clean_arch.todos.infra.repo.sql;

import com.example.clean_arch.todos.biz_core.domain.Task;
import com.example.clean_arch.todos.biz_core.port.ITaskRepo;
import com.example.clean_arch.todos.infra.repo.sql.entity.TaskEntity;
import com.example.clean_arch.todos.infra.repo.sql.entity.UserEntity;
import com.example.clean_arch.todos.infra.repo.sql.repo.TaskRepo;
import com.example.clean_arch.todos.infra.repo.sql.repo.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Component
@Primary
public class SqlRepo implements ITaskRepo {

    @Autowired
    private TaskRepo taskRepo;

    @Autowired
    private UserRepo userRepo;

    @Override
    public void createTaskForUser(String userName, Task task) {
        UserEntity userETT = userRepo.findByUsername(userName);
        if (userETT == null) {
            userETT = new UserEntity();
            userETT.setUsername(userName);
            userRepo.saveAndFlush(userETT);
        }

        TaskEntity taskETT = new TaskEntity();
        taskETT.setId(task.getId());
        taskETT.setDesc(task.getDesc());
        taskETT.setStatus(task.isNew() ? 0 : -1);
        taskETT.setUser(userETT);

        taskRepo.saveAndFlush(taskETT);
    }

    @Override
    public List<Task> getTasksOfUser(String userName) {
        return null;
    }

    @Override
    public Task getTaskById(String taskID) {
        Optional<TaskEntity> taskEttOpt = taskRepo.findById(taskID);
        if (taskEttOpt.isPresent()) {
//            https://stackoverflow.com/a/49317013
            TaskEntity taskEtt = taskEttOpt.get();

            Task result = new Task(
                taskEtt.getId().toString(),
                taskEtt.getDesc()
            );

            if (taskEtt.getStatus() == 0) {
//                ...
            }
            return result;
        } else {
            return null;
        }
    }
}
