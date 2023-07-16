import java.util.Scanner;

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
         String password = sc.nextLine();
            try {
                User current_user = new User(email, username, password);
            } catch (CredentialsException e) {
                System.out.println(e.getMessage());
            }

        }
        else if(play.equals("Login")){

        }
        else if(play.equals("PlayAsAGuest")){

        }

        //choose sphere for the quiz
        //need mySql with database of the questions so we could randomize them



    }

}