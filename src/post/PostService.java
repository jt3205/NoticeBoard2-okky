package post;

public class PostService implements PostServiceInterface{
	PostVO vo;
	public PostService() {
		
	}

	@Override
	public void writePost(String title, int writer, String content, String kind) {
		new PostDAO().writePost(title, writer, content, kind);
	}

	@Override
	public void deletePost(int seq) {
		new PostDAO().deletePost(seq);
	}
	
	@Override
	public PostVO getPost(int seq) {
		return new PostDAO().getPost(seq);
	}

}
