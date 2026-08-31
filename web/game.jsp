<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <title>LetterMind - Game</title>

    <style>

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #1e1e2f;
            color: white;
            text-align: center;
        }

        .container {
            margin-top: 50px;
        }

        h1 {
            font-size: 45px;
            margin-bottom: 10px;
        }

        h2 {
            font-size: 28px;
            color: #4CAF50;
        }

        .player-info {
            color: #cccccc;
            font-size: 17px;
            margin-bottom: 10px;
        }

        .info {
            color: #cccccc;
            margin-bottom: 30px;
        }

        .game-board {
            width: 650px;
            max-width: 90%;
            margin: auto;
        }

        .letter {
            width: 80px;
            height: 80px;
            margin: 8px;
            font-size: 28px;
            font-weight: bold;
            border: none;
            border-radius: 12px;
            cursor: pointer;
        }

        .letter:hover {
            transform: scale(1.05);
        }

        #startButton {
            margin-top: 30px;
            padding: 15px 45px;
            background: #4CAF50;
            color: white;
            font-size: 18px;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            cursor: pointer;
        }

        #startButton:hover {
            transform: scale(1.05);
        }

        .back {
            margin-top: 20px;
            padding: 12px 30px;
            background: #ff9800;
            color: white;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            cursor: pointer;
        }

        .back:hover {
            transform: scale(1.05);
        }

    </style>

    <script>

        var nextIndex = 0;
        var gameStarted = false;
        var correctOrder = [];

        function startGame() {

            var buttons =
                document.getElementsByClassName("letter");

            for (var i = 0; i < buttons.length; i++) {

                correctOrder.push(
                    buttons[i].getAttribute("data-letter")
                );

                buttons[i].innerHTML = "?";
            }

            correctOrder.sort();

            gameStarted = true;

            document.getElementById("startButton")
                    .style.display = "none";
        }


        function checkLetter(button) {

            if (!gameStarted) {
                return;
            }

            var selectedLetter =
                button.getAttribute("data-letter");

            if (selectedLetter ==
                    correctOrder[nextIndex]) {

                button.innerHTML = selectedLetter;

                button.disabled = true;

                nextIndex++;

                if (nextIndex == correctOrder.length) {

               window.location.href =
               "SaveScoreServlet";
            }

            } else {

                window.location.href =
                    "gameover.jsp";
            }
        }

    </script>

</head>

<body>

    <div class="container">

        <h1>🧠 LETTERMIND</h1>

        <%
            String difficulty =
                (String) session.getAttribute("difficulty");

            String playerName =
                (String) session.getAttribute("playerName");

            Integer numberOfLetters =
                (Integer) session.getAttribute(
                    "numberOfLetters"
                );

            String alphabet =
                "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

            java.util.List<Character> letters =
                new java.util.ArrayList<Character>();

            for (char c : alphabet.toCharArray()) {
                letters.add(c);
            }

            java.util.Collections.shuffle(letters);
        %>

        <h2>
            <%= difficulty.toUpperCase() %> MODE
        </h2>

        <p class="player-info">
            Player:
            <strong><%= playerName %></strong>
        </p>

        <p class="info">
            Memorize the positions, then find
            the letters in alphabetical order!
        </p>

        <div class="game-board">

            <%
                for (int i = 0;
                     i < numberOfLetters;
                     i++) {

                    char letter = letters.get(i);
            %>

                <button class="letter"
                        data-letter="<%= letter %>"
                        onclick="checkLetter(this)">

                    <%= letter %>

                </button>

            <%
                }
            %>

        </div>

        <button id="startButton"
                onclick="startGame()">

            START GAME

        </button>

        <br>

        <button class="back"
                onclick="window.location.href='difficulty.jsp'">

            BACK TO DIFFICULTY

        </button>

    </div>

</body>

</html>