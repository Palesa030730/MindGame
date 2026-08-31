package za.ac.tut.entity;

import java.io.Serializable;

public class Score implements Serializable {

    private String playerName;
    private String studentId;
    private int score;

    public Score() {
    }

    public Score(String playerName, String studentId, int score) {
        this.playerName = playerName;
        this.studentId = studentId;
        this.score = score;
    }

    public String getPlayerName() {
        return playerName;
    }

    public void setPlayerName(String playerName) {
        this.playerName = playerName;
    }

    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public int getScore() {
        return score;
    }

    public void setScore(int score) {
        this.score = score;
    }
}