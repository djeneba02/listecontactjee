import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet for managing contacts
 * Author: djeneba.cissoko
 */
@WebServlet(urlPatterns = {"/ContactServlet"})
public class ContactServlet extends HttpServlet {
    private final List<contact> contacts = new ArrayList<>();
    private int idCounter = 1;
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String action = req.getParameter("action");
    if ("edit".equals(action)) {
        String id = req.getParameter("id");
        for (contact contact : contacts) {
            if (contact.getId().equals(id)) {
                req.setAttribute("contact", contact);
                req.getRequestDispatcher("edit-contact.jsp").forward(req, resp);
                return;
            }
        }
    } else {
        req.setAttribute("contacts", contacts);
        req.getRequestDispatcher("contact.jsp").forward(req, resp);
    }
}

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");

        if (action != null) {
            switch (action) {
                case "add":
                    // Ajout d'un nouveau contact
                    String id = String.valueOf(idCounter++);
                    String nom = req.getParameter("nom");
                    String prenom = req.getParameter("prenom");
                    int age = Integer.parseInt(req.getParameter("age"));
                    String email = req.getParameter("email");
                    String competences = req.getParameter("competences");
                    contacts.add(new contact(id, nom, prenom, age, email, competences));
                    break;
                case "delete":
                    // Suppression d'un contact
                    String idToDelete = req.getParameter("id");
                    Iterator<contact> iterator = contacts.iterator();
                    while (iterator.hasNext()) {
                        contact contact = iterator.next();
                        if (contact.getId().equals(idToDelete)) {
                            iterator.remove();
                            break;
                        }
                    }
                    break;
                case "edit":
                    // Modification d'un contact
                    String idToEdit = req.getParameter("id");
                    String newNom = req.getParameter("nom");
                    String newPrenom = req.getParameter("prenom");
                    int newAge = Integer.parseInt(req.getParameter("age"));
                    String newEmail = req.getParameter("email");
                    String newCompetences = req.getParameter("competences");
                    // Parcourir la liste des contacts pour trouver le contact à modifier
                    for (contact c : contacts) {
                        if (c.getId().equals(idToEdit)) {
                            // Mettre à jour les informations du contact
                            c.setNom(newNom);
                            c.setPrenom(newPrenom);
                            c.setAge(newAge);
                            c.setEmail(newEmail);
                            c.setCompetences(newCompetences);
                            break;
                        }
                    }
                    break;
                default:
                    break;
            }
        }

        // Redirection vers la page JSP pour afficher les contacts mis à jour
        resp.sendRedirect(req.getContextPath() + "/ContactServlet");
    }
}
