<%@include file="WEB-INF/jspf/head-declaration.jspf" %>
<%@include file="WEB-INF/jspf/header-top.jspf" %>


<div class="page-header" style="background: url(img/banner1.jpg);">
    <div class="container">
        <div class="row">         
            <div class="col-md-12">
                <div class="breadcrumb-wrapper">
                    <h2 class="page-title">Registro</h2>
                </div>
            </div>
        </div>
    </div>
</div>

<section id="content">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
                <div class="page-login-form box">
                    <h3>
                        Formulario de Registro
                    </h3>
                    <form role="form" class="login-form">
                        <div class="form-group">
                            <div class="input-icon">
                                <i class="icon fa fa-user"></i>
                                <input type="text" id="sender-email" class="form-control" name="email" placeholder="Usuario">
                            </div>
                        </div> 
                        <div class="form-group">
                            <div class="input-icon">
                                <i class="icon fa fa-envelope"></i>
                                <input type="text" id="sender-email" class="form-control" name="email" placeholder="Correo Electrónico">
                            </div>
                        </div> 
                        <div class="form-group">
                            <div class="input-icon">
                                <i class="icon fa fa-unlock-alt"></i>
                                <input type="password" class="form-control" placeholder="Contraseña">
                            </div>
                        </div>  
                        <div class="form-group">
                            <div class="input-icon">
                                <i class="icon fa fa-unlock-alt"></i>
                                <input type="password" class="form-control" placeholder="Confirmar Contraseña">
                            </div>
                        </div>                 
                        <div class="checkbox">
                            <input type="checkbox" id="remember" name="rememberme" value="forever" style="float: left;">
                            <label for="remember">Acepto los Términos y Condiciones</label>
                        </div>
                        <button class="btn btn-common log-btn">Enviar</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>


<%@include file="WEB-INF/jspf/footer-bottom.jspf" %>
<%@include file="WEB-INF/jspf/footer-declaration.jspf" %>