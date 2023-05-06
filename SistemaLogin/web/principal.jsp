<%@ include file="referencias.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <%@ include file="estilos.jsp" %>
        <title>Professores</title>
    </head>
    <body>
        <%@ include file="testaSessao.jsp" %>
        <%@ include file="menu.jsp" %>

        <div class="container text-center">
            <div class="row align-items-center">
                <div class="col">
                    <br>
                    <div class="row">
                        <div class="col-md-4" style="text-align: left">
                            <button type="button" class="btn btn-outline-success btn-lg" data-bs-toggle="modal" data-bs-target="#modalCad"><i class="bi bi-bookmark-plus"></i>  Cadastro de Professores</button>                       
                        </div>
                        <div class="col-md-4 offset-md-4" style="text-align: right">.col-md-4 .offset-md-4</div>
                    </div>
                    <br>
                    <%                        Statement st = null;
                        ResultSet rs = null;
                        try {

                            st = new Conexao().conectar().createStatement();

                            rs = st.executeQuery("Select * from tbprofessor where status=1");

                            out.println("<table border=1  class='table table-bordered'>");
                            out.println("<thead><tr>");
                            out.println("<th>Código</th>");
                            out.println("<th>Nome</th>");
                            out.println("<th>E-mail</th></tr></thead>");

                            while (rs.next()) {
                                out.println("<tr><td>" + rs.getString(1) + "</td>");
                                out.println("<td>" + rs.getString(2) + "</td>");
                                out.println("<td>" + rs.getString(3) + "</td></tr>");
                            }
                            out.println("</table>");
                        } catch (Exception e) {
                            out.println(e);
                        }

                    %>




                    <!-- Modal -->
                    <!--div class="modal fade" id="modalCad" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Cadastro de Professores</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form action="processaCadProfessor.jsp" method="post" id="cadastro">
                                        <div class="form-group">
                                            <label>Professor</label><br>
                                            <input type="text" name="txtNome"><br>
                                            <label>email</label><br>
                                            <input type="text" name="txtEmail"><br>
                                            <label>status</label><br>
                                            <input type="text" name="txtStatus"><br>
                                            <br><br>
                                            <input type="submit" name="btnSalvar" class="btn btn-primary">
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                </div>
                            </div>
                        </div>
                    </div -->











                    <!-- Modal -->
                    <div class="modal fade" id="modalCad" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Cadastrar Professor</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <form action="processaCadProfessor.jsp" method="post" id="cadastro">
                                    <div class="modal-body">
                                        <div class="form-group">
                                            <div class="input-group input-group-lg">
                                                <span class="input-group-text" id="inputGroup-sizing-lg"><i class="bi bi-person-fill"></i></span>
                                                <input type="text" name="txtNome" placeholder="DIgite o nome do Professor" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" required>
                                            </div><br>
                                            <div class="input-group input-group-lg">
                                                <span class="input-group-text" id="inputGroup-sizing-lg"><i class="bi bi-envelope"></i></span>
                                                <input type="email" name="txtEmail" placeholder="Digite o e-mail" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg" required>
                                            </div>
                                            <br>

                                            <div class="input-group input-group-lg">
                                                <span class="input-group-text"><i class="bi bi-check-lg"></i></span>
                                                <select name="txtStatus" name="txtEmail" placeholder="Digite o e-mail" class="form-select" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
                                                    <option value="1" selected>STATUS ATIVO</option>
                                                    <option value="2">STATUS DESATIVADO</option>
                                                </select>
                                            </div>

                                        </div>

                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-danger" data-bs-dismiss="modal"><i class="bi bi-x-lg"></i> Cancelar</button>
                                        <button type="submit" name="btnSalvar" class="btn btn-success"><i class="bi bi-bookmark-plus"></i> Cadastrar Professor</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>







                </div>
            </div>
        </div>
    </body>
</html>