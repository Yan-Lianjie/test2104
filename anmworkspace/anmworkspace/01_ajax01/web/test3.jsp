<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + 	request.getServerPort() + request.getContextPath() + "/";
%>
<html>
  <head>
  <base href="<%=basePath%>">
    <title>myTitle</title>
    <script src="js/jquery-1.8.3.min.js"></script>
    <script>

      $(function () {

        $("#djBtn").click(function () {

          $.ajax({

            url : "myServlet03.do",
            type : "get",
            dataType : "json",
            success : function (data) {

              //alert(data);//[object Object]

              alert(data.id);
              alert(data.name);
              alert(data.age);

            }

          })

        })

      })

    </script>
  </head>
  <body>

    <button id="djBtn">点击</button>

  </body>
</html>
