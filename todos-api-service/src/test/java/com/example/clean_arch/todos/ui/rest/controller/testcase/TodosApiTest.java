package com.example.clean_arch.todos.ui.rest.controller.testcase;

import com.example.clean_arch.todos.biz_core.domain.Task;
import com.example.clean_arch.todos.biz_core.usecase.TaskUC;
import com.example.clean_arch.todos.ui.rest.api.v1.model.TaskReqModel;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import static org.hamcrest.Matchers.hasSize;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@ExtendWith(SpringExtension.class)
@WebMvcTest
public class TodosApiTest {

    @Autowired
    MockMvc mockMvc;

    @MockBean
    private TaskUC taskUC;

    private List<Task> taskLst;
    private String defaultUser;

    @BeforeEach
    void setUp() throws ParseException {
        defaultUser = "joe";

        taskLst = new ArrayList<>();
        taskLst.add(new Task("tid-01", "The first task"));
        taskLst.add(new Task("tid-02", "The second task"));
    }

    @Test
    void successToGetTasksOfUser() throws Exception {
        String username = "joe";
        when(taskUC.getTasksByUsername(username)).thenReturn(taskLst);

        mockMvc.perform(
            MockMvcRequestBuilders
                .get("/api/app/todos?user={username}", username)
                .contentType(MediaType.APPLICATION_JSON)
        ).andExpect(jsonPath("$", hasSize(2))).andDo(print());
    }

    @Test
    void successCreateTaskForUser() throws Exception {
        //
        // Arrange
        //
        Task aTask = new Task("id-001", "Desc of task");
        when(
            taskUC.createTask(eq(defaultUser), any(String.class))
        ).thenReturn(
            aTask
        );

        TaskReqModel taskReqModel = new TaskReqModel();
        taskReqModel.setUserName(defaultUser);
        taskReqModel.setTaskDesc(aTask.getDesc());
        String taskPostRequestBody = new ObjectMapper().writeValueAsString(taskReqModel);

        //
        // Act
        //
        ResultActions result = mockMvc.perform(
            post(
                "/api/app/todos"
            ).contentType(
                MediaType.APPLICATION_JSON
            ).content(
                taskPostRequestBody
            )
        );

        //
        // Assert
        //
        result.andExpect(
            status().isCreated()
        ).andExpect(
            jsonPath("$.detail.description").value(aTask.getDesc())
        );
    }
}
