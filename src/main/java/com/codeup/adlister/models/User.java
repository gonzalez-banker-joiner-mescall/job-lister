package com.codeup.adlister.models;

public class User {
    private long id;
    private String username;
    private String password;
    private String bio;
    private boolean villain;
    private String profilePic;

    public User(String username, String password, String bio, boolean villain, String profilePic) {
        this.username = username;
        this.password = password;
        this.bio = bio;
        this.villain = villain;
        this.profilePic = profilePic;
    }

    public User(long id, String username, String password, String bio, Boolean villain, String profilePic) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.bio = bio;
        this.villain = villain;
        this.profilePic = profilePic;
    }

    public User(long id, String username, String password, boolean villain, String bio) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.villain = villain;
        this.bio = bio;
    }

    public User(String username, String password, boolean villain) {
        this.username = username;
        this.password = password;
        this.villain = villain;
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }

    public User(String username, String password, boolean villain, String bio) {
        this.username = username;
        this.password = password;
        this.villain = villain;
        this.bio = bio;
    }

    public User(long id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isVillain() {
        return villain;
    }

    public void setVillain(boolean villain) {
        this.villain = villain;
    }

    public String getBio() {
        return bio;
    }

    public void setBio(String bio) {
        this.bio = bio;
    }

    public String getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }
}
