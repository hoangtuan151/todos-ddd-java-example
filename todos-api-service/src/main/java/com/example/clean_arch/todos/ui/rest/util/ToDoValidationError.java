package com.example.clean_arch.todos.ui.rest.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.validation.Errors;

import java.util.ArrayList;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ToDoValidationError {
    private String message;
    private List<String> errors = new ArrayList<>();

    public ToDoValidationError(Errors validationErrors) {
        this.message = String.format("Validation failed with %s error(s)", validationErrors.getErrorCount());
        validationErrors.getAllErrors().forEach(
            err -> this.errors.add(err.getDefaultMessage())
        );
    }
}
