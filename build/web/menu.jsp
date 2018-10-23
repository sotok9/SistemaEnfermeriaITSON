<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>SEITSON</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="jquery1.4/jquery.mobile-1.4.5.css" />
        
        <script src="jquery1.4/jquery-1.11.1.min.js"></script>
        <script src="jquery1.4/jquery.mobile-1.4.5.min.js"></script>
        <script src="jquery1.4/demos/js/jquery.js"></script>
	<script src="jquery1.4/demos/js/jquery.mobile-1.4.5.min.js"></script>
        
        <style>
            .contendorDivFrame {
                position: relative;
                padding-bottom: 70%;
                height: 0;
                overflow: hidden;
            }
            
            .contendorDivFrame iframe {
                position: absolute;
                top:0;
                left: 0;
                width: 100%;
                height: 100%;
            }
        </style>
        
        <%
        HttpSession sesion = request.getSession(false);
        String sesionmenu = (String)sesion.getAttribute("kino");
        
        if(sesionmenu == null){
        %>           
        
        <script >
         location.href="./index.html";
        </script>
        
        <%
        }

        %>
        
    </head>
    <body>
        <script>
            function fadeOut(duration){
            var iframe = document.getElementById('Marco');
            var step = 10 / duration, opacity = 0;
   
            function next() {
              if(opacity >= 1){
                 return;
              }
              
            iframe.style.opacity=(opacity+=step);
            setTimeout(next, 10);
            }
           
            next();
           }
           
           function Salir(){
               
           }
        </script>
        
        <div data-role="page" id="pageone">
            <div data-role="panel" id="myPanel" data-display="push" data-theme="b"> 
              
                <div class="nav-glyphish-example">
                 <ul data-role="listview">
                    <li data-role="list-divider">Registro</li>
                    <li data-icon="plus" class="ui-shadow-icon ui-btn ui-shadow ui-corner-all ui-btn-b"><a href="./Modulo_Medicamentos/medicamentos.html" onclick="fadeOut(500)" target="Marco">Medicamentos</a></li> 
                    <li data-icon="bars" class="ui-shadow-icon ui-btn ui-shadow ui-corner-all ui-btn-b"><a>Lotes</a></li>
                    <li data-icon="user" class="ui-shadow-icon ui-btn ui-shadow ui-corner-all ui-btn-b"><a href="./Modulo_Personal/personal.html" onclick="fadeOut(500)" target="Marco">Personal</a></li> 
                     
                    <li data-role="list-divider">Reportes</li>
                    <li data-icon="heart" class="ui-shadow-icon ui-btn ui-shadow ui-corner-all ui-btn-b"><a>Consultas Medicas</a></li>
                    <li data-icon="plus" class="ui-shadow-icon ui-btn ui-shadow ui-corner-all ui-btn-b"><a>Medicamentos</a></li>
                    <li data-icon="user" class="ui-shadow-icon ui-btn ui-shadow ui-corner-all ui-btn-b"><a>Personal</a></li>
                 </ul> 
                </div>
                
            </div> 

            <div data-role="main" class="ui-content">
                <div data-role="header" style="height: 55px; background:#2874A6" class="ui-corner-all">
                    <a href="#myPanel" data-role="button" style="background:#1A5276; height: 20px; font-family: verdana; font-size: 16px; color: white; font-weight: normal" class="ui-btn-left" data-icon="home" data-iconpos="left">Menú</a>
                    
                    <div align="center" style="color:#fff; font-family: verdana; font-size: 16px; font-weight: normal; margin-top: 15px">
                    <a style="text-decoration: none; color: #fff" href="./principal.html" onclick="fadeOut(500)" target="Marco">Sistema de Enfermería</a>
                    </div>
                    
                    <a href="./jsp/salida.jsp" data-role="button" style="background:#1A5276; height: 20px; font-family: verdana; font-size: 16px; color: white; font-weight: normal" class="ui-btn-right" data-icon="power" data-iconpos="left">Salir</a>
                </div>

                <div class="contendorDivFrame">
                    <iframe name="Marco" src="principal.html" id="Marco" frameborder="0">
                        
                    </iframe>
                </div>
            </div>

        </div>
    </body>
</html>