<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="db.DBManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%
	DBManager dbManager = new DBManager();
	Connection con=dbManager.getConnection();
	PreparedStatement pstmt=null;
	ResultSet rs=null;

	//select 
	String sql="select * from notice";
	pstmt=con.prepareStatement(sql); //쿼리준비
	rs = pstmt.executeQuery();//select문 실행
%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
table {
  border-collapse: collapse;
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	$("button").on("click",function(){
		//자바스크립트에서 링크 구현? 
		location.href="/board/regist_form.jsp";
	});
}); //onload
</script>
</head>
<body>

<table>
  <tr>
    <th>No</th>
    <th>제목</th>
    <th>작성자</th>
	<th>등록일</th>
	<th>조회수</th>
  </tr>
  <tr>
    <td>26</td>
    <td>제목올곳</td>
    <td>작성자올곳</td>
	<td>등록일올곳</td>
	<td>조회수올곳</td>
  </tr>

  <tr>
	<td colspan="5" > 
		<button>글등록</button>
	</td>
  </tr>
  <tr>
	<td colspan="5" style="text-align:center"> 
		Copyright All reserved java board
	</td>
  </tr>

</table>

</body>
</html>
