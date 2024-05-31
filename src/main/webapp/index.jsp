<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contacts App</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        .container {
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        h1 {
            color: #333;
            opacity: 0;
            animation: fadeInUp 1s forwards;
        }

        a {
            text-decoration: none;
            color: #007bff;
            opacity: 0;
            animation: fadeInUp 1s forwards 0.5s;
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

        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Bienvenue sur l'application de gestion des contacts! <i class="fas fa-address-book"></i></h1>
        <button onclick="window.location.href='ContactServlet'">Voir Contacts <i class="fas fa-users"></i></button>
        <img class="image" src="img/moi.png">
    </div>
    
</body>
</html>
