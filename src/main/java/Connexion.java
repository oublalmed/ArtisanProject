import java.sql.Connection;
import java.sql.DriverManager;

public class Connexion {

    public  static void main(String[] args){

        String url ="jdbc:mysql://localhost:3306/artisandb?zeroDateTimeBehavior=convertToNull";
        Connection cn;
        cn=null;
        String user="root";
        String password="";
        try{
            cn=  DriverManager.getConnection(url,user,password);
            System.out.println("Wow ! vous éte connectés avec succés  ");
        }catch(Exception Ex){
            System.out.println("Erreur de connexion !!!!");
        }

    }

    }

