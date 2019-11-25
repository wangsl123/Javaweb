package JDBCProject;



import org.junit.Test;

import java.sql.*;

/**
 * @ClassName:JDBCdemo
 * @description: TODO
 * @author: OrienWsL
 * @time: 2019-11-23 13:26
 * @Version:V1.0
 */
public class JDBCdemo {

    @Test
    public void update() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");

        String url="jdbc:mysql://localhost:3306/jdbc?useSSL=false&serverTimezone=UTC";
        String userName = "root";
        String userPwd = "Orien0506ms";
        Connection connection = DriverManager.getConnection(url, userName, userPwd);

        Statement statement = connection.createStatement();
        String sql = "select * from user";
        ResultSet resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
            String userName1 = resultSet.getString("userName");
            String userPwd1 = resultSet.getString("userPwd");
            System.out.println(userName1  + "  "+ userPwd1);
        }

        connection.close();
        resultSet.close();


    }
}
