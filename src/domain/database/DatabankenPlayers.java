package domain.database;

import domain.model.Player;

import java.util.ArrayList;

public class DatabankenPlayers {
    private ArrayList<Player> spelers;
    Player player0 = new Player("hylli","slovakije","fnatic");
    Player player1 = new Player("bwip","belgium","fnatic");
    Player player2 = new Player("rekles","zweden","fnatic");
    Player player3 = new Player("nemesis","slovakije","fnatic");
    Player player4 = new Player("caps","brits","g2");
    public DatabankenPlayers(){
        spelers = new ArrayList<>();
        spelers.add(player0);
        spelers.add(player1);
        spelers.add(player2);
        spelers.add(player3);
        spelers.add(player4);
    }

    public ArrayList<Player> getSpelers() {
        return spelers;
    }

    public void addPlayer(Player player){
        if (player == null)throw new IllegalArgumentException("er is iets fout met de player in add player to database");
        spelers.add(player);
    }

    public int playersFromBelgium(){
        int uit = 0;
        for (int i = 0 ;i < spelers.size() ; i++){
            if (spelers.get(i).getNationaliteit().equals("belgium")){
                uit ++;
            }
        }
        return uit;
    }
    public Player findPlayer(String naam){
        Player player = new Player("null","null","null");
        for (int i = 0 ; i < spelers.size() ;i++){
            if (spelers.get(i).getNaam().equals(naam)){
                player = spelers.get(i);
            }
        }
        return player;
    }
}
