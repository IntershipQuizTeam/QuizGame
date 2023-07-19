
import java.sql.*;
import java.util.Scanner;
import java.sql.Connection;

public class Main {
    public static void main(String[] args) {

        //login system
        Scanner sc = new Scanner(System.in);
        System.out.println("Welcome to QUIZZ!");
        System.out.println("Would you show us what are you capable of?");
        System.out.println("[Login][Register][PlayAsAGuest]");

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

                    Statement stm = con.createStatement();
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
                        stm.close();
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
                        System.out.println("Logged succesfully!");
                        rp.close();
                        conn.close();
                    }else{
                        System.out.println("Wrong username or password!");
                    }
                }
            } catch (SQLException e) {
                    throw new RuntimeException(e);
                }

        }
        else if(play.equals("PlayAsAGuest")){
            System.out.println("Logged succesfully!");

        }


    }
    //choose sphere for the quiz
    private static void readyToPlay(){
        System.out.println("CHOOSE WHAT YOU'RE BEST AT!: [MATH][GEOGRAPHY][HISTORY][LITERATURE]");
        Scanner scanner = new Scanner(System.in);
        String Sphere = scanner.nextLine();
        if(Sphere.equals());

    }

}