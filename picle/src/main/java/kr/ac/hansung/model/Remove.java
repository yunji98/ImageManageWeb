package kr.ac.hansung.model;

public class Remove {
	private boolean darked;
	private String id;
	private boolean remove;
	private boolean screenshot;
	private boolean shaken;
	private boolean similar;
	private String title;
	private String token;

	public boolean isDarked() {
		return darked;
	}

	public void setDarked(boolean darked) {
		this.darked = darked;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public boolean isRemove() {
		return remove;
	}

	public void setRemove(boolean remove) {
		this.remove = remove;
	}

	public boolean isScreenshot() {
		return screenshot;
	}

	public void setScreenshot(boolean screenshot) {
		this.screenshot = screenshot;
	}

	public boolean isShaken() {
		return shaken;
	}

	public void setShaken(boolean shaken) {
		this.shaken = shaken;
	}

	public boolean isSimilar() {
		return similar;
	}

	public void setSimilar(boolean similar) {
		this.similar = similar;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

}
