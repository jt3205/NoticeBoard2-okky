package post;

public interface PostDAOInterface {
	void writePost(int seq, String title, int writer, String content, String tags, String kind);
	void deletePost(int seq);
}
