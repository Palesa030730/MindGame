<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="za.ac.tut.entity.Score"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

    <title>LetterMind - Scores</title>

    <style>

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #1e1e2f;
            color: white;
            text-align: center;
        }

        .container {
            margin-top: 60px;
        }

        h1 {
            font-size: 45px;
        }

        h2 {
            color: #cccccc;
            font-weight: normal;
        }

        .score-board {
            width: 750px;
            max-width: 90%;
            margin: 30px auto;
            background: #292940;
            padding: 25px;
            border-radius: 15px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th {
            background: #4CAF50;
            padding: 15px;
        }

        td {
            padding: 15px;
            border-bottom: 1px solid #44445a;
        }

        tr:hover {
            background: #35354d;
        }

        .highest {
            background: #35354d;
        }

        .highest td {
            color: #4CAF50;
            font-weight: bold;
        }

        .top-player {
            background: #35354d;
            padding: 20px;
            border-radius: 10px;
            margin-bottom: 25px;
        }

        .top-player h3 {
            color: #4CAF50;
            font-size: 22px;
        }

        .top-player p {
            color: #cccccc;
        }

        .no-scores {
            color: #cccccc;
            font-size: 18px;
            padding: 20px;
        }

        .button {
            margin: 10px;
            padding: 12px 30px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            border-radius: 10px;
            cursor: pointer;
        }

        .button:hover {
            transform: scale(1.05);
        }

        .play {
            background: #4CAF50;
            color: white;
        }

        .home {
            background: #ff9800;
            color: white;
        }

    </style>

</head>

<body>

<div class="container">

    <h1>🏆 LETTERMIND</h1>

    <h2>LEADERBOARD</h2>

    <div class="score-board">

        <%

            List<Score> scores =
                (List<Score>)
                session.getAttribute("scores");

            if (scores == null || scores.isEmpty()) {

        %>

            <div class="no-scores">

                No scores available yet.

                <br><br>

                Win a game to earn your first 5 points!

            </div>

        <%

            } else {

                List<Score> sortedScores =
                    new ArrayList<Score>(scores);

                java.util.Collections.sort(
                    sortedScores,
                    new java.util.Comparator<Score>() {

                        @Override
                        public int compare(
                                Score s1,
                                Score s2) {

                            return Integer.compare(
                                s1.getScore(),
                                s2.getScore()
                            );
                        }
                    }
                );

                Score highestScore =
                    sortedScores.get(
                        sortedScores.size() - 1
                    );

        %>

            <div class="top-player">

                <h3>🏆 HIGHEST SCORE</h3>

                <p>
                    <strong>
                        <%= highestScore.getPlayerName() %>
                    </strong>
                </p>

                <p>
                    Student ID:
                    <%= highestScore.getStudentId() %>
                </p>

                <p>
                    Total Points:
                    <strong>
                        <%= highestScore.getScore() %>
                    </strong>
                </p>

            </div>


            <table>

                <tr>

                    <th>POSITION</th>
                    <th>PLAYER NAME</th>
                    <th>STUDENT ID</th>
                    <th>TOTAL POINTS</th>

                </tr>

                <%

                    int position = 1;

                    for (Score player :
                            sortedScores) {

                        boolean isHighest =
                            player == highestScore;

                %>

                    <tr class="<%= isHighest
                            ? "highest"
                            : "" %>">

                        <td>
                            <%= position %>
                        </td>

                        <td>
                            <%= player.getPlayerName() %>
                        </td>

                        <td>
                            <%= player.getStudentId() %>
                        </td>

                        <td>
                            <%= player.getScore() %>
                        </td>

                    </tr>

                <%

                        position++;
                    }

                %>

            </table>

        <%

            }

        %>

    </div>


    <a href="difficulty.jsp">

        <button class="button play">
            PLAY AGAIN
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