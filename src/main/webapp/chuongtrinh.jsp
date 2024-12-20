<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.dao.*"%>
<%@ page import="com.entity.*"%>

<!doctype html>

<html lang="en" class="light-style layout-menu-fixed layout-compact"
	dir="ltr" data-theme="theme-default" data-assets-path="assets/"
	data-template="vertical-menu-template-free" data-style="light">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<title>Admin</title>
<meta name="description" content="" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="icon" type="image/x-icon"
	href="assets/img/favicon/favicon.ico" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&ampdisplay=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="assets/vendor/fonts/remixicon/remixicon.css" />
<link rel="stylesheet"
	href="assets/vendor/libs/node-waves/node-waves.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="assets/css/demo.css" />
<link rel="stylesheet" href="assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
<script src="assets/vendor/js/helpers.js"></script>
<script src="assets/js/config.js"></script>
<style>
.accordion {
	max-width: 900px;
	margin: 20px 20px;
	padding: 20px 20px;
	border-radius: 8px;
	overflow: hidden;
	box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
	background-color: #ffffff;
}

.accordion-item {
	border-bottom: 1px solid #ddd;
	overflow: hidden;
	transition: all 0.3s ease-in-out;
}

.accordion-header {
	padding: 20px 20px;
	cursor: pointer;
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #f8f9fa;
	font-size: 16px;
	font-weight: bold;
	color: #333;
	transition: background-color 0.3s ease, color 0.3s ease;
}

.accordion-header.active {
	background-color: #e9ecef;
	color: #0056b3;
}

.accordion-content {
	padding: 20px 20px;
	display: none;
	background-color: #f8f9fa;
	font-size: 14px;
	color: #555;
	line-height: 1.5;
}
</style>
</head>

<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->

			<aside id="layout-menu"
				class="layout-menu menu-vertical menu bg-menu-theme">
				<div class="app-brand demo">
					<a href="HomeControl" class="app-brand-link"> <span
						class="app-brand-logo demo me-1"> <span
							style="color: var(--bs-primary)"> <svg width="30"
									height="24" viewBox="0 0 250 196" fill="none"
									xmlns="http://www.w3.org/2000/svg">
                    <path fill-rule="evenodd" clip-rule="evenodd"
										d="M12.3002 1.25469L56.655 28.6432C59.0349 30.1128 60.4839 32.711 60.4839 35.5089V160.63C60.4839 163.468 58.9941 166.097 56.5603 167.553L12.2055 194.107C8.3836 196.395 3.43136 195.15 1.14435 191.327C0.395485 190.075 0 188.643 0 187.184V8.12039C0 3.66447 3.61061 0.0522461 8.06452 0.0522461C9.56056 0.0522461 11.0271 0.468577 12.3002 1.25469Z"
										fill="currentColor" />
                    <path opacity="0.077704" fill-rule="evenodd"
										clip-rule="evenodd"
										d="M0 65.2656L60.4839 99.9629V133.979L0 65.2656Z" fill="black" />
                    <path opacity="0.077704" fill-rule="evenodd"
										clip-rule="evenodd"
										d="M0 65.2656L60.4839 99.0795V119.859L0 65.2656Z" fill="black" />
                    <path fill-rule="evenodd" clip-rule="evenodd"
										d="M237.71 1.22393L193.355 28.5207C190.97 29.9889 189.516 32.5905 189.516 35.3927V160.631C189.516 163.469 191.006 166.098 193.44 167.555L237.794 194.108C241.616 196.396 246.569 195.151 248.856 191.328C249.605 190.076 250 188.644 250 187.185V8.09597C250 3.64006 246.389 0.027832 241.935 0.027832C240.444 0.027832 238.981 0.441882 237.71 1.22393Z"
										fill="currentColor" />
                    <path opacity="0.077704" fill-rule="evenodd"
										clip-rule="evenodd"
										d="M250 65.2656L189.516 99.8897V135.006L250 65.2656Z"
										fill="black" />
                    <path opacity="0.077704" fill-rule="evenodd"
										clip-rule="evenodd"
										d="M250 65.2656L189.516 99.0497V120.886L250 65.2656Z"
										fill="black" />
                    <path fill-rule="evenodd" clip-rule="evenodd"
										d="M12.2787 1.18923L125 70.3075V136.87L0 65.2465V8.06814C0 3.61223 3.61061 0 8.06452 0C9.552 0 11.0105 0.411583 12.2787 1.18923Z"
										fill="currentColor" />
                    <path fill-rule="evenodd" clip-rule="evenodd"
										d="M12.2787 1.18923L125 70.3075V136.87L0 65.2465V8.06814C0 3.61223 3.61061 0 8.06452 0C9.552 0 11.0105 0.411583 12.2787 1.18923Z"
										fill="white" fill-opacity="0.15" />
                    <path fill-rule="evenodd" clip-rule="evenodd"
										d="M237.721 1.18923L125 70.3075V136.87L250 65.2465V8.06814C250 3.61223 246.389 0 241.935 0C240.448 0 238.99 0.411583 237.721 1.18923Z"
										fill="currentColor" />
                    <path fill-rule="evenodd" clip-rule="evenodd"
										d="M237.721 1.18923L125 70.3075V136.87L250 65.2465V8.06814C250 3.61223 246.389 0 241.935 0C240.448 0 238.99 0.411583 237.721 1.18923Z"
										fill="white" fill-opacity="0.3" />
                  </svg>
						</span>
					</span> <span class="app-brand-text demo menu-text fw-semibold ms-2">Admin</span>
					</a> <a href="javascript:void(0);"
						class="layout-menu-toggle menu-link text-large ms-auto"> <i
						class="menu-toggle-icon d-xl-block align-middle"></i>
					</a>
				</div>

				<div class="menu-inner-shadow"></div>

				<ul class="menu-inner py-1">
					<!-- Dashboards -->

					<li class="menu-header mt-7"><span class="menu-header-text">QUẢN
							LÝ</span></li>
					<!-- Layouts -->
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons ri-layout-2-line"></i>
							<div data-i18n="Layouts">Quản lý Giáo viên</div>
					</a>

						<ul class="menu-sub">
							<c:forEach items="${list}" var="o">
								<li class="menu-item"><a href="GiaovienControl?id=${o.id}"
									class="menu-link">
										<div data-i18n="Without menu">${o.ten_to_bo_mon}</div>
								</a></li>
							</c:forEach>

						</ul></li>

					<!-- Front Pages -->
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons ri-file-copy-line"></i>
							<div data-i18n="Front Pages">Quản lý Sinh viên</div>

					</a>
						<ul class="menu-sub">
							<c:forEach items="${list3}" var="o">
								<li class="menu-item"><a
									href="GiaovienControl?idsv=${o.id}" class="menu-link">

										<div data-i18n="Landing">${o.ten_chuyen_nganh}</div>
								</a></li>
							</c:forEach>
						</ul></li>
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons ri-file-copy-line"></i>
							<div data-i18n="Front Pages">Quản lý Tương tác</div>

					</a>
						<ul class="menu-sub">
							<c:forEach items="${list5}" var="o">
								<li class="menu-item"><a
									href="GiaovienControl?idsubject=${o.idsubject}"
									class="menu-link">
										<div data-i18n="Landing">${o.namesubject}</div>
								</a></li>
							</c:forEach>

						</ul></li>
					<li class="menu-item"><a href="CCControl" class="menu-link">
							<i class="menu-icon tf-icons ri-layout-2-line"></i>
							<div data-i18n="Layouts">Quản lý Chương Trình học</div>
					</a></li>
			</aside>	
			<!-- / Menu -->

			<!-- Layout container -->
			<div class="layout-page">
				<!-- Navbar -->

				<nav
					class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
					id="layout-navbar">
					<div
						class="layout-menu-toggle navbar-nav align-items-xl-center me-4 me-xl-0 d-xl-none">
						<a class="nav-item nav-link px-0 me-xl-6"
							href="javascript:void(0)"> <i class="ri-menu-fill ri-24px"></i>
						</a>
					</div>

					<div class="navbar-nav-right d-flex align-items-center"
						id="navbar-collapse">
						<!-- Search -->
						<div class="navbar-nav align-items-center">
							<div class="nav-item d-flex align-items-center">
								<i class="ri-search-line ri-22px me-2"></i> <input type="text"
									id="searchInput" class="form-control border-0 shadow-none"
									placeholder="Tìm kiếm" aria-label="Search..."
									oninput="filterList()" />

							</div>
						</div>

						<!-- /Search -->

						<ul class="navbar-nav flex-row align-items-center ms-auto">
							<!-- Place this tag where you want the button to render. -->


							<!-- User -->
							<li class="nav-item navbar-dropdown dropdown-user dropdown">
								<a class="nav-link dropdown-toggle hide-arrow p-0"
								href="javascript:void(0);" data-bs-toggle="dropdown">
									<div class="avatar avatar-online">
										<img src="assets/img/avatars/1.png" alt
											class="w-px-40 h-auto rounded-circle" />
									</div>
							</a>
								<ul class="dropdown-menu dropdown-menu-end mt-3 py-2">
									<li><a class="dropdown-item" href="#">
											<div class="d-flex align-items-center">
												<div class="flex-shrink-0 me-2">
													<div class="avatar avatar-online">
														<img src="assets/img/avatars/1.png" alt
															class="w-px-40 h-auto rounded-circle" />
													</div>
												</div>
												<div class="flex-grow-1">
													<h6 class="mb-0 small">Admin</h6>
													<small class="text-muted">Admin</small>
												</div>
											</div>
									</a></li>
									<li>
										<div class="dropdown-divider"></div>
									</li>

									<li>
										<div class="dropdown-divider"></div>
									</li>
									<li>
										<div class="d-grid px-4 pt-2 pb-1">
											<a class="btn btn-danger d-flex" href="LogoutServlet"> <small
												class="align-middle">Logout</small> <i
												class="ri-logout-box-r-line ms-2 ri-16px"></i>
											</a>
										</div>
									</li>
								</ul>
							</li>
							<!--/ User -->
						</ul>
					</div>
				</nav>

				<!-- / Navbar -->

				<!-- Content wrapper -->
				<div class="content-wrapper">

					<c:if test="${not empty list3}">


						<div class="table-responsive text-nowrap sticky-table">

							<h3 class="card-header">Danh sách Chương trình</h3>

							<table class="table table-bordered table-striped">
								<thead>
									<tr>
										<th>Tên chương trình</th>

										<th>
											<div class="col-sm-6">
												<a href="#addEmployeeModal" class="btn btn-success"
													data-bs-toggle="modal"> <i class="material-icons"></i>
													<span>Add</span></a>
											</div>

										</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${list3}" var="o">
										<tr>
											<td>${o.ten_chuyen_nganh}</td>

											<td><a href="editcc?id=${o.id}" class="edit"
												data-toggle="modal"><i class="material-icons"
													data-toggle="tooltip" title="edit">&#xE254;</i></a> <a
												href="deletecc?id=${o.id}" class="delete"
												data-toggle="modal"><i class="material-icons"
													data-toggle="tooltip" title="Delete">&#xE872;</i></a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</c:if>
				</div>
				<div id="addEmployeeModal" class="modal fade" tabindex="-1"
					role="dialog" aria-labelledby="addsvModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<form action="addcc" method="post">
								<div class="modal-header">
									<h4 class="modal-title" id="addsvModalLabel">Thêm Chương
										Trình</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">
									<!-- Tên Chương Trình -->
									<div class="form-group">
										<label>Tên Chương Trình</label> <input name="name" type="text"
											class="form-control" placeholder="Nhập tên" required>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Hủy</button>
									<button type="submit" class="btn btn-success">Thêm
										Chương Trình</button>
								</div>
							</form>
						</div>
					</div>
				</div>











				<script>  
    document.addEventListener("DOMContentLoaded", () => {
        const headers = document.querySelectorAll('.accordion-header');

        headers.forEach(header => {
            header.addEventListener('click', () => {
                const content = header.nextElementSibling;

                // Toggle hiển thị nội dung
                const isOpen = content.style.display === "block";
                document.querySelectorAll('.accordion-content').forEach(c => (c.style.display = "none"));
                document.querySelectorAll('.accordion-header').forEach(h => h.classList.remove('active'));

                if (!isOpen) {
                    content.style.display = "block";
                    header.classList.add('active');
                } else {
                    content.style.display = "none";
                }
            });
        });
    });
 
    </script>



			</div>
			<div class="content-backdrop fade"></div>
		</div>
		<!-- Content wrapper -->
	</div>
	<!-- / Layout page -->
	</div>
	<div class="layout-overlay layout-menu-toggle"></div>
	<script src="assets/vendor/libs/jquery/jquery.js"></script>
	<script src="assets/vendor/libs/popper/popper.js"></script>
	<script src="assets/vendor/js/bootstrap.js"></script>
	<script src="assets/vendor/libs/node-waves/node-waves.js"></script>
	<script src="assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script src="assets/vendor/js/menu.js"></script>
	<script src="assets/vendor/libs/apex-charts/apexcharts.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="assets/js/dashboards-analytics.js"></script>
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	<!-- Bootstrap Bundle JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

	<script>
  function filterList() {
    // Lấy giá trị người dùng nhập
    const query = document.getElementById("searchInput").value.toLowerCase();

    // Lấy tất cả các hàng trong bảng
    const rows = document.querySelectorAll("table tbody tr");

    // Lặp qua các hàng để kiểm tra nội dung
    rows.forEach((row) => {
      // Lấy toàn bộ văn bản trong hàng (kết hợp tên, email, chức vụ)
      const rowText = row.textContent.toLowerCase();

      // Hiển thị hoặc ẩn hàng dựa vào từ khóa
      if (rowText.includes(query)) {
        row.style.display = ""; // Hiển thị hàng
      } else {
        row.style.display = "none"; // Ẩn hàng
      }
    });
  }
</script>
</body>
</html>
