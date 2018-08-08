package lti.hola.service;

import java.util.Base64;
import java.util.Base64.Encoder;

import lti.hola.bean.ForgetBean;
import lti.hola.bean.LoginBean;
import lti.hola.bean.RegisterBean;
import lti.hola.repo.UserRepository;
import lti.hola.repo.UserRepositoryImpl;

public class UserServiceImpl implements UserService {
	private UserRepository repo;

	public UserServiceImpl() {
		repo = new UserRepositoryImpl();
	}

	@Override
	public RegisterBean authenticate(LoginBean login) {
		// password encoding
		Encoder encoder = Base64.getEncoder();
		String encoded = encoder.encodeToString(login.getPassword().getBytes());
		login.setPassword(encoded);
		
		return repo.authenticate(login);
	}

	@Override
	public boolean validate(ForgetBean forget) {
		// movie encoding
		Encoder encoder = Base64.getEncoder();
		forget.setMovie(encoder.encodeToString(forget.getMovie().getBytes()));

		return repo.validate(forget);
	}

	@Override
	public boolean changePassword(LoginBean login) {
		// password encoding
		Encoder encoder = Base64.getEncoder();
		login.setPassword(encoder.encodeToString(login.getPassword().getBytes()));
		return repo.changePassword(login);
	}

	@Override
	public boolean persist(RegisterBean register) {
		// password and movie encoding
		Encoder encoder = Base64.getEncoder();
		register.setPassword(encoder.encodeToString(register.getPassword().getBytes()));
		register.setMovie(encoder.encodeToString(register.getMovie().getBytes()));
		return repo.persist(register);
	}



}
