package beans;

public class User {
	private String email = "";
	private String password = "";
	private String message = "";

	public User() {
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public User(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean validate() {
		if (!email.matches("\\w+@\\w+\\.\\w+")) {
			message = "email doesn't match pattern";
			return false;
		}

		if (password.length() < 8) {
			message = "password should be at leat 8 characters";
			return false;
		}
		// if there is space betwwen alpha numerical characters
		else if (password.matches("\\w*\\s+\\w*")) {
			message = "password cannot contain spaces";
			return false;
		}
		return true;
	}

}
