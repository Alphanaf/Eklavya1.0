<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<%@ page import="com.tsys.eklavya.model.CustomerDetails" %>
<%@ page import="java.util.List" %>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" 
	data-assets-path="${pageContext.request.contextPath}/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"/>
<title>Eklavya - Innovation in Payments</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/vendor/libs/apex-charts/apex-charts.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="${pageContext.request.contextPath}/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="${pageContext.request.contextPath}/assets/js/config.js"></script>

<%
List<CustomerDetails> custList=(List) request.getAttribute("custList");
int transaction=0,transactionCount=0;
for(CustomerDetails customer:custList){
 transaction+=customer.getAmount();
transactionCount++;
}
%>
</head>

<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->

			<aside id="layout-menu"
				class="layout-menu menu-vertical menu bg-menu-theme">
				<div class="app-brand demo">
					<a href="index.html" class="app-brand-link">
						<div class="avatar flex-shrink-0">
								<span class="app-brand-logo demo"> <img
								src="${pageContext.request.contextPath}/assets/img/favicon/favicon.ico" alt="Credit Card"
								class="rounded"></span>
						</div> <span class="app-brand-text demo menu-text fw-bolder ms-2">eklavya</span>
					</a> <a href="javascript:void(0);"
						class="layout-menu-toggle menu-link text-large ms-auto d-block d-xl-none">
						<i class="bx bx-chevron-left bx-sm align-middle"></i>
					</a>
				</div>

				<div class="menu-inner-shadow"></div>

				<ul class="menu-inner py-1">
					<!-- Dashboard -->
					<li class="menu-item active"><a href="index.html"
						class="menu-link"> <i
							class="menu-icon tf-icons bx bx-home-circle"></i>
							<div data-i18n="Analytics">Dashboard</div>
					</a></li>

					<!-- Layouts -->


					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">Pages</span></li>
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-dock-top"></i>
							<div data-i18n="Account Settings">Account Settings</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a
								href="pages-account-settings-account.html" class="menu-link">
									<div data-i18n="Account">Account</div>
							</a></li>
							<li class="menu-item"><a
								href="pages-account-settings-notifications.html"
								class="menu-link">
									<div data-i18n="Notifications">Notifications</div>
							</a></li>
							<li class="menu-item"><a
								href="pages-account-settings-connections.html" class="menu-link">
									<div data-i18n="Connections">Connections</div>
							</a></li>
						</ul></li>
					<li class="menu-item"><a href="javascript:void(0);"
						class="menu-link menu-toggle"> <i
							class="menu-icon tf-icons bx bx-lock-open-alt"></i>
							<div data-i18n="Authentications">Authentications</div>
					</a>
						<ul class="menu-sub">
							<li class="menu-item"><a href="auth-login-basic.html"
								class="menu-link" target="_blank">
									<div data-i18n="Basic">Login</div>
							</a></li>
							<li class="menu-item"><a href="auth-register-basic.html"
								class="menu-link" target="_blank">
									<div data-i18n="Basic">Register</div>
							</a></li>
							<li class="menu-item"><a
								href="auth-forgot-password-basic.html" class="menu-link"
								target="_blank">
									<div data-i18n="Basic">Forgot Password</div>
							</a></li>
						</ul></li>

					<!-- Components -->
					<li class="menu-header small text-uppercase"><span
						class="menu-header-text">Components</span></li>
					<!-- Cards -->
					<li class="menu-item"><a href="cards-basic.html"
						class="menu-link"> <i
							class="menu-icon tf-icons bx bx-collection"></i>
							<div data-i18n="Basic">Cards</div>
					</a></li>
					<!-- User interface -->
					

					<!-- Extended components -->
					
					

				</ul>
			</aside>
			<!-- / Menu -->

			<!-- Layout container -->
			<div class="layout-page">
				<!-- Navbar -->

				<nav
					class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
					id="layout-navbar">
					<div
						class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
						<a class="nav-item nav-link px-0 me-xl-4"
							href="javascript:void(0)"> <i class="bx bx-menu bx-sm"></i>
						</a>
					</div>

					<div class="navbar-nav-right d-flex align-items-center"
						id="navbar-collapse">
						<!-- Search -->
						<div class="navbar-nav align-items-center">
							<div class="nav-item d-flex align-items-center">
								<i class="bx bx-search fs-4 lh-0"></i> <input type="text"
									class="form-control border-0 shadow-none"
									placeholder="Search..." aria-label="Search..." />
							</div>
						</div>
						<!-- /Search -->

						<ul class="navbar-nav flex-row align-items-center ms-auto">
							<!-- Place this tag where you want the button to render. -->

							<!-- User -->
							<li class="nav-item navbar-dropdown dropdown-user dropdown">
								<a class="nav-link dropdown-toggle hide-arrow"
								href="javascript:void(0);" data-bs-toggle="dropdown"> </a>

							</li>
							<!--/ User -->
						</ul>
					</div>
				</nav>

				<!-- / Navbar -->

				<!-- Content wrapper -->
				
				<div class="content-wrapper">
					<!-- Content -->
	
					<div class="container flex-grow-0 container-p-y">
						<div class="row">
							<div class="col-lg-8 mb-0 order-0">
								<div class="card">
									<div class="d-flex align-items-end row">
										<div class="col-sm-7">
											<div class="card-body">
												<h5 class="card-title text-primary">Welcome John! &#9884;</h5>
												<p class="mb-4">
													You have done <span class="fw-bold">72%</span> more sales
													today. Check your new badge in your profile.
												</p>

											</div>
										</div>
										<div class="col-sm-5 text-center text-sm-left">
											<div class="card-body pb-0 px-0 px-md-4">
												<img
													src="${pageContext.request.contextPath}/assets/img/illustrations/man-with-laptop-light.png"
													height="140" alt="View Badge User"
													data-app-dark-img="illustrations/man-with-laptop-dark.png"
													data-app-light-img="illustrations/man-with-laptop-light.png" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-4 col-md-4 order-0">
								<div class="row">
									<div class="col-6">
										<div class="card">
											<div class="card-body">
												<div
													class="card-title d-flex align-items-start justify-content-between">
													<div class="avatar flex-shrink-0">
														<img src="${pageContext.request.contextPath}/assets/img/icons/unicons/cc-primary.png"
															alt="Credit Card" class="rounded" />
													</div>

												</div>
												<span class="fw-semibold d-block mb-1">Transactions</span>
												<h3 class="card-title mb-2 text-primary fw-semibold">&#X20B9;
													<%=transaction%></h3>

											</div>
										</div>
									</div>
									<div class="col-6">
										<div class="card">
											<div class="card-body">
												<div
													class="card-title d-flex align-items-start justify-content-between">
													<div class="avatar flex-shrink-0">
														<img src="${pageContext.request.contextPath}/assets/img/icons/unicons/wallet-info.png"
															alt="Credit Card" class="rounded" />
													</div>

												</div>
												<span>Sales</span>
												<h3 class="card-title mb-2 text-primary fw-semibold"><%=transactionCount%></h3>

											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- Total Revenue -->



						</div>
						<form action="addCustomer" method="POST" autocomplete="off">
						<div class="row" style="margin-top: 3%">
							<!-- Order Statistics -->
							<div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
								<div class="card h-100">
									<div
										class="card-header d-flex align-items-center justify-content-between pb-0">
										<div class="card-title mb-0">
											<h5 class="m-0 me-2"
												style="font-weight: bolder; color: darkblue;">Make
												Payment</h5>
											<div class="tab-content p-0"></div>
										</div>

									</div>
									<div class="d-flex p-4 pt-3">
										<div class="card-body">
											<div class="tab-content p-0">
												<ul class="p-0 m-0">
													<li class="d-flex mb-0 pb-0">
														<div class="mb-7 col-md-7">
															
																<select id="cardTypeT" name="cardTypeT" class="select2 form-select">
																	<option value="">---Select Card---</option>
																	<option value="Visa">Visa</option>
																	<option value="Master Card">Master Card</option>
																	<option value="Amex">Amex</option>

																</select>

															
														
														</div>
														<div class="mb-1 col-md-1"></div>
														<div class="mb-4 col-md-4">
														
																
															 <input type="number" class="form-control"
																id="amountT" name="amountT" placeholder="amount"
																maxlength="6">
														

				</div>										
													</li>
												<li class="d-flex mb-0 pb-0">
														<div>
															<div
																class="d-flex align-items-start align-items-sm-center gap-4">
																<img src="${pageContext.request.contextPath}/assets/img/favicon/favicon.ico"
																	alt="user-avatar" class="d-block rounded" height="70"
																	width="70" id="uploadedAvatar" />
																<div class="button-wrapper">
																	<label for="upload" class="btn btn-dark me-1 mb-1" style="margin-left: 30%"
																		tabindex="0"> <span class="d-none d-sm-block">Upload
																			Thumb</span> <i class="bx bx-upload d-block d-sm-none"></i>
																		<input type="file" id="upload"
																		class="account-file-input" hidden
																		accept="image/png, image/jpeg" />
																	</label>
																	<button type="button" style="margin-left: 59%"
																		class="btn btn-outline-secondary account-image-reset mb-4">
																		<i class="bx bx-reset d-block d-sm-none"></i> <span
																			class="d-none d-sm-block">Reset</span>
																	</button>
</div>
</div>

														</div>
													</li>
													<li class="d-flex mb-0 pb-0">
														<div class="mb-0 col-md-12">
															<label for="zipCode" class="form-label">Card
																Number</label> <input type="number" disabled="disabled"
																class="form-control" id="zipCode" name="zipCode"
																placeholder="0000-0000-0000-0000" 
																>
														</div>
													</li>
												<li class="d-flex mb-0 pb-0">
														<div class="mb-3 col-md-5">
															<label for="pinNumber" class="form-label">Enter
																Your PIN </label> <input type="password" class="form-control"
																id="pinNumber" name="pinNumber" placeholder="****"
																maxlength="6">
														</div>
														<div class="mb-0 col-md-2"></div>
														<div class="mb-0 col-md-5">
														<label for="submit" class="form-label"> 
														</label>
														<button type="submit" name="addCustomer" class="form-control btn btn-primary btn-md"
													 name="submit">
													Submit</button></div>
													</li>
												</ul>
											</div>
										</div>
									</div>
									

								</div>
							</div>
						
							<div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
								<div class="card h-100">
									<div
										class="card-header d-flex align-items-center justify-content-between pb-0">
										<div class="card-title mb-0">
											<h5 class="m-0 me-2">Transactions</h5>
											<div class="tab-content p-0"></div>
										</div>

									</div>
									<div class="d-flex p-4 pt-3">
										<div class="card-body" style="height: 350px; overflow-y: auto">
											<div class="tab-content p-0">
												<ul class="p-0 m-0">
												
												<% for(CustomerDetails cust:custList){%>
												
													<li class="d-flex mb-2 pb-0">
									
														
														<div
															class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-4">
															<div class="avatar flex-shrink-0">
														<img src="${pageContext.request.contextPath}/assets/img/icons/unicons/cc-primary.png" alt="Credit Card" class="rounded">
													</div>
															<div class="me-4">
																<h6 class="mb-2"><%=cust.getUserName()%></h6>
																<small class="text-muted">debited by - <%=cust.getCardType()%></small>
															</div>
															<div class="user-progress">
																<small class="fw-semibold">&#X20B9;<%=cust.getAmount()%></small>
															</div>
														</div>
													</li>
													<%}%>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						
							
							<div class="col-md-12 col-lg-4 col-xl-4 order-0 mb-4">
								<div class="card h-100">
									<div
										class="card-header d-flex align-items-center justify-content-between pb-0">
										<div class="card-title mb-0">
											<h5 class="m-0 me-2" style="font-weight: bold;color: teal;">Add Customer (Issuer End)</h5>
											<div class="tab-content p-0"></div>
										</div>

									</div>
									<div class="d-flex p-4 pt-3">
										<div class="card-body">
											<div class="tab-content p-0">
												<ul class="p-0 m-0">
													<li class="d-flex mb-0 pb-0">
														<div class="mb-2 col-md-5">
															<input type="text" 
																class="form-control" id="userName" name="userName"
																placeholder="Jhon Doe" min="16"  autocomplete="off"
																maxlength="16">
														</div>
														<div class="mb-2 col-md-1"></div>
														<div class="mb-2 col-md-6">
														
														
																<select id="cardType" name="cardType" class="select2 form-select">
																	<option value="">---Select Card---</option>
																	<option value="Visa">Visa</option>
																	<option value="Master Card">Master Card</option>
																	<option value="Amex">Amex</option>

																</select>

															
														
														</div>
													</li>
													
													<li class="d-flex mb-0 pb-0">
														<div>
															<div
																class="d-flex align-items-start align-items-sm-center gap-4">
																<img src="${pageContext.request.contextPath}/assets/img/favicon/favicon.ico"
																	alt="user-avatar" class="d-block rounded" height="70"
																	width="70" id="uploadedAvatar" />
																<div class="button-wrapper">
																	<label for="upload" class="btn btn-dark me-1 mb-1" style="margin-left: 30%"
																		tabindex="0"> <span class="d-none d-sm-block">Upload
																			Thumb</span> <i class="bx bx-upload d-block d-sm-none"></i>
																		<input type="file" id="upload"
																		class="account-file-input" hidden
																		accept="image/png, image/jpeg" />
																	</label>
																	<button type="button" style="margin-left: 59%"
																		class="btn btn-outline-secondary account-image-reset mb-4">
																		<i class="bx bx-reset d-block d-sm-none"></i> <span
																			class="d-none d-sm-block">Reset</span>
																	</button>
</div>
</div>

														</div>
													</li>
													<li class="d-flex mb-0 pb-0">
														<div class="mb-2 col-md-12">
															<label for="zipCode" class="form-label">Card
																Number</label> <input type="text" 
																class="form-control" id="cardNumber" name="cardNumber"
																placeholder="0000-0000-0000-0000" min="16"
																maxlength="16">
														</div>
													</li>
													<li class="d-flex mb-0 pb-0">
														<div class="mb-0 col-md-5">
															<label for="pinNumber" class="form-label">Enter
																Your PIN </label> <input type="password" class="form-control"
																id="userPin" name="userPin" placeholder="****"
																maxlength="6">
														</div>
														<div class="mb-0 col-md-2"></div>
														<div class="mb-0 col-md-5">
														<label for="submit" class="form-label"> 
														</label>
														<button type="submit" name="addCustomer" value="Add" class="form-control btn btn-primary btn-md"
													 name="submit">
													Add</button></div>
													</li>
													
												</ul>
											</div>
										</div>
									</div>
									

								</div>
							</div>
							</div>
							</form>
							</div>
							</div>
							

						
						<!-- Expense Overview -->

						<!--/ Expense Overview -->

						<!-- Transactions -->

			
				
				<!-- / Content -->

				<!-- Footer -->
				<footer class="content-footer footer bg-footer-theme">
					<div
						class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
						<div class="mb-0 mb-md-0">
								&#169;
							<script>
								document.write(new Date().getFullYear());
							</script>
							, made by <a href="" target="_blank"
								class="footer-link fw-bolder">Team Eklavya</a>
						</div>

					</div>
				</footer>
				<!-- / Footer -->
</div>
				<div class="content-backdrop fade"></div>
			</div>
			<!-- Content wrapper -->
		</div>
		<!-- / Layout page -->


	<!-- Overlay -->
	<div class="layout-overlay layout-menu-toggle"></div>
	

	<!-- / Layout wrapper -->
	<!--
    <div class="buy-now">
      <a
        href="https://themeselection.com/products/sneat-bootstrap-html-admin-template/"
        target="_blank"
        class="btn btn-danger btn-buy-now"
        >Upgrade to Pro</a
      >
    </div>-->

	<!-- Core JS -->
	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script src="${pageContext.request.contextPath}/assets/vendor/libs/jquery/jquery.js"> </script>
	<script src="${pageContext.request.contextPath}/assets/vendor/libs/popper/popper.js"> </script>
	<script src="${pageContext.request.contextPath}/assets/vendor/js/bootstrap.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script src="${pageContext.request.contextPath}/assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->

	<!-- Main JS -->
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>

	<!-- Page JS -->
	<script src="${pageContext.request.contextPath}/assets/js/pages-account-settings-account.js"></script>

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
	

</body>
</html>
