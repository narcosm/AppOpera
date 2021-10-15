<%-- 
    Document   : index
    Created on : 25/04/2021, 05:55:41 PM
    Author     : soporte
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
              crossorigin="anonymous">
        <script type="text/JavaScript" src="https://code.jquery.com/jquery-3.5.0.js">

        </script>
        <script>
            $(document).ready(function () {
                $('#btnSubmit').click(function (event) {
                    var num1Var = $('#num1').val();
                    var num2Var = $('#num2').val();
                    var operaVar = $('#operacion').val();
                    // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
                    $.post('ServletOpera', {
                        num1: num1Var,
                        num2: num2Var,
                        operacion: operaVar
                    }, function (responseText) {
                        $('#resultado').html(responseText);
                    });
                });
            });
        </script>
    </head>
    <body >
        <div class="container border">

            <header>

            </header>
            <nav></nav>

            <div class="col-auto p-5">
                <div class="card-body bg-dark text-white">

                    <center>
                        <h2>OPERACIONES</h2>
                    </center>

                    <form  id="form1" >
                        <fieldset>
                            <div class="form-group bg-dark text-white">
                                <label  for="num1">Digite Primer Número:</label>
                                <input class="form-control" type="number" id="num1" name="num1" required>
                            </div>
                            <div class="form-group bg-dark text-white">
                                <label  form="num2">Digite segundo Número:</label>
                                <input class="form-control" type="number" id="num2" name="num2" required>
                            </div>
                            <div class="form-group bg-dark text-white">
                                <label  for="operacion">Digite la Operación (+, -, *, /):</label>
                                <input class="form-control" type="text" id="operacion" name="operacion" required>
                            </div>
                            <input class="btn btn-primary" type="button" id="btnSubmit" value="Verificar">
                            <div id="resultado" class="bg-dark text-white">
                                <label  for='res' >Resultado:</label>
                                <input class="form-control" type="text" id="res" name="res">

                            </div>
                        </fieldset>
                    </form>
                    <aside></aside>
                </div>

            </div>
        </div>
    <footer></footer>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
