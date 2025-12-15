package bbsServlet;

public class Post {

	private String name;
	private String comment;

	public Post(String name, String comment) {
		this.name = name;
		this.comment = comment;
	}

	public String getName() {
		return name;
	}

	public String getComment() {
		return comment;
	}
}
