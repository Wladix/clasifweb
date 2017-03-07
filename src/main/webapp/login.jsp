<%@include file="WEB-INF/jspf/head-declaration.jspf" %>
<%@include file="WEB-INF/jspf/header-top.jspf" %>



<!-- Inicio Encabezado -->
<div class="page-header" style="background: url(img/banner1.jpg);">
    <div class="container">
        <div class="row">         
            <div class="col-md-12">
                <div class="breadcrumb-wrapper">
                    <h2 class="page-title">Ingreso de Cuenta</h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Fin de Encabezado --> 

<!-- Inicio Sección de Inicio de Sesión --> 
<section id="content">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-4 col-md-4 col-md-offset-4">
                <div class="page-login-form box">
                    <h3>
                        Ingresar a Mi cuenta
                    </h3>
                    <form role="form" class="login-form">
                        <div class="form-group">
                            <div class="input-icon">
                                <i class="icon fa fa-user"></i>
                                <input type="text" id="sender-email" class="form-control" name="user" placeholder="Usuario">
                            </div>
                        </div> 
                        <div class="form-group">
                            <div class="input-icon">
                                <i class="icon fa fa-unlock-alt"></i>
                                <input type="password" class="form-control" placeholder="Contraseña">
                            </div>
                        </div>                  
                        <div class="checkbox">
                            <input type="checkbox" id="remember" name="rememberme" value="forever" style="float: left;">
                            <label for="remember">Recordar</label>
                        </div>
                        <button class="btn btn-common log-btn">Enviar</button>
                    </form>
                    <ul class="form-links">
                        <li class="pull-left"><a href="signup.jsp">Regístrate</a></li>
                        <li class="pull-right"><a href="forgot-password.jsp">Recuperar Contraseña</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Fin Sección de Inicio de Sesión -->


<%@include file="WEB-INF/jspf/footer-bottom.jspf" %>
<%@include file="WEB-INF/jspf/footer-declaration.jspf" %>