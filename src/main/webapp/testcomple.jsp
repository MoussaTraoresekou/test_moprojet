<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un objectif</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }

        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 500px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 14px;
            color: #555;
            margin-bottom: 6px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="date"],
        textarea,
        select {
            width: 100%;
            padding: 10px 14px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 14px;
            color: #333;
            outline: none;
            transition: border 0.3s;
        }

        input:focus, textarea:focus, select:focus {
            border-color: #4a90e2;
        }

        textarea {
            resize: vertical;
            height: 100px;
        }

        .btn-submit {
            width: 100%;
            padding: 12px;
            background-color: #4a90e2;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .btn-submit:hover {
            background-color: #357abd;
        }

        .btn-annuler {
            width: 100%;
            padding: 12px;
            background-color: #e0e0e0;
            color: #333;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
            transition: background 0.3s;
        }

        .btn-annuler:hover {
            background-color: #c0c0c0;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Ajouter un objectif</h2>

        <form action="${pageContext.request.contextPath}/objectifs" method="post">

            <!-- Titre -->
            <div class="form-group">
                <label for="titre">Titre</label>
                <input type="text" id="titre" name="titre"
                       placeholder="Ex: Apprendre Java" required />
            </div>

            <!-- Description -->
            <div class="form-group">
                <label for="description">Description</label>
                <textarea id="description" name="description"
                          placeholder="Décrivez votre objectif..."></textarea>
            </div>

            <!-- Date limite -->
            <div class="form-group">
                <label for="dateLimite">Date limite</label>
                <input type="date" id="dateLimite" name="dateLimite" required />
            </div>

            <!-- Statut -->
            <div class="form-group">
                <label for="statut">Statut</label>
                <select id="statut" name="statut">
                    <option value="EN_COURS">En cours</option>
                    <option value="TERMINE">Terminé</option>
                    <option value="ABANDONNE">Abandonné</option>
                </select>
            </div>

            <!-- Boutons -->
            <button type="submit" class="btn-submit">Ajouter</button>
            <button type="button" class="btn-annuler"
                    onclick="window.history.back()">Annuler</button>

        </form>
    </div>

</body>
</html>