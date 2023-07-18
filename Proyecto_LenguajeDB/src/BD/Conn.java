
package BD;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/*El codigo no corre si no esta conectado a una base de datos local o si no tiene instalado el driver.
Para que funcione el proyecto en cada maquina tiene que tener instalado en "Libraries" el JAR: ojdbc11.jar*/
public class Conn {
    private Connection conn=null;
    private String url,user,pass;

    public Conn() {
        conectar();
    }
    private void conectar(){
        try{
            Class.forName("oracle.jdbc.OracleDriver");//driver
            url="jdbc:oracle:thin:@localhost:1521:orcl";
            user="JOSE";
            pass="1234";
            conn = DriverManager.getConnection(url, user, pass);
            JOptionPane.showMessageDialog(null, "!Conexion a la base de datos correctamente!");
            
    }catch(Exception e){
            JOptionPane.showMessageDialog(null, "Error no se pudo conectar!");
    }
    
    
}
    public void desconectar(){
        try{
            conn.close();
        }catch(SQLException e){
            JOptionPane.showMessageDialog(null, "Error,No se pudo desconectar");
    }
}
}