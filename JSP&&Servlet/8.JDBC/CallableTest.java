package JDBCProject;

import org.junit.Test;

import java.sql.*;

/**
 * @ClassName:CallableTest
 * @description: TODO
 * @author: OrienWsL
 * @time: 2019-11-23 16:58
 * @Version:V1.0
 */
public class CallableTest {
    @Test
    public void test() throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.cj.jdbc.Driver");

        String url="jdbc:mysql://localhost:3306/jdbc?useSSL=false&serverTimezone=UTC";
        String userName = "root";
        String userPwd = "Orien0506ms";
        Connection connection = DriverManager.getConnection(url, userName, userPwd);
//     调存储过程
//        CallableStatement callableStatement = connection.prepareCall("{ call selectuser(?,?)}");
////        callableStatement.setString(1,"wang");
////        callableStatement.execute();
////
////        //设置第二个参数的类型
////        callableStatement.registerOutParameter(2, Types.INTEGER);
////        int anInt = callableStatement.getInt(2);
////        System.out.println(anInt);

        //调用存储函数
        CallableStatement callableStatement = connection.prepareCall("{? = call addTwo(?,?)}");
        callableStatement.setInt(2,23);
        callableStatement.setInt(3,12);
        callableStatement.registerOutParameter(1, Types.INTEGER);
        callableStatement.execute();

        int result = callableStatement.getInt(1);
        System.out.println(result);



        connection.close();

    }
}
