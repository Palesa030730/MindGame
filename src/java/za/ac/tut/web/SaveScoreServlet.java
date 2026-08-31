package za.ac.tut.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.entity.Score;

@WebServlet("/SaveScoreServlet")
public class SaveScoreServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        String playerName =
                (String) session.getAttribute("playerName");

        String studentId =
                (String) session.getAttribute("studentId");

        List<Score> scores =
                (List<Score>) session.getAttribute("scores");

        if (scores == null) {
            scores = new ArrayList<Score>();
        }

        boolean playerFound = false;

        for (Score player : scores) {

            if (player.getStudentId().equals(studentId)) {

                player.setScore(
                        player.getScore() + 5
                );

                playerFound = true;

                break;
            }
        }

        if (!playerFound) {

            Score newPlayer =
                    new Score(
                            playerName,
                            studentId,
                            5
                    );

            scores.add(newPlayer);
        }

        session.setAttribute("scores", scores);

        response.sendRedirect("winner.jsp");
    }
}