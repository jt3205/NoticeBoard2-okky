package user;

public interface UserServiceInterface {
	void addUser(UserVO vo);
	boolean login(UserVO vo);
}
