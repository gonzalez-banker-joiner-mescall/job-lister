<%--
  Created by IntelliJ IDEA.
  User: davidbanker
  Date: 5/15/23
  Time: 4:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.mysql.cj.jdbc.Driver" %>
<%@ page import="java.io.OutputStream" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.codeup.adlister.models.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  Connection connection;
  User user = (User) request.getSession().getAttribute("user");
  try {
    DriverManager.registerDriver(new Driver());
    connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/joblister_db?allowPublicKeyRetrieval=true&useSSL=false",
            "root",
            "codeup");
    String query = "SELECT * FROM users WHERE id = ?";
    PreparedStatement stmt = connection.prepareStatement(query);
    stmt.setLong(1, user.getId());
    ResultSet rs = stmt.executeQuery();
    if (rs.next()) {
      Blob blob = rs.getBlob("img");
//                user.setImg((com.mysql.cj.jdbc.Blob) blob);
      byte byteArray[] = blob.getBytes(1, (int) blob.length());
      response.setContentType("image/gif");
      OutputStream os = response.getOutputStream();
      os.write(byteArray);
      os.flush();
      os.close();
    }
  } catch (SQLException e) {
    throw new RuntimeException("Error creating new user", e);
  } %>"

</body>
</html>
