package ma.ensaevents.service;

import ma.ensaevents.utils.UpdatePassword;
import org.springframework.security.core.userdetails.UserDetailsService;

import ma.ensaevents.entity.User;
import ma.ensaevents.utils.CreateUser;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

public interface UserService extends UserDetailsService {

    User findByUserName(String userName);
	
    void save(CreateUser createUser);

	void update(User currentUser);

	boolean checkPassword(User user, UpdatePassword changePassword);

    void changePassword(HttpServletRequest request, UpdatePassword changePassword);

    List<String> usersUsernames();
}
