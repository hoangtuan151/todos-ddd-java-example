package com.example.clean_arch.todos.ui.rest.controller.testcase;

import com.example.clean_arch.todos.biz_core.domain.Task;
import com.example.clean_arch.todos.biz_core.usecase.TaskUC;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import static org.hamcrest.Matchers.hasSize;
import static org.mockito.Mockito.when;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;

@ExtendWith(SpringExtension.class)
@WebMvcTest
public class TodosApiTest {

    @Autowired
    MockMvc mockMvc;

    @MockBean
    private TaskUC taskUC;

    private List<Task> taskLst;

    @BeforeEach
    void setUp() throws ParseException {
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
}
