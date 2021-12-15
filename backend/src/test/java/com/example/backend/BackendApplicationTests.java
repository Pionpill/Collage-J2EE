package com.example.backend;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import com.example.backend.repository.AccountRepository;

@SpringBootTest
class BackendApplicationTests {

    @Autowired
    private AccountRepository accountRepository;

	@Test
    void findAll() {
        System.out.println(accountRepository.findAll());
	}

}
