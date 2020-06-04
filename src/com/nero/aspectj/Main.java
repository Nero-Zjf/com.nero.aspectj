package com.nero.aspectj;

import com.nero.aspectj.service.DogService;
import com.nero.aspectj.service.UserService;

public class Main {

    public static void main(String[] args) {
	// write your code here
        DogService dogService = new DogService();
        UserService userService = new UserService();

        dogService.getDog();
        dogService.updDog();
        userService.getUser();
        userService.updUser();
    }
}
