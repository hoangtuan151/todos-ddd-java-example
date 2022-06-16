package com.example.clean_arch.todos.ui.rest.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import java.util.HashMap;
import java.util.Map;

@ControllerAdvice
@Slf4j
public class ApiErrorHandler {

    @ExceptionHandler(value = {MethodArgumentNotValidException.class})
    public ResponseEntity methodArgNotValidHandler(MethodArgumentNotValidException ex) {
        log.error("ApiErrorHandler::methodArgNotValidHandler() capture exception: {}", ex);
        return ResponseEntity.badRequest().body(new ToDoValidationError(ex));
    }

    @ExceptionHandler(value = {MissingServletRequestParameterException.class})
    public ResponseEntity missingRequestParamHandler(MissingServletRequestParameterException ex) {
        Map err = new HashMap<String, Object>();
        err.put("message", ex.getMessage());

        return ResponseEntity.badRequest().body(err);
    }
}
