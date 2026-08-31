<!DOCTYPE html>
<html>
<head>
    <title>LetterMind - Difficulty</title>

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
            font-size: 40px;
        }

        p {
            color: #cccccc;
            margin-bottom: 40px;
        }

        .difficulty {
            width: 250px;
            padding: 20px;
            margin: 15px auto;
            border: none;
            border-radius: 12px;
            font-size: 20px;
            font-weight: bold;
            cursor: pointer;
        }

        .difficulty:hover {
            transform: scale(1.05);
        }

        .easy {
            background: #4CAF50;
            color: white;
        }

        .medium {
            background: #ff9800;
            color: white;
        }

        .hard {
            background: #f44336;
            color: white;
        }

        .back {
            margin-top: 25px;
            padding: 10px 25px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
        }
    </style>
</head>

<body>

    <div class="container">

        <h1>CHOOSE DIFFICULTY</h1>

        <p>How good is your memory?</p>

        <form action="StartGameServlet" method="post">

            <button class="difficulty easy"
                    type="submit"
                    name="difficulty"
                    value="easy">
                EASY
                <br>
                
            </button>

            <button class="difficulty medium"
                    type="submit"
                    name="difficulty"
                    value="medium">
                MEDIUM
                <br>
               
            </button>

            <button class="difficulty hard"
                    type="submit"
                    name="difficulty"
                    value="hard">
                HARD
                <br>
               
            </button>

        </form>

        <a href="index.html">
            <button class="back">BACK</button>
        </a>

    </div>

</body>
</html>