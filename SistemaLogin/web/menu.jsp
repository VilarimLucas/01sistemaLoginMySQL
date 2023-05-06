<%-- 
    Document   : menu
    Created on : 29 de abr. de 2023, 15:53:18
    Author     : vilar
--%>

<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">

        <a class="navbar-brand" href="#">Professores</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="principal.jsp">Home</a>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Gerenciar Professores
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="cadProfessor.jsp">Cadastro do Professor</a></li>
                        <li><a class="dropdown-item" href="consProfessor.jsp">Consulta de Professor</a></li>
                        <li><a class="dropdown-item" href="buscaProfessor.jsp">Busca de Professor</a></li>
                        <li><a class="dropdown-item" href="listarProfessor.jsp">Listagem de Professores</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="excluirProfessor.jsp">Excluir Professor</a></li>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Gerenciar Coordenadores
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="cadProfessor.jsp">Cadastro de Coordenador(a)</a></li>
                        <li><a class="dropdown-item" href="consProfessor.jsp">Consulta de Coordenador(a)</a></li>
                        <li><a class="dropdown-item" href="buscaProfessor.jsp">Busca de Coordenador(a)</a></li>
                        <li><a class="dropdown-item" href="listarProfessor.jsp">Listagem de Coordenadores</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="excluirProfessor.jsp">Excluir Coordenador(a)</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Cursos</a>
                </li><!-- comment -->
                <li class="nav-item">
                    <a class="nav-link" href="#">Formações</a>
                </li>
                <!-- li class="nav-item">
                  <a class="nav-link disabled">Disabled</a>
                </li -->
            </ul>
        </div>

        <div class="d-flex">
            <!--form role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form-->
            <a class="dropdown-item" href="sair.jsp">SAIR</a>
        </div>


    </div>
</div>
</nav>




