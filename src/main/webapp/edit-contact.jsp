<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Modifier le contact</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
        }

        h1 {
            color: #333;
        }

        form {
            margin-top: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"], input[type="number"], input[type="email"] {
            padding: 8px;
            width: 300px;
            font-size: 16px;
            margin-bottom: 10px;
        }

        button {
            background-color: #007bff;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            outline: none;
            margin-top: 20px;
        }

        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Modifier le contact</h1>
    <form action="ContactServlet" method="post">
        <input type="hidden" id="action" name="action" value="edit">
        <input type="hidden" id="id" name="id" value="${contact.id}">
        <label for="nom">Nom :</label>
        <input type="text" id="nom" name="nom" value="${contact.nom}" required>
        <label for="prenom">Prénom :</label>
        <input type="text" id="prenom" name="prenom" value="${contact.prenom}" required>
        <label for="age">Âge :</label>
        <input type="number" id="age" name="age" value="${contact.age}" required>
        <label for="email">Email :</label>
        <input type="email" id="email" name="email" value="${contact.email}" required>
        <label for="competences">Compétences :</label>
        <input type="text" id="competences" name="competences" value="${contact.competences}"><br>
        <button type="submit"><i class="fas fa-save"></i> Enregistrer les modifications</button>
    </form>
</body>
</html>
