<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BabyERP.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="es">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <title>Baby ERP</title>
<!-- Isotipo -->
<link rel="icon" href="build/images/favicon-cubes.ico"/>
<!-- Bootstrap -->
<link href="/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet"/>
<!-- Font Awesome -->
<link href="/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet"/>
<!-- Animate.css -->
<link href="../vendors/animate.css/animate.min.css" rel="stylesheet"/>
<!-- Hoja de estilo personalizada -->
<link href="/build/css/custom.css" rel="stylesheet"/>
</head>
<body class="login">
    
    <div>
        <a class="hiddenanchor" id="lostpass"></a>
        <a class="hiddenanchor" id="signin"></a>
        <div class="login_wrapper">
            <div class="animate form login_form">
                <section class="login_content">
                    <form action="pages/index.aspx" method="post">
                        <h1>Ingresar</h1>
                        <div>
                            <input type="text" class="form-control" maxlength="8" placeholder="Usuario" required="" pattern=".{4,}" title="El usuario debe tener mínimo 4 caracteres" />
                        </div>
                        <div>
                            <input type="password" class="form-control" maxlength="8" placeholder="Contraseña" required="" pattern=".{4,}" title="La contraseña debe tener mínimo 4 caracteres" />
                        </div>
                         <div>
                            <%--<a class="btn btn-default submit" href="#">Ingresar</a>--%>
                             <input type="submit" class="btn btn-default submit"  value="Ingresar"/>
                            
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">
                            <p class="change_link">Olvidó su usuario o contraseña?
                                <a href="#lostpass" class=""> Recuperar </a>
                            </p>
                            <div class="clearfix"></div>
                            <br />
                            <div>
                                <h1><i class="fa fa-cubes"></i> Baby-ERP</h1>
                                <p>©2017 Todos los derechos reservados. Baby-ERP es propiedad del modulo taller de diseño de sistemas AIEP. 
                                    <a class="" href="http://www.aiep.cl">Privacidad y terminos</a></p>
                            </div>
                        </div>
                    </form>
                </section>
            </div>
            <div id="register" class="animate form lost_form">
                <section class="login_content">
                    <form>
                        <h1>Recuperar cuenta</h1>
                        <div>
                            <input type="email" class="form-control" placeholder="Email" required="" maxlength="100" />
                        </div>
                        <div>
                        <%--    <a class="btn btn-default submit" href="#">Enviar</a>--%>
                            <input type="submit" class="btn btn-default submit"  value="Enviar"/>
                        </div>
                        <div class="clearfix"></div>
                        <div class="separator">
                            <p class="change_link">Ya es usuario ?
                              <a href="#signin" class=""> Ingresar </a>
                            </p>

                        <div class="clearfix"></div>
                        <br />

                        <div>
                            <h1><i class="fa fa-cubes"></i> Baby-ERP</h1>
                            <p>©2017 Todos los derechos reservados. Baby-ERP es propiedad del modulo taller de diseño de sistemas AIEP. 
                               <a class="" href="http://www.aiep.cl">Privacidad y terminos</a></p>
                        </div>
                      </div>
                    </form>

                </section>
            </div>
        </div>
    </div>
<%--<!-- jQuery -->
<script src="/vendors/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Parsley -->
<script src="/vendors/parsleyjs/dist/parsley.min.js"></script>--%>
</body>
</html>
