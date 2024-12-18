<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.dao.*"%>
<%@ page import="com.entity.*"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chương trình học - Khoa tin học Trường Đại học Sư phạm</title>
    <link rel="shortcut icon" type="image" href="images/logo.png">

    <!-- Links of CSS files -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/mobile.css" media="screen and (max-width: 968px)">

    <!-- Font Awesome CDN -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.3/css/all.css" integrity="sha384-SZXxX4whJ79/gErwcOYf+zWLeJdY/qpuqC4cAa9rOGUstPomtqpuNWT9wdPEn2fk" crossorigin="anonymous">

    <!-- Google font link -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;600;700&display=swap" rel="stylesheet">

</head>

<body>

    <!-- NavBar -->        
    <section class="sub-header libr">
        <nav>
			<div class="logo" id="top">
				<a href="index.jsp"> <img src="images/logo.png" alt="Logo">
				</a>
			</div>

			<label for="btn" class="icon"> <span class="fas fa-bars"></span>
			</label> <input type="checkbox" name="" id="btn">

			<ul>
				<li><a href="index.jsp">Trang chủ</a></li>
				<li><a href="about.jsp">Giới thiệu</a></li>
				<li><label for="btn-1" class="show">Chương trình đào
						tạo <i class="fas fa-caret-down"></i>
				</label> <a href="#">Chương trình đào tạo <i class="fas fa-caret-down"></i></a>
					<input type="checkbox" id="btn-1">
					<ul>
						<li><label for="btn-2" class="show">Công nghệ thông
								tin <i class="fas fa-caret-down"></i>
						</label> <a href="#"> Chuyên ngành <i class="fas fa-caret-right"></i></a>
							<input type="checkbox" id="btn-2">
							<ul>
								<%-- Lấy danh sách chuyên ngành với id = 1 --%>
						<%
						    DAO dao = new DAO(); // Tạo đối tượng DAO
						    List<chuyennganh> majors = dao.getChuyenNganhById1(); // Lấy danh sách chuyên ngành từ DAO
						    if (majors != null && !majors.isEmpty()) { // Kiểm tra danh sách không rỗng
						        for (chuyennganh major : majors) { // Lặp qua danh sách chuyên ngành
						%>
						            <li><a href="cntt.jsp"><%= major.getTen_chuyen_nganh() %></a></li>
						<%
						        }
						    } else {
						%>
						        <li>Không có chuyên ngành nào</li>
						<%
						    }
						%>
						
						<%-- Lấy danh sách chuyên ngành với id = 2 --%>
						<%
						    List<chuyennganh> majors1 = dao.getChuyenNganhById2(); // Lấy danh sách chuyên ngành từ DAO
						    if (majors1 != null && !majors1.isEmpty()) { // Kiểm tra danh sách không rỗng
						        for (chuyennganh major : majors1) { // Lặp qua danh sách chuyên ngành
						%>
						            <li><a href="spt.jsp"><%= major.getTen_chuyen_nganh() %></a></li>
						<%
						        }
						    } else {
						%>
						        <li>Không có chuyên ngành nào</li>
						<%
						    }
						%>
						
						<%-- Lấy danh sách chuyên ngành với id = 3 --%>
						<%
						    List<chuyennganh> majors2 = dao.getChuyenNganhById3(); // Lấy danh sách chuyên ngành từ DAO
						    if (majors2 != null && !majors2.isEmpty()) { // Kiểm tra danh sách không rỗng
						        for (chuyennganh major : majors2) { // Lặp qua danh sách chuyên ngành
						%>
						            <li><a href="cntt.jsp"><%= major.getTen_chuyen_nganh() %></a></li>
						<%
						        }
						    } 
						%>


							</ul></li>

						<li><label for="btn-3" class="show">Đào tạo</label> <a
							href="#"> Đào tạo <i class="fas fa-caret-right"></i>
						</a> <input type="checkbox" id="btn-3">

							<ul>
								<li><a href="bacdaihoc.jsp"> Đào tạo bậc đại học </a></li>
								<li><a href="bacthacsi.jsp"> Đào tạo bậc thạc sĩ </a></li>
								<li><a href="bactiensi.jsp"> Đào tạo bậc tiến sĩ </a></li>
							</ul></li>

					</ul></li>

				<li><a href="faculty">Đội ngũ giảng viên</a></li>
				<li><a href="blog.jsp">Bài viết</a></li>
				<li><a href="ContactServlet">Liên hệ</a></li>
				<li><a href="login.jsp"><i class="fas fa-sign-in-alt">
					</i> Login</a></li>
			</ul>
		</nav>

        <h1>CHƯƠNG TRÌNH HỌC</h1>

    </section>
	
    <!-- Chương trình học - CNTTC -->
	<div class="container">
        <div class="rows center-rows">
            <div class="rcard col-3">
                <h3>Khoá - 2021</h3>
              
                <hr><br>
                <a href="pdf/chuongtrinh/SPT/K21-CNTT-CLC.pdf" target="blank" class="heroBtn"><i
                        class="fas fa-external-link-alt"></i></a> <br> <br>
            </div>
            <div class="rcard col-3">

                <h3>Khoá - 2022</h3>
              
                <hr><br>
                <a href="pdf/chuongtrinh/SPT/K22-CNTT-CLC.pdf" target="blank" class="heroBtn"><i
                        class="fas fa-external-link-alt"></i></a> <br> <br>
            </div>
        </div>
    </div>
	
	<div class="buttonContainer">
	        <a href="khoahoc" class="sub-heroBtn redBtn">Danh sách khoá học</a>
	</div>
   

    <!-- Footer -->
    <section class="footer">

        <div class="fcol col-3 ftrTopEle">
            <h4> Lời nhắn </h4>
            <div class="contactCol">

                <form action="https://docs.google.com/forms/u/0/d/e/1FAIpQLScMlX0B_uFTrGkYDPPhw_hL1YmaveLVuTKmwvf587E1J7V_xg/formResponse" method="post" target="hidden_iframe" onsubmit="submitted=true" class="myform" id="myform">

                    <input type="text" name="entry.805276147" placeholder="Tên" required>
                    <input type="email" name="emailAddress" placeholder="Email" required>
                    <textarea rows="3" name="entry.1586819207" placeholder="Lời nhắn" required></textarea>
                    <button type="submit" class="heroBtn"> Gửi <i class="fas fa-paper-plane"></i> </button>
                </form>
            </div>
        </div>
        <div class="fcol col-3 ftrTopEle">
            <h4>Liên hệ</h4>
            <ol>
                <li><a href="https://ued.udn.vn/" target="blank"> Trang chủ - UED <i class="fas fa-external-link-alt"></i></a></li>
                <li><a href="https://it.ued.udn.vn/" target="blank"> Trang chủ khoa tin - UED <i class="fas fa-external-link-alt"></i></a></li>
                <li><a href="https://www.facebook.com/ueddn" target="blank"> Facebook - UED <i class="fas fa-external-link-alt"></i></a></li>
                <li><a href="https://www.facebook.com/khoatinhoc" target="blank">Facebook khoa tin - UED <i class="fas fa-external-link-alt"></i></a></li>
            </ol>
        </div>
        <div class="fcol col-3 ftrTopEle">
            <h4>Giới thiệu</h4>
            <p>Đây là website giới thiệu về khoa tin Trường Đại học Sư Phạm - Đại học Đà Nẵng, cung cấp cho sinh viên các thông tin về đội ngũ giảng viên, chương trình đào tạo, lớp học của khoa.</p>
        </div>
        <div class="fcol col-6">
            <hr>
            <p> &copy; 2024 - Khoa tin Trường Đại học Sư phạm</p>
        </div>
    </section>

    <!-- Links Javascript -->        
    <script src="js/index.js"></script>

</body>

</html>