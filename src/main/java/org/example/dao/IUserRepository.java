package org.example.dao;


import org.example.model.User;

import java.util.Collection;

public interface IUserRepository {
    User getUser(String login);
    void addUser(User user);

    void removeUser(String login);
    Collection<User> getUsers();

}
