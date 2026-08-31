<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <title>LetterMind - Winner</title>

    <style>

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #1e1e2f;
            color: white;
            text-align: center;
        }

        .container {
            margin-top: 100px;
        }

        h1 {
            font-size: 55px;
            color: #4CAF50;
            margin-bottom: 15px;
        }

        h2 {
            color: #cccccc;
            font-weight: normal;
        }

        p {
            color: #cccccc;
            font-size: 18px;
            margin: 30px;
        }

        .player {
            color: white;
            font-size: 22px;
            font-weight: bold;
        }

        .button {
            padding: 14px 35px;
            margin: 10px;
            border: none;
            border-radius: 10px;
            font-size: 17px;
            font-weight: bold;
            cursor: pointer;
        }

        .button:hover {
            transform: scale(1.05);
        }

        .play {
            background: #4CAF50;
            color: white;
        }

        .scores {
            background: #ff9800;
            color: white;
        }

        .home {
            background: #44445a;
            color: white;
        }

    </style>

</head>

<body>

    <div class="container">

        <h1>🎉 YOU WIN!</h1>

        <%
            String playerName =
                (String) session.getAttribute("playerName");
        %>

        <p class="player">
            Congratulations, <%= playerName %>!
        </p>

        <p>
            You remembered all the letters correctly!
        </p>

        <a href="difficulty.jsp">
            <button class="button play">
                PLAY AGAIN
            </button>
        </a>

        <a href="scores.jsp">
            <button class="button scores">
                VIEW SCORES
            </button>
        </a>

        <a href="index.html">
            <button class="button home">
                END GAME
            </button>
        </a>

    </div>

</body>

</html>