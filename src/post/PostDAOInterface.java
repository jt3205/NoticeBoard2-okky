package post;

public interface PostDAOInterface {
	void writePost(String title, int writer, String content, String kind);
	void deletePost(int seq);
	PostVO getPost(int seq);
}
