package my_package;

import java.util.ArrayList;

import javax.validation.constraints.NotBlank;

public class VideoGameSurveyObject {
	
	// Fields
	
	private ArrayList<String> gamesList = new ArrayList<>();
	// Adding Validation Rule to the Field
	// @NotBlank - can not be null, can not be empty, can not contain only white spaces 
	
	private ArrayList<String> gamesPlayed;
	
	private String[] gamesPlatform = {"PC", "Console", "Mobile"}; 
	@NotBlank
	private String preferredGamesPlatform;
	
	@NotBlank
	private String firstVideoGameEverPlayed;
	
	// Constructors
	
	public VideoGameSurveyObject() {
		gamesList.add("God of War 4");
		gamesList.add("Uncharted 4");
		gamesList.add("The Last of Us - Remastered");
		gamesList.add("Grand Theft Auto V");
		gamesList.add("Skyrim");
		gamesList.add("Counter Strike: Global Offensive");
		gamesList.add("World of Warcraft");
		gamesList.add("League of Legends");
		gamesList.add("Tetris");
		gamesList.add("Pacman");
	}
	
	// Setters and Getters
	
	public ArrayList<String> getGamesList(){
		return gamesList;
	}
	
	public void setGamesPlayed(ArrayList<String> theGamesPlayed){
		this.gamesPlayed = theGamesPlayed;
	}
	
	public ArrayList<String> getGamesPlayed(){
		return gamesPlayed;
	}

	public String[] getGamesPlatform() {
		return gamesPlatform;
	}

	public String getPreferredGamesPlatform() {
		return preferredGamesPlatform;
	}

	public void setPreferredGamesPlatform(String preferredGamesPlatform) {
		this.preferredGamesPlatform = preferredGamesPlatform;
	}

	public String getFirstVideoGameEverPlayed() {
		return firstVideoGameEverPlayed;
	}

	public void setFirstVideoGameEverPlayed(String firstVideoGameEverPlayed) {
		this.firstVideoGameEverPlayed = firstVideoGameEverPlayed;
	}
	
}
