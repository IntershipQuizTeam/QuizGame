import java.util.regex.Pattern;

public class User {
    private String email;
    private String username;
    private String password;

    private final static Pattern emailPattern = Pattern.compile("[A-Za-z0-9_.]+@gmail.com");

    private final static Pattern usernamePattern = Pattern.compile("^[a-zA-Z0-9_]{3,10}$");

    private final static Pattern passwordPattern = Pattern.compile("^[a-zA-Z0-9]{3,15}$");


    public User(String email, String username, String password) throws CredentialsException {
        if (!emailPattern.matcher(email).matches()) {
            throw new CredentialsException("Invalid e-mail format!");
        }
        if (!usernamePattern.matcher(username).matches()) {
            throw new CredentialsException("Invalid username! Your username should include A-z letters and 0-9 numbers separated with '_'.\n " +
                    "It must be more than 3 symbols and less than 10");
        }
        if (!passwordPattern.matcher(password).matches()) {
            throw new CredentialsException("Invalid password. Your username should include A-z letters and 0-9 numbers.\n"  +
                    "                    It must be more than 3 symbols and less than 15");
        }

        this.email = email;
        this.username = username;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    //not ready still writing smth here
    public static void login(String username, String password) throws CredentialsException {
        if (!usernamePattern.matcher(username).matches()) {
            throw new CredentialsException("Error: Invalid EGN format.");
        }
        if (!passwordPattern.matcher(password).matches()) {
            throw new CredentialsException("Error: Invalid password");

        }


    }
}

