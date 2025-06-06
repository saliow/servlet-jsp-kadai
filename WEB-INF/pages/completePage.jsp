<%@ page contentType="text/html; charset=UTF-8" %>

<html>
    <head>
        <title>個人情報入力フォームを作ろう</title>
    </head>
    <body>
        <%
        // セッションデータの取得
        String name = (String) session.getAttribute("name");
        %>
        <h2><%= name %>様、個人情報入力が完了しました。</h2>

        <%-- 戻るボタン（入力フォームに戻る） --%>
        <button onclick="location.href='<%= request.getContextPath() %>/form';">戻る</button>
    </body>
</html>