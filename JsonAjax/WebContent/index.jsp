<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>

<script src="http://libs.baidu.com/jquery/1.9.0/jquery.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>    
   <!-- Ajax收发Json数据 -->
   <input id="submit" type="submit" value="submit">
   
      
  <script type="text/javascript">
		$(function() { 
			$("#submit").click(function() {   
	         /*      var postdata = '{"bookname":"' + 'javaEE实在经典' + '","price":"' 
	            + '￥50.0'+'","size":"' + '￥50.0' +'","pages":"' + '￥50.0'+ '"}';     */
                       //ajax传值方式 上面是json串  因为引用id的值所有拼凑出来的 
				   var postdata={"bookname":"javaEE实战经典","price":"$50.0","size":"25.0cm","pages":"897"};
				   
				    $.ajax({   
			        type : 'GET',  
			        contentType : 'application/json',  
			        url : 'http://localhost:8080/JsonAjax/requestbodybind.action',  
			        /* processData : false,  */ 
			        dataType : 'json',  
			        data : postdata,  
			        success : function(data) {  
			            alert('username : '+data.bookname+'\npassword : '+data.price);  
			        },  
			        error : function() {  
			            alert('error...');    
			        }  
			    }); 
			});
	    });
	</script> 
  
  
  
</body>
</html>