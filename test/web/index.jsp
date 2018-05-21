<%--
  Created by IntelliJ IDEA.
  User: Schoki
  Date: 2018/3/16
  Time: 23:43
  To change this template use File | Settings | File Templates.
--%>
<%--原生AJAX--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <script>
        //异步
        function fn1() {
            //创建引擎ajax引擎对象  所有操作对象都是通过引擎对象
            var kael = new XMLHttpRequest();
            //绑定监听  监听服务器是否已经返回相应数据
            kael.onreadystatechange = function () {
                //接收响应数据
                if (kael.readyState == 4 && kael.status == 200) {
                    document.getElementById("mydiv").innerHTML = kael.responseText;
                }
            }
            //绑定地址
            kael.open("GET", "/faker?name=kael", true);
            //发送请求
            kael.send();
        }
        //同步
        function fn2() {
            //创建引擎ajax引擎对象  所有操作对象都是通过引擎对象
            var kael = new XMLHttpRequest();
            //绑定监听  监听服务器是否已经返回相应数据
            kael.onreadystatechange = function () {
                //接收响应数据
                if (kael.readyState == 4 && kael.status == 200) {
                    document.getElementById("mydiv2").innerHTML = kael.responseText;
                }
            }
            //绑定地址


            kael.open("POST", "/faker", false);
            //发送请求
            kael.setRequestHeader("Content-type","application/x-www-form-urlencoded");
            kael.send("name=kael");
        }
    </script>
</head>
<body>
<input type="button" value="异步访问服务器" onclick="fn1()">
<input type="button" value="同步刷新" onclick="fn2()">
<div id="mydiv">xx</div>
<div id="mydiv2">qq</div>
<input type="button" onclick="alert()" value="测试"></input>
</body>
</html>
