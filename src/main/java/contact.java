public class contact {
    private String id; // Ajoutez la propriété id
    private String nom;
    private String prenom;
    private int age;
    private String email;
    private String competences;

    public contact(String id, String nom, String prenom, int age, String email, String competences) {
        this.id = id; // Initialisez la propriété id dans le constructeur
        this.nom = nom;
        this.prenom = prenom;
        this.age = age;
        this.email = email;
        this.competences = competences; // Initialisez la propriété competences dans le constructeur
    }

    // Getters et setters pour la propriété id
    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    // Getters et setters pour la propriété nom
    public String getNom() { return nom; }
    public void setNom(String nom) { this.nom = nom; }

    // Getters et setters pour la propriété prenom
    public String getPrenom() { return prenom; }
    public void setPrenom(String prenom) { this.prenom = prenom; }

    // Getters et setters pour la propriété age
    public int getAge() { return age; }
    public void setAge(int age) { this.age = age; }

    // Getters et setters pour la propriété email
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }

    // Getters et setters pour la propriété competences
    public String getCompetences() { return competences; }
    public void setCompetences(String competences) { this.competences = competences; }
}
