<%@page import="com.clasificados.controllers.FilterAds"%>
<%@page import="com.clasificados.models.ModelAds"%>
<%@include file="WEB-INF/jspf/head-declaration.jspf" %>
<%@include file="WEB-INF/jspf/header-top.jspf" %>
<%--<%@include file="WEB-INF/jspf/header-sidemenu.jspf" %>--%>
<%@include file="WEB-INF/jspf/header-middle.jspf" %>   

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<div class="main-container">
    <div class="container">
        <div class="row">
            <div class="col-sm-3 page-sidebar">
                <aside>
                    <div class="inner-box">
                        <div class="categories">
                            <div class="widget-title">
                                <i class="fa fa-align-justify"></i>
                                <h4>Todas las Categorías</h4>
                            </div>
                            <div class="categories-list">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-desktop"></i>
                                            Electronica <span class="category-counter">(9)</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <i class="fa fa-wrench"></i>
                                            Servicios <span class="category-counter">(8)</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-github-alt"></i>
                                            Mascotas <span class="category-counter">(2)</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-leaf"></i>
                                            Moda <span class="category-counter">(3)</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-home"></i>
                                            Bienes Raíces <span class="category-counter">(4)</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-black-tie"></i>
                                            Empleos <span class="category-counter">(5)</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-cutlery"></i>
                                            Hoteles &amp; Viajes <span class="category-counter">(5)</span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="inner-box">
                        <div class="widget-title">
                            <h4>Anuncios Premium</h4>
                        </div>
                        <div class="advimg">
                            <ul class="featured-list">
                                <li>
                                    <img alt="" src="/img/featured/img1.jpg">
                                    <div class="hover">
                                        <a href="#"><span>Bs. 49.000</span></a>
                                    </div>
                                </li>
                                <li>
                                    <img alt="" src="/img/featured/img2.jpg">
                                    <div class="hover">
                                        <a href="#"><span>Bs. 49.000</span></a>
                                    </div>
                                </li>
                                <li>
                                    <img alt="" src="/img/featured/img3.jpg">
                                    <div class="hover">
                                        <a href="#"><span>Bs. 49.000</span></a>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="inner-box">
                        <div class="widget-title">
                            <h4>Aviso</h4>
                        </div>
                        <img src="/img/img1.jpg" alt="">
                    </div>
                </aside>
            </div>
            <div class="col-sm-9 page-content">
                <!-- Product filter Start -->
                <div class="product-filter">
                    <div class="grid-list-count">
                        <a class="list switchToGrid" href="#"><i class="fa fa-list"></i></a>
                        <a class="grid switchToList" href="#"><i class="fa fa-th-large"></i></a>
                    </div>
                    <div class="short-name">
                        <span>Organizar Por</span>
                        <form class="name-ordering" method="post">
                            <label>
                                <select name="order" class="orderby">
                                    <option selected="selected" value="menu-order">Organizar Por</option>
                                    <option value="popularity">Precio: Primero mas bajo</option>
                                    <option value="popularity">Precio: Primero mas alto</option>
                                </select>
                            </label>
                        </form>
                    </div>
                    <div class="Show-item">
                        <span>Mostrar Anuncios</span>
                        <form class="woocommerce-ordering" method="post">
                            <label>
                                <select name="order" class="orderby">
                                    <option selected="selected" value="menu-order">49 anuncios</option>
                                    <option value="popularity">Popular</option>
                                    <option value="popularity">Relevancia</option>
                                    <option value="popularity">Mas Nuevo</option>
                                    <option value="popularity">Precio</option>
                                </select>
                            </label>
                        </form>
                    </div>
                </div>
                <!-- Product filter End -->

                <!-- Adds wrapper Start -->
                <div class="adds-wrapper">
                    
                    <%
                        FilterAds fa= new FilterAds(); 
                    %>
                    <%=fa.getFilterAds()%>                    
                    
                    <div class="item-list">
                        <div class="col-sm-2 no-padding photobox">
                            <div class="add-image">
                                <a href="#"><img src="/img/item/img-2.jpg" alt=""></a>
                                <span class="photo-count"><i class="fa fa-camera"></i>2</span>
                            </div>
                        </div>
                        <div class="col-sm-7 add-desc-box">
                            <div class="add-details">
                                <h5 class="add-title"><a href="ads-details.jsp">Sony Xperia dual sim 100% Nuevo</a></h5>
                                <div class="info">
                                    <span class="add-type">B</span>
                                    <span class="date">
                                        <i class="fa fa-clock"></i>
                                        6:22:13 28/02/2017
                                    </span> -
                                    <span class="category">Electronica</span> -
                                    <span class="item-location"><i class="fa fa-map-marker"></i> Caracas </span>
                                </div>
                                <div class="item_desc">
                                    <a href="#">Donec ut quam felis. Cras egestas, quam in plac erat dictum, erat mauris inte rdum est nec.</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 text-right  price-box">
                            <h2 class="item-price"> Bs. 199.000 </h2>
                            <a class="btn btn-danger btn-sm"><i class="fa fa-certificate"></i>
                                <span>Top Anuncio</span></a> 
                            <a class="btn btn-common btn-sm"> <i class="fa fa-eye"></i> <span>215</span> </a> 
                        </div>
                    </div>
                    <div class="item-list">
                        <div class="col-sm-2 no-padding photobox">
                            <div class="add-image">
                                <a href="#"><img src="/img/item/img-3.jpg" alt=""></a>
                                <span class="photo-count"><i class="fa fa-camera"></i>2</span>
                            </div>
                        </div>
                        <div class="col-sm-7 add-desc-box">
                            <div class="add-details">
                                <h5 class="add-title"><a href="ads-details.jsp">Camara Digital Nueva</a></h5>
                                <div class="info">
                                    <span class="add-type">B</span>
                                    <span class="date">
                                        <i class="fa fa-clock"></i>
                                        6:22:13 01/01/2017
                                    </span> -
                                    <span class="category">Electronica</span> -
                                    <span class="item-location"><i class="fa fa-map-marker"></i> Caracas </span>
                                </div>
                                <div class="item_desc">
                                    <a href="#">Donec ut quam felis. Cras egestas, quam in plac erat dictum, erat mauris inte rdum est nec.</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 text-right  price-box">
                            <h2 class="item-price"> Bs. 250.000 </h2>
                            <a class="btn btn-danger btn-sm"><i class="fa fa-certificate"></i>
                                <span>Top Anuncio</span></a> 
                            <a class="btn btn-common btn-sm"> <i class="fa fa-eye"></i> <span>215</span> </a> 
                        </div>
                    </div>
                    <div class="item-list">
                        <div class="col-sm-2 no-padding photobox">
                            <div class="add-image">
                                <a href="#"><img src="/img/item/img-4.jpg" alt=""></a>
                                <span class="photo-count"><i class="fa fa-camera"></i>2</span>
                            </div>
                        </div>
                        <div class="col-sm-7 add-desc-box">
                            <div class="add-details">
                                <h5 class="add-title"><a href="ads-details.jsp">Samsung Galaxy dual sim 100% Nuevo</a></h5>
                                <div class="info">
                                    <span class="add-type">B</span>
                                    <span class="date">
                                        <i class="fa fa-clock"></i>
                                        6:22:13 05/03/2017
                                    </span> -
                                    <span class="category">Electronica</span> -
                                    <span class="item-location"><i class="fa fa-map-marker"></i> London </span>
                                </div>
                                <div class="item_desc">
                                    <a href="#">Donec ut quam felis. Cras egestas, quam in plac erat dictum, erat mauris inte rdum est nec.</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 text-right  price-box">
                            <h2 class="item-price"> Bs. 150.000 </h2>
                            <a class="btn btn-danger btn-sm"><i class="fa fa-certificate"></i>
                                <span>Top Anuncio</span></a> 
                            <a class="btn btn-common btn-sm"> <i class="fa fa-eye"></i> <span>199</span> </a> 
                        </div>
                    </div>
                    <div class="item-list">
                        <div class="col-sm-2 no-padding photobox">
                            <div class="add-image">
                                <a href="#"><img src="/img/item/img-5.jpg" alt=""></a>
                                <span class="photo-count"><i class="fa fa-camera"></i>2</span>
                            </div>
                        </div>
                        <div class="col-sm-7 add-desc-box">
                            <div class="add-details">
                                <h5 class="add-title"><a href="ads-details.jsp">Nueva Macbook Pro</a></h5>
                                <div class="info">
                                    <span class="add-type">B</span>
                                    <span class="date">
                                        <i class="fa fa-clock"></i>
                                        6:22:13 05/02/2017
                                    </span> -
                                    <span class="category">Electronica</span> -
                                    <span class="item-location"><i class="fa fa-map-marker"></i> Caracas </span>
                                </div>
                                <div class="item_desc">
                                    <a href="#">Donec ut quam felis. Cras egestas, quam in plac erat dictum, erat mauris inte rdum est nec.</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 text-right  price-box">
                            <h2 class="item-price"> Bs. 120.000</h2>
                            <a class="btn btn-danger btn-sm"><i class="fa fa-certificate"></i>
                                <span>Top Anuncio</span></a> 
                            <a class="btn btn-common btn-sm"> <i class="fa fa-eye"></i> <span>355</span> </a> 
                        </div>
                    </div>
                    <div class="item-list">
                        <div class="col-sm-2 no-padding photobox">
                            <div class="add-image">
                                <a href="#"><img src="/img/item/img-6.jpg" alt=""></a>
                                <span class="photo-count"><i class="fa fa-camera"></i>2</span>
                            </div>
                        </div>
                        <div class="col-sm-7 add-desc-box">
                            <div class="add-details">
                                <h5 class="add-title"><a href="ads-details.jsp">
                                        Nexus 7 Nueva Edición</a></h5>
                                <div class="info">
                                    <span class="add-type">B</span>
                                    <span class="date">
                                        <i class="fa fa-clock"></i>
                                        6:22:13 02/03/2017
                                    </span> -
                                    <span class="category">Electronica</span> -
                                    <span class="item-location"><i class="fa fa-map-marker"></i> Caracas </span>
                                </div>
                                <div class="item_desc">
                                    <a href="#">Donec ut quam felis. Cras egestas, quam in plac erat dictum, erat mauris inte rdum est nec.</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-3 text-right  price-box">
                            <h2 class="item-price"> Bs. 150.000 </h2>
                            <a class="btn btn-danger btn-sm"><i class="fa fa-certificate"></i>
                                <span>Top Anuncio</span></a> 
                            <a class="btn btn-common btn-sm"> <i class="fa fa-eye"></i> <span>215</span> </a> 
                        </div>
                    </div>
                </div>
                <!-- Adds wrapper End -->

                <!-- Start Pagination -->
                <div class="pagination-bar">
                    <ul class="pagination">
                        <li class="active"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#"> ...</a></li>
                        <li><a class="pagination-btn" href="#">Siguiente »</a></li>
                    </ul>
                </div>
                <!-- End Pagination -->

                <div class="post-promo text-center">
                    <h2> ¿ Tienes algo por vender ? </h2>
                    <h5>Vende gratis tus productos OnLine. Es mas facil de lo que crees !</h5>
                    <a href="post-ads.html" class="btn btn-post btn-danger">Publica tu Anuncio Gratis </a>
                </div>
            </div>
        </div>
    </div>
</div>

<%@include file="WEB-INF/jspf/footer-bottom.jspf" %>
<%@include file="WEB-INF/jspf/footer-declaration.jspf" %>