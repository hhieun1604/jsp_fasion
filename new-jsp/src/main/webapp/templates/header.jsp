<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

<header class="site-navbar" role="banner">
    <div class="site-navbar-top">
        <div class="container">
            <div class="row align-items-center">
            
            
                <div class="col-6 col-md-4 order-2 order-md-1 site-search-icon text-left">
                    <div class="site-logo">
                        <a href="/test" class="js-logo-clone">FASHION</a>
                    </div>
                </div>
                
				 <div class="col-12 mb-3 mb-md-0 col-md-4 order-1 order-md-2 text-center">
                    
                    <form action="search" method="get" class="site-block-top-search">
                        <span class="icon icon-search2"></span>
                        <input name="keyword" type="text" class="form-control border-0" placeholder="Search">
                    </form>
                </div>
               
                <div class="col-6 col-md-4 order-3 order-md-3 text-right">
                    <div class="site-top-icons">
                        <ul>
                            <c:if test="${sessionScope.account != null}">
                                <li>
                                    <a class="dropdown-item" href="logout">Logout</a>
                                </li>
                            </c:if>

                            <c:if test="${sessionScope.account == null}">
                                <li><a href="login"><span class="icon icon-person"></span></a></li>
                            </c:if>

                            <li>
                                <a href="/test/cart.jsp" class="site-cart">
                                    <span class="icon icon-shopping_cart"></span>

                                    <c:if test="${order.cartProducts.size() != null}">
                                        <span class="count">${order.cartProducts.size()}</span>
                                    </c:if>
                                </a>
                            </li>

                            <li class="d-inline-block d-md-none ml-md-0">
                                <a href="#" class="site-menu-toggle js-menu-toggle">
                                    <span class="icon-menu"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <nav class="site-navigation text-right text-md-center" role="navigation">
        <div class="container">
            <ul class="site-menu js-clone-nav d-none d-md-block" style="padding: 0">
                <li class="${home_active}"><a href="/test">Trang chủ</a></li>
                 <li class="${shop_active}"><a href="shop">Shop</a></li>
                <li class="${about_active}"><a href="../test/about.jsp">Về chúng tôi</a></li>
               
                <li class="${contact_active}"><a href="../test/contact.jsp">Liên hệ</a></li>

                <c:if test="${sessionScope.account != null}">
                    <li class="${order_history_active}"><a href="order-history">Lịch sử mua hàng</a></li>
                </c:if>

                <c:if test="${sessionScope.account.isSeller == 1}">
                    <li class="${product_management_active}"><a href="product-management">Quản lý sản phẩm</a></li>
                    <li class="${order_management_active}"><a href="order-management">Quản lý đơn hàng</a></li>
                </c:if>

               <%--  <c:if test="${sessionScope.account.isAdmin == 1}">
                    <li class="${websitem_active}"><a href="websitem-management">Website management</a></li>
                </c:if> --%>
            </ul>
        </div>
    </nav>
</header>
