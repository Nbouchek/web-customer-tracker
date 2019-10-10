package com.luv2code.springdemo.service;

import com.luv2code.springdemo.dao.CustomerDOA;
import com.luv2code.springdemo.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {
    // need to inject the CustomerDAO
    @Autowired
    private CustomerDOA customerDOA;

    @Override
    @Transactional
    public List<Customer> getCustomers() {
        // delegate call to customerDOA
        return customerDOA.getCustomers();
    }

    @Override
    @Transactional
    public void saveCustomer(Customer theCustomer) {
        customerDOA.saveCustomer(theCustomer);
    }

    @Override
    @Transactional
    public Customer getCustomer(int theId) {
        return customerDOA.getCustomer(theId);
    }
}
