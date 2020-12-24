package com.example.clean_arch.todos;

import com.example.clean_arch.todos.biz_core.domain.Task;
import com.example.clean_arch.todos.biz_core.usecase.TaskUC;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

@SpringBootApplication
public class TodosApplication implements CommandLineRunner {

    private static Logger LOGGER = LoggerFactory.getLogger(TodosApplication.class);

    @Autowired
    private ApplicationContext appContext;

    public static void main(String[] args) {
        SpringApplication.run(TodosApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        LOGGER.info("====== Main Program ======");

        /*TaskUC uc = appContext.getBean(TaskUC.class);
        String user = "joe";

        Task newTask = uc.createTask(user, "My first task");
        Task secondTask = uc.createTask(user, "My second task");

        List<Task> lst = uc.getTasksByUsername(user);
        LOGGER.info("Current tasks for " + user);
        lst.forEach((item) -> {
            LOGGER.info("\t " + item.toString());
        });*/
    }
}
