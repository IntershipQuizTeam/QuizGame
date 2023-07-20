
import java.net.SocketTimeoutException;
import java.sql.*;
import java.util.*;
import java.sql.Connection;

public class Main {
    public static void main(String[] args) {

        //login system
        Scanner sc = new Scanner(System.in);
        System.out.println("Welcome to QUIZZ!");
        System.out.println("Would you show us what are you capable of?");
        System.out.println("[Login][Register][PlayAsAGuest]");
        System.out.println("See leaderboard here!");

        String play = sc.nextLine();
        if (play.equals("Register") || play.equals("r")){
            System.out.println("Enter your e-mail: ");
         String email = sc.nextLine();
            System.out.println("Enter your username: ");
         String username = sc.nextLine();
            System.out.println("Enter your password: ");
         String pass = sc.nextLine();
            try {
                User current_user = new User(email, username, pass);

                 //sql insert&connection
                   try {
                    String url ="jdbc:mysql://localhost:3306/Quiz";
                    String user = "root";
                    String password = "root";
                    Connection con = DriverManager.getConnection(url,user,password);

                    String INSERT = "INSERT INTO USER(email, username, password)"
                            + " values (?, ?, ?)";
                    PreparedStatement pr = con.prepareStatement(INSERT);
                    pr.setString(1,email);
                    pr.setString(2,username);
                    pr.setString(3,pass);

                    int count = pr.executeUpdate();
                    if(count==0){
                        System.out.println("Record not submitted");
                    }else{
                        System.out.println("Record stored!");
                        //tuk trqbva da se podade user_id na insertnatiq potrebitel ili da se nasochi kum login
                        readyToPlay("1");
                        con.close();
                    }

                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
            } catch (CredentialsException e) {
                System.out.println(e.getMessage());
            }


        }
        else if(play.equals("Login")){
            System.out.println("Enter your username: ");
            String username = sc.nextLine();
            System.out.println("Enter your password: ");
            String pass = sc.nextLine();
            boolean hasRegisteredUsers = false;
            String url ="jdbc:mysql://localhost:3306/Quiz";
            String user = "root";
            String password = "root";
            try {
                Connection conn = DriverManager.getConnection(url,user,password);
                String login =  "SELECT * FROM user WHERE username=? AND password=?";
                PreparedStatement rp = conn.prepareStatement(login);
                rp.setString(1,username);
                rp.setString(2, pass);

                ResultSet result = rp.executeQuery();
                if (result.next()) {
                    int numUsers = result.getInt(1);
                    if(numUsers > 0){
                        hasRegisteredUsers = true;
                        String current_user_id = result.getString("id");
                        System.out.println("Logged succesfully!");
                        rp.close();
                        readyToPlay(current_user_id);
                    }else{
                        System.out.println("Wrong username or password!");
                    }
                }
            } catch (SQLException e) {
                    throw new RuntimeException(e);
                }

        }
        else if(play.equals("PlayAsAGuest") || play.equals("p")){
            System.out.println("You're playing as a guest!");
           readyToPlay("1");

        }


    }
    //choose sphere for the quiz
    private static void readyToPlay(String player_id){
        System.out.println("CHOOSE WHAT YOU'RE BEST AT!: [MATH][GEOGRAPHY][HISTORY][LITERATURE]");
        Scanner scanner = new Scanner(System.in);
        String sphere = scanner.nextLine();
        boolean playerIsGuest = false;
        if (player_id.equals("1")){
             playerIsGuest = true;
        }
            try {
                String url = "jdbc:mysql://localhost:3306/Quiz";
                String user = "root";
                String password = "root";
                Connection con = DriverManager.getConnection(url, user, password);

                int countScore = get_questions(sphere.toLowerCase(), con);
                if ( playerIsGuest == false) {
                    String save = "INSERT INTO scores(score,user_id)"
                            + " values (?,?)";
                    PreparedStatement pr = con.prepareStatement(save);
                    pr.setInt(1, countScore);
                    pr.setString(2, player_id);

                    int count = pr.executeUpdate();
                    if (count == 0) {
                        System.out.println("Error with score saving! Please try again!");
                    } else {
                        System.out.printf("Your final score from the quiz game id %d", countScore);
                    }
                }
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }


    }
    private static int get_questions(String table_name, Connection con) throws SQLException {
        String getQuestions = "SELECT * FROM " + table_name;
        PreparedStatement rp = con.prepareStatement(getQuestions);
        ResultSet result = rp.executeQuery();

        List<String> Questions = new ArrayList<String>();

        Map<String, Map<String, String>> questionMap = new HashMap<>();

        while (result.next()) {
            String Id = result.getString("id");
            String question_text = result.getString("question_text");
            Questions.add(question_text);
            String option3 = result.getString("option3");
            String option4 = result.getString("option4");

            Map<String, String> q_info = new HashMap<>();
            q_info.put("question_type", result.getString("question_type"));
            q_info.put("option1", result.getString("option1"));
            q_info.put("option2", result.getString("option2"));
            q_info.put("option3", option3);
            q_info.put("option4", option4);
            q_info.put("correct_answer", result.getString("correct_answer"));
            questionMap.put(question_text, q_info);
        }

        //generating random question
        int questions_to_answer = Questions.size();
        int countScore = 0;
        while (questions_to_answer != 0) {
            Random r = new Random();
            int randomIndex = r.nextInt(Questions.size());
            String randomQuestion = Questions.get(randomIndex);

            System.out.println(randomQuestion);
            if (questionMap.get(randomQuestion).get("question_type").equals("multiple-choice")) {
                System.out.print(questionMap.get(randomQuestion).get("option1") + " "
                        + questionMap.get(randomQuestion).get("option2") + " " + questionMap.get(randomQuestion).get("option3")
                        + " " + questionMap.get(randomQuestion).get("option4"));

            }

            Questions.remove(randomIndex);
            Scanner scanner = new Scanner(System.in);
            String answer = scanner.nextLine();
            if (answer.equals(questionMap.get(randomQuestion).get("correct_answer"))) {
                System.out.println("Correct!");
                countScore++;

            } else {
                System.out.println("Wrong answer!");
            }
            questions_to_answer--;
        }
        return countScore;
    }

        }




