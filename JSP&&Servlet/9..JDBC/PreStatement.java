package JDBCProject;

import org.junit.Test;

import java.sql.*;

/**
 * @ClassName:PreStatement
 * @description: TODO
 * @author: OrienWsL
 * @time: 2019-11-23 15:25
 * @Version:V1.0
 */
public class PreStatement {
    @Test
    public void test() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");

        String url="jdbc:mysql://localhost:3306/jdbc?useSSL=false&serverTimezone=UTC";
        String userName = "root";
        String userPwd = "Orien0506ms";
        Connection connection = DriverManager.getConnection(url, userName, userPwd);

//        Statement
//        Statement statement = connection.createStatement();
//        String sql = "select * from user";
//        ResultSet resultSet = statement.executeQuery(sql);

//        PreparedStatement

        String sql = "select * from user";
        PreparedStatement statement = connection.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();

        while(resultSet.next()){
            String userName1 = resultSet.getString("userName");
            String userPwd1 = resultSet.getString("userPwd");
            System.out.println(userName1  + "  "+ userPwd1);
        }

        sql = "insert into user values(?,?)";
        statement = connection.prepareStatement(sql);
        statement.setString(1,"shuai");
        statement.setString(2,"asd12321321");
        int i = statement.executeUpdate();
        if(i>0){
            System.out.println("操作成功");
        }

        sql = "select * from user";
        statement = connection.prepareStatement(sql);
        resultSet = statement.executeQuery();

        while(resultSet.next()){
            String userName1 = resultSet.getString("userName");
            String userPwd1 = resultSet.getString("userPwd");
            System.out.println(userName1  + "  "+ userPwd1);
        }

        connection.close();
        resultSet.close();

    }
}
