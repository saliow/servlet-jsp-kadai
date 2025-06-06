<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Objects" %>

<html>
    <head>
        <title>個人情報入力フォームを作ろう</title>
    </head>
    <body>
        <%
        // Servletからのデータを取得
        String name = (String) request.getAttribute("name");
        String email = (String) request.getAttribute("email");
        String address = (String) request.getAttribute("address");
        String phoneNumber = (String) request.getAttribute("phoneNumber");

        // データが存在しない場合は空文字に置き換え
        name = Objects.toString(name, "");
        email = Objects.toString(email, "");
        address = Objects.toString(address, "");
        phoneNumber = Objects.toString(phoneNumber, "");
        %>

        <h2>個人情報入力フォーム</h2>
        <form action="<%= request.getContextPath() %>/confirm" method="post">
            <table>
                <tr>
                    <td>氏名</td>
                    <td>
                        <input type="text" name="name" value=<%= name %> >
                    </td>
                </tr>
                <tr>
                    <td>メールアドレス</td>
                    <td>
                        <input type="text" name="email" value=<%= email %> >
                    </td>
                </tr>
                <tr>
                    <td>住所</td>
                    <td>
                        <input type="text" name="address" value=<%= address %> >
                    </td>
                </tr>
                <tr>
                    <td>電話番号</td>
                    <td>
                        <input type="text" name="phone_number" value=<%= phoneNumber %> >
                    </td>
                </tr>
            </table>
            <input type="submit" value="送信">
        </form>
    </body>
</html>