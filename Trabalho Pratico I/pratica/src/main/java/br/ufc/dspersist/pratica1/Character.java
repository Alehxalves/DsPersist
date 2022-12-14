package br.ufc.dspersist.pratica1;

/*
 * Defina uma entidade principal com pelo menos 5 atributos e relacionada a um domínio de problema.
 * Crie também uma classe Java para representá-la.
 * A entidade deve estar relacionada a algo que você gosta bastante como: hobie, esporte, pet, alimentação etc...
 */
public class Character {
    private int id;
    private String nickname;
    private Enum<Class> classe;
    private String spell;
    private String weapon;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getClasse() {
        return classe.name();
    }

    public void setClasse(Enum<Class> classe) {
        this.classe = classe;
    }

    public String getSpell() {
        return spell;
    }

    public void setSpell(String spell) {
        this.spell = spell;
    }

    public String getWeapon() {
        return weapon;
    }

    public void setWeapon(String weapon) {
        this.weapon = weapon;
    }

    public String toString() {
        return "{ id: " + getId()
                + ", nickname: " + getNickname()
                + ", class: " + getClasse()
                + ", spell: " + getSpell()
                + ", weapon: " + getWeapon() + " }";
    }
}
