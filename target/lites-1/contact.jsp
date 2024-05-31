<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Liste des Contacts</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1, h2 {
            text-align: center;
        }
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #ddd;
        }
        form {
            margin-bottom: 10px;
        }
        .button-container {
            text-align: center;
        }
        .button-container button {
            margin: 5px;
        }
        .add-contact-form {
            width: 60%;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .add-contact-form .form-group {
            margin-bottom: 10px;
        }
        .add-contact-form label {
            display: block;
            font-weight: bold;
        }
        .add-contact-form input[type="text"],
        .add-contact-form input[type="email"] {
            width: calc(100% - 20px);
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .add-contact-form button {
            padding: 8px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .add-contact-form button:hover {
            background-color: #0056b3;
        }
        a button {
            background-color: #0056b3;
            color: #fff;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <h1><i class="fas fa-address-book"></i> Liste des Contacts</h1>
    <div class="button-container">
        <a href="index.jsp"><button><i class="btn fas fa-home"></i> Retour à l'Accueil</button></a>
    </div>
    <table border="1">
        <tr>
            <th>ID</th>
            <th><i class="fas fa-user"></i> Prénom</th>
            <th><i class="fas fa-calendar"></i> Âge</th>
            <th>Nom</th>
            <th>Email</th>
            <th><i class="fas fa-cogs"></i> Compétences</th>
            <th colspan="2">Actions</th>
        </tr>
        <c:forEach var="contact" items="${contacts}">
            <tr>
                <td>${contact.id}</td>
                <td>${contact.prenom}</td>
                <td>${contact.age}</td>
                <td>${contact.nom}</td>
                <td>${contact.email}</td>
                <td>${contact.competences}</td>
                <td>
                    <form action="ContactServlet" method="post">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="id" value="${contact.id}">
                        <button type="submit"><i class="fas fa-trash-alt"></i> Supprimer</button>
                    </form>
                </td>
                <td>
                    <form action="ContactServlet" method="get">
                        <input type="hidden" name="action" value="edit">
                        <input type="hidden" name="id" value="${contact.id}">
                        <button type="submit"><i class="fas fa-edit"></i> Modifier</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
    <h2><i class="fas fa-plus-circle"></i> Ajouter un nouveau contact</h2>
    <form action="ContactServlet" method="post" class="add-contact-form">
        <input type="hidden" name="action" value="add">
        <div class="form-group">
            <label for="nom">Nom :</label>
            <input type="text" id="nom" name="nom" required>
        </div>
        <div class="form-group">
            <label for="prenom">Prénom :</label>
            <input type="text" id="prenom" name="prenom" required>
        </div>
        <div class="form-group">
            <label for="age">Âge :</label>
            <input type="number" id="age" name="age" required>
        </div>
        <div class="form-group">
            <label for="email">Email :</label>
            <input type="email" id="email" name="email" required>
        </div>
        <div class="form-group">
            <label for="competences">Compétences :</label>
            <input type="text" id="competences" name="competences">
        </div>
        <button type="submit"><i class="fas fa-save"></i> Ajouter</button>
    </form>
</body>
</html>
