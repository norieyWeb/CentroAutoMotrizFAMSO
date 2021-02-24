<!doctype html>
<html>
<head>
<meta http-equiv="Expires" content="0">
<meta http-equiv="Last-Modified" content="0">
<meta http-equiv="Cache-Control" content="no-cache, mustrevalidate">
<meta http-equiv="Pragma" content="no-cache">
<link rel="shortcut icon" href="faviconCentroAutomotriz" />
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Centro Automotriz |Reservas| FAMSO</title>
<link rel="shortcut icon" href="faviconCentroAutomotriz.ico" type="image/x-icon">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="estilos.css">
<link rel="stylesheet" href="plugins/sweetalert2/sweetalert2.min.css">        

<link rel="stylesheet" type="text/css" href="fuentes/iconic/css/material-design-iconic-font.min.css">

</head>

<body class="fondoBlancoEspecial">

<div class="container">
        <div class="margen-abajo">
            <ul class="nav nav-tabs">
            <li class="nav-item">
                <a class="nav-link" href="index.php">Inicio</a>
            </li>
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="#">Reservar</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="Equipo.php">Equipo</a>
            </li>
            </ul>  
        </div> 
    </div> 

    <!-- ############################################################## -->

    <!-- ############################################################## -->
    <div class="container col-md-8 margen-arriba" id="puntoDeUbicacionFormulario">

        <form class="flexibleCol" id="primerFormulario">
            <div class="tituloYLogo flexSpaceBetween">
                <h2>Datos De Usuario</h2>
                <img src="logoCentroAutomotriz.png" class="anchoLogoYAlto" alt="logoCentroAutomotriz" srcset="">        
            </div>
            <div class="grupoNombreApellido flexSpaceAround">

                <div class="form-group "> <!-- Name -->
                    <label for="full_name" class="labelNombre">Nombre:</label>
                    <input type="text" class="form-control" id="full_name" name="nombre" placeholder="John Deer">
                </div>    

                <div class="form-group "> <!-- Street 1 -->
                    <label for="labelApellidos" class="control-label">Apellidos:</label>
                    <input type="text" class="form-control" id="labelApellidos" name="apellidos" placeholder="Steve Walker">
                </div> 

            </div>                   
            <!-- ------------------------------------------------------------------------ -->

            <div class="grupoTipoDocDocumento flexSpaceAround">

                <div class="form-group "> <!-- Tipo De Documento -->
                    <label for="labelTipoDocumento" class="control-label">tipo documento</label>
                    <select class="form-control dropdown" id="labelTipoDocumento">
                        <option value="AR">Seleccionar</option>
                        <option value="AL">Cc</option>
                        <option value="AK">Ce</option>
                        <option value="AZ">Nit</option>
                        <option value="AR">Root</option>
                        <option value="AR">otro</option>
                    </select>                    
                </div>
                        
                <div class="form-group "> <!-- Documento-->
                    <label for="labelDocumento" class="label-Documento">Documento</label>
                    <input type="text" class="form-control" id="labelDocumento" name="documento" placeholder="1254552454">
                </div> 

            </div>
            <!-- ------------------------------------------------------------------------ -->  
            <div class="grupocorreoTelefono flexSpaceAround">

                <div class="form-group "> <!-- Name -->
                    <label for="labelCorreo" class="label-Correo">Correo:</label>
                    <input type="text" class="form-control" id="labelCorreo" name="correo" placeholder="John Deer">
                </div>    

                <div class="form-group "> <!-- Street 1 -->
                    <label for="labelTelefono" class="label-Telefono">Telefono:</label>
                    <input type="text" class="form-control" id="labelTelefono" name="telefono" placeholder="Steve Walker">
                </div> 

            </div>                   
            <!-- ------------------------------------------------------------------------ -->         
            <div class="form-group flexCenterCenter"> Continuar -->
                <button type="button" id="primerBotonControl" class="btn btn-primary">Go</button>
            </div>

        </form>
        <hr>
        <!-- #####################2###################### -->
        <!-- #####################2###################### -->
        <form class="flexibleCol margen-arriba none" id="segundoFormulario">

            <div class="tituloYLogo flexSpaceBetween">
                <h2>Datos Del Vehiculo</h2>
                <img src="logoCentroAutomotriz.png" class="anchoLogoYAlto" alt="logoCentroAutomotriz" srcset="">        
            </div>

            <div class="grupoNombreApellido flexSpaceAround margen-arriba">

                <div class="form-group "> <!-- Name -->
                    <label for="labelMarca" class="label-Marca">Marca:</label>
                    <input type="text" class="form-control" id="labelMarca" name="marca" placeholder="John Deer">
                </div>    

                <div class="form-group "> <!-- Street 1 -->
                    <label for="labelModelo" class="label-Modelo">Modelo:</label>
                    <input type="text" class="form-control" id="labelModelo" name="modelo" placeholder="Steve Walker">
                </div> 

            </div>                   
            <!-- ------------------------------------------------------------------------ -->
            <div class="grupocorreoTelefono flexSpaceAround">

                <div class="form-group "> <!-- Name -->
                    <label for="labelColor" class="label-Color">Color:</label>
                    <input type="text" class="form-control" id="labelColor" name="color" placeholder="Rojo">
                </div>    

                <div class="form-group "> <!-- Street 1 -->
                    <label for="labelMatricula" class="label-Matricula">Matricula:</label>
                    <input type="text" class="form-control" id="labelMatricula" name="matricula" placeholder="Steve Walker">
                </div> 

            </div> 
            <!-- ------------------------------------------------------------------------ -->
            <div class="grupoTipoDocDocumento flexSpaceAround margen-arriba" id="">

                <div class="form-group "> <!-- Tipo De Servicio -->
                    <label for="labelTipoDeServicio" class="label-TipoDeServicio">tipo de servicio</label>
                    <select class="form-control dropdown" id="labelTipoDeServicio">
                        <option value="AR">Seleccionar</option>
                        <option value="AL">Diagnostico</option>
                        <option value="AK">Latoneria y Pintura</option>
                        <option value="AZ">Montallantas</option>
                        <option value="AZ">Revisión Técnico Mecánica</option>
                    </select>                    
                </div>
                        
                <div class="form-group "> <!-- Tipo De Documento -->
                    <label for="labelTipoFecha" class="label-TipoFecha"> Fecha Reserva</label>
                    <input type="text" class="form-control" id="labelTipoFecha" name="fechaReserva" placeholder="John Deer">
           
                </div>
                
                <div class="form-group "> <!-- Tipo De Documento -->
                    <label for="labelTipoHorario" class="label-Horario">Horario</label>
                    <select class="form-control dropdown" id="labelTipoHorario">
                        <option value="AR">Seleccionar</option>
                        <option value="AL">8:00 am - 12:00 am</option>
                        <option value="AK">1:00 pm - 5:00 pm</option>
                    </select>                    
                </div>                

            </div>              
            <!-- ------------------------------------------------------------------------ -->         
            <div class="form-group flexSpaceBetweenCenter">

                <div>
                    <button type="button" id="segundoBotonControl" class="btn btn-danger">Back</button>
                    <-- Regresar 
                    
                </div>
               
                <div>
                    Continuar -->
                    <button type="button" id="tercerBotonControl" class="btn btn-primary">Go</button>
                </div> 
            

            </div>
        </form>
        <hr>
        <!-- #####################3###################### -->
        <!-- #####################3###################### -->
        <form class="flexibleCol none" id="tercerFormulario">

            <div class="tituloYLogo flexSpaceBetween">
                <h2>Recibo de reserva</h2>
                <div>
                    Recibo Numero:
                    <input type="text" name="numeroTurno" placeholder="02154">
                </div>
                <img src="logoCentroAutomotriz.png" class="anchoLogoYAlto" alt="logoCentroAutomotriz" srcset="">        
            </div>
        
            <div class="grupoFechaHorarioServicio flexSpaceBetween doble-Margen-arriba">

                <div class="tamaño-Fuente tamaño-contInput">
                    Fecha:
                    <input type="text" name="muestraFecha" placeholder="20/30/00">
                </div>    

                <div class="tamaño-Fuente tamaño-contInput">
                    Horario:
                    <input type="text" name="muestraHorario" placeholder="8:00 am - 12:00 am">
                </div> 

                <div class="tamaño-Fuente tamaño-contInput">
                    Servicio:
                    <input type="text" name="muestraServicio" placeholder="latoneria">
                </div> 

            </div>                   
            <!-- ------------------------------------------------------------------------ -->

            <div class="grupoIdUsuarioDocumentacio flexSpaceBetweenCenter doble-Margen-arriba">

                <div class="tamaño-Fuente tamaño-contInput">
                    Id:
                    <input type="text" name="muestraId" placeholder="00325">
                </div>    

                <div class="tamaño-Fuente tamaño-contInput">
                    Usuario:
                    <input type="text" name="muestraUsuario" placeholder="Jhon Doe Zuckernerd Bye">
                </div> 

                <div class="tamaño-Fuente tamaño-contInput">
                    Documentacion:
                    <input type="text" name="muestraDocumentacion" placeholder="CC 12455456">
                </div> 

            </div>             
            <!-- ------------------------------------------------------------------------ -->

            <div class="grupoCorreoTelefono flexSpaceBetweenCenter doble-Margen-arriba">

                <div class="tamaño-Fuente tamaño-contInput">
                    Correo:
                    <input type="text" name="muestraCorreo" placeholder="jhon.doe@p.com">
                </div>    

                <div class="tamaño-Fuente tamaño-contInput">
                    Telefono:
                    <input type="text" name="muestraTelefono" placeholder="Jhon Doe Zuckernerd Bye">
                </div> 
            </div>             
            <!-- ------------------------------------------------------------------------ -->

            <div class="grupoCodigoMarcaModeloPlacaMatricula flexSpaceBetweenCenter doble-Margen-arriba">

                <div class="tamaño-Fuente tamaño-contInput">
                    codigo:
                    <input type="text" name="muestraId" placeholder="4586">
                </div>    

                <div class="tamaño-Fuente tamaño-contInput">
                    Vehiculo:
                    <input type="text" name="muestraUsuario" placeholder="Hyundai 3006">
                </div> 

                <div class="tamaño-Fuente tamaño-contInput">
                    Detalles:
                    <input type="text" name="muestraDocumentacion" placeholder="XDS-546 245465">
                </div> 

            </div>             
            <!-- ------------------------------------------------------------------------ -->          
            <div class="form-group flexSpaceBetweenCenter doble-Margen-arriba">
                <div>
                    <button type="button" id="cuartoBotonControl" class="btn btn-danger">Back</button>
                    <-- Regresar 
                    
                </div>

                <div>
                    --> 
                    <button type="submit" class="btn btn-success" id="quintoBotonControl">Guardar</button>
                    <--
                </div>

                <div>
                    Salir -->
                    <button type="button" id="sextoBotonControl" class="btn btn-primary">Off</button>
                </div> 

            </div>
            

        </form>
    </div>
</div> 
</body>     
<script src="jquery/jquery-3.3.1.min.js"></script>    
<script src="bootstrap/js/bootstrap.min.js"></script>    
<script src="popper/popper.min.js"></script>    

<script src="plugins/sweetalert2/sweetalert2.all.min.js"></script>    
<!-- <script src="codigo.js"></script> -->
<script src="registrosForms.js"></script>
    

</html>