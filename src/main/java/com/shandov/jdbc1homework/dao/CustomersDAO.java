package com.shandov.jdbc1homework.dao;

import com.shandov.jdbc1homework.InternalException;
import com.shandov.jdbc1homework.domain.Companies;
import com.shandov.jdbc1homework.domain.Customers;
import lombok.extern.slf4j.Slf4j;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
@Slf4j
public class CustomersDAO extends GenericDAO {


    public List<Customers> getAllCustomers() {
        try (Connection connection = DriverManager.getConnection(URL, username, password);
             Statement statement = connection.createStatement()) {
            ResultSet resultSet = statement.executeQuery("select * from customers");
            List<Customers> customersList = new ArrayList<>();
            while (resultSet.next()) {
                Customers customers = new Customers();
                customers.setCustomersId(resultSet.getLong("customer_id"));
                customers.setCustomersName(resultSet.getString("customer_name"));
                customers.setCustomersSecondName(resultSet.getString("customer_second_name"));
                customersList.add(customers);
            }
            return customersList;
        } catch (SQLException e) {
            log.info("SQLState: " + e.getSQLState());
            log.info("Message: " + e.getMessage());
            log.info("Vendor: " + e.getErrorCode());
            throw new InternalException(e.getMessage());
        }
    }

    public void insertIntoCustomers(String name, String secondName)  {
        try (Connection connection = DriverManager.getConnection(URL, username, password);
             PreparedStatement statement = connection.prepareStatement("INSERT into customers(customer_name, customer_second_name) VALUES ( ?, ?)")) {

            statement.setString(1, name);
            statement.setString(2, secondName);
            statement.executeUpdate();

        } catch (SQLException e) {
            log.info("SQLState: " + e.getSQLState());
            log.info("Message: " + e.getMessage());
            log.info("Vendor: " + e.getErrorCode());
            throw new InternalException(e.getMessage());
        }
    }

    public void updateInCustomers(Long id, String name, String secondName)  {
        try (Connection connection = DriverManager.getConnection(URL, username, password);
             PreparedStatement statement = connection.prepareStatement("UPDATE customers SET customer_name = ?, customer_second_name = ? WHERE customer_id = ?")) {

            statement.setString(1, name);
            statement.setString(2, secondName);
            statement.setLong(3, id);
            statement.executeUpdate();

        } catch (SQLException e) {
            log.info("SQLState: " + e.getSQLState());
            log.info("Message: " + e.getMessage());
            log.info("Vendor: " + e.getErrorCode());
            throw new InternalException(e.getMessage());
        }
    }

    public void deleteFromCustomers(Long id)  {
        try (Connection connection = DriverManager.getConnection(URL, username, password);
             PreparedStatement statement = connection.prepareStatement("DELETE FROM customers WHERE customer_id = ?")) {

            statement.setLong(1, id);
            statement.executeUpdate();

        } catch (SQLException e) {
            log.info("SQLState: " + e.getSQLState());
            log.info("Message: " + e.getMessage());
            log.info("Vendor: " + e.getErrorCode());
            throw new InternalException(e.getMessage());
        }
    }
}
