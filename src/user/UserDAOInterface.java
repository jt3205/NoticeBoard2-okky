package user;

public interface UserDAOInterface {
	void addUser(String id, String password, String nickname, String question, String answer);
	boolean login(String id, String password);
	
}
