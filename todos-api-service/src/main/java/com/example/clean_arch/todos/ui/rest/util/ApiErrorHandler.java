package com.example.clean_arch.todos.ui.rest.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
@Slf4j
public class ApiErrorHandler {

    @ExceptionHandler(value = {MethodArgumentNotValidException.class})
    public ResponseEntity methodArgNotValidHandler(MethodArgumentNotValidException ex) {
        log.error("ApiErrorHandler::methodArgNotValidHandler() capture exception: {}", ex);
        return ResponseEntity.badRequest().body(new ToDoValidationError(ex));
    }
}
