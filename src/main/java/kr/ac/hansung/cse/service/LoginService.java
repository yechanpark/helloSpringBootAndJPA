package kr.ac.hansung.cse.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.hansung.cse.dao.UserRepository;
import kr.ac.hansung.cse.model.User;

@Service
public class LoginService {
	
	@Autowired
	private UserRepository userRepository;
	
	public boolean validateUser(String name, String password){
		User user = userRepository.findByName(name);
		
		if(user != null)
			return password.equals(user.getPassword());
		else
			return false;
	}
	
}
