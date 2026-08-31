<%-- 
    Document   : player
    Created on : 18 Aug 2026, 21:51:47
    Author     : palesa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <title>LetterMind - Player Details</title>

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #1e1e2f;
            color: white;
            text-align: center;
        }

        .container {
            margin-top: 80px;
        }

        h1 {
            font-size: 50px;
            margin-bottom: 10px;
        }

        h2 {
            font-size: 28px;
            font-weight: normal;
            color: #cccccc;
            margin-bottom: 10px;
        }

        .instruction {
            color: #cccccc;
            font-size: 17px;
            margin-bottom: 35px;
        }

        .form-box {
            width: 400px;
            max-width: 85%;
            margin: auto;
            background: #292940;
            padding: 35px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
        }

        .form-group {
            margin-bottom: 25px;
        }

        label {
            display: block;
            text-align: left;
            margin-bottom: 8px;
            font-size: 17px;
            font-weight: bold;
        }

        input[type="text"] {
            width: 100%;
            padding: 13px;
            border: none;
            border-radius: 8px;
            box-sizing: border-box;
            font-size: 16px;
            outline: none;
        }

        input[type="text"]:focus {
            box-shadow: 0 0 5px #4CAF50;
        }

        .continue {
            width: 100%;
            padding: 14px;
            background: #4CAF50;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 18px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 10px;
        }

        .continue:hover {
            transform: scale(1.05);
        }

        .scores {
            display: inline-block;
            margin-top: 20px;
            padding: 12px 30px;
            background: #ff9800;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            font-weight: bold;
            text-decoration: none;
        }

        .scores:hover {
            transform: scale(1.05);
        }

        .back {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 25px;
            background: #44445a;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            font-size: 15px;
        }

        .back:hover {
            transform: scale(1.05);
        }

    </style>
</head>

<body>

    <div class="container">

        <h1>🧠 LETTERMIND</h1>

        <h2>PLAYER DETAILS</h2>

        <p class="instruction">
            Enter your details before starting the game.
        </p>

        <div class="form-box">

            <form action="PlayerServlet" method="post">

                <div class="form-group">

                    <label for="playerName">
                        Player Name
                    </label>

                    <input type="text"
                           id="playerName"
                           name="playerName"
                           placeholder="Enter your name"
                           required>

                </div>


                <div class="form-group">

                    <label for="studentId">
                        Student ID
                    </label>

                    <input type="text"
                           id="studentId"
                           name="studentId"
                           placeholder="Enter your student ID"
                           required>

                </div>


                <input type="submit"
                       value="CONTINUE"
                       class="continue">

            </form>


            <a href="scores.jsp" class="scores">
                VIEW SCORES
            </a>

        </div>


        <a href="index.html" class="back">
            BACK
        </a>

    </div>

    </body>
</html>
