package bbsServlet;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PostRepository {

	private static final List<Post> posts = new ArrayList<>();

	public static void add(Post post) {
		posts.add(post);
	}

	public static List<Post> getAll() {

		return Collections.unmodifiableList(posts);
	}
}
