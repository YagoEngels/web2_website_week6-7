package domain.model;

public class Player {
    private String naam;
    private String nationaliteit;
    private String team;

    public Player(){};

    public Player(String naam,String nationaliteit , String team){
        if (naam.trim().isEmpty() || naam == null)throw new IllegalArgumentException("er is iets mis met de naam");
        if (nationaliteit.trim().isEmpty() || nationaliteit == null)throw new IllegalArgumentException("er is iets mis met de nationaliteit");
        if (team.trim().isEmpty() || team == null)throw new IllegalArgumentException("er is iets mis met de teamnaam");
        this.naam = naam;
        this.nationaliteit = nationaliteit;
        this.team = team;
    }

    public String getNaam() {
        return naam;
    }

    public String getNationaliteit() {
        return nationaliteit;
    }

    public String getTeam() {
        return team;
    }

    public void setNaam(String naam) {
        if (naam.trim().isEmpty() || naam == null)throw new IllegalArgumentException("er is iets mis met de naam");
        this.naam = naam;
    }

    public void setNationaliteit(String nationaliteit) {
        if (nationaliteit.trim().isEmpty() || nationaliteit == null)throw new IllegalArgumentException("er is iets mis met de nationaliteit");
        this.nationaliteit = nationaliteit;
    }

    public void setTeam(String team) {
        if (team.trim().isEmpty() || team == null)throw new IllegalArgumentException("er is iets mis met de teamnaam");
        this.team = team;
    }
}
