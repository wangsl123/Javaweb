package JDBCProject;

import org.junit.Test;

import java.io.*;
import java.sql.*;

/**
 * @ClassName:CLOBTest
 * @description: TODO
 * @author: OrienWsL
 * @time: 2019-11-23 17:45
 * @Version:V1.0
 */
public class CLOBTest {
    @Test
    public void test() throws SQLException, ClassNotFoundException, IOException {
        //JDBC处理大数据文本
        //设置CLOB类型：setCharacterStream（）

        Class.forName("com.mysql.cj.jdbc.Driver");

        String url="jdbc:mysql://localhost:3306/jdbc?useSSL=false&serverTimezone=UTC";
        String userName = "root";
        String userPwd = "Orien0506ms";
        Connection connection = DriverManager.getConnection(url, userName, userPwd);

        String sql = "insert into mynovel values (?,?)";
        PreparedStatement preparedStatement = connection.prepareStatement(sql);

        preparedStatement.setInt(1,1);

        InputStream inputStream = new FileInputStream("E:\\eula.1042.txt");
        Reader reader = new InputStreamReader(inputStream,"utf-8");   //转换流可以设置编码

        preparedStatement.setCharacterStream(2, reader);
        int i = preparedStatement.executeUpdate();

        sql = "select novel from mynovel where id =?";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setInt(1,1);
        ResultSet resultSet = preparedStatement.executeQuery();
        while (resultSet.next()){
            Reader reader1 = resultSet.getCharacterStream("novel");
            Writer writer = new FileWriter("src/main/1.txt");

            char[] chars = new char[100];
            int len = 1;
            while ((len = reader1.read(chars))!=-1){
                writer.write(chars,0,chars.length);
            }
            writer.close();
            reader1.close();

        }

        connection.close();


    }
}
