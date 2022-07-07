package com.example.clean_arch.todos_client;

import com.example.clean_arch.todos_client.utils.api.client.ApiClient;
import com.example.clean_arch.todos_client.utils.api.client.v1.AppTodosApi;
import com.example.clean_arch.todos_client.utils.api.client.v1.model.TaskRespModel;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Primary;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@SpringBootApplication
public class TodosClientApplication implements CommandLineRunner {

    private static Logger LOGGER = LoggerFactory.getLogger(TodosClientApplication.class);

    @Autowired
    private ApplicationContext appContext;

    @Autowired
    private AppTodosApi appTodosApi;

    public static void main(String[] args) {
        SpringApplication.run(TodosClientApplication.class, args);
    }

    @Bean
    RestTemplate restTemplate() {
        return new RestTemplate();
    }

    @Bean
    @Primary
    ApiClient apiClient() {
        ApiClient apiClient = new ApiClient();
        apiClient.setBasePath("http://localhost:8080");
        return apiClient;
    }

    @Override
    public void run(String... args) throws Exception {
        LOGGER.info("====== Main Program ======");
        List<TaskRespModel> tasks = appTodosApi.getListTask("joe");
        tasks.forEach(task -> LOGGER.info("\t Got task: {}", task));
    }
}
