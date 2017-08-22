<%@ Page Title="" Language="C#" MasterPageFile="~/pages/BERP.Master" AutoEventWireup="true" CodeBehind="perfiles.aspx.cs" Inherits="BabyERP.perfiles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-title">
    <div class="title_left">
        <h3>Mantenedor de perfiles</h3>
    </div> 
</div>
<div class="clearfix"></div>  
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Lista de perfiles del sistema</h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li>
                        <a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li>
                        <a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <button type="button" class="btn btn-app pull-right" id="btnNuevoPerfil"><i class="fa fa-big fa-plus "></i>Nuevo</button>
                 <table class="table table-hover table-bordered" id="tbPerfiles">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Perfil</th>
                            <th>Descripción</th>
                            <th>Editar</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Vendedor</td>
                            <td>Perfil para que los usuarios puedan vender</td>
                            <td><a id="demoEdit"  href="#" data-toggle="tooltip" title="Editar"><i class="fa fa-pencil"></i></a></td>
                            <td><a id="demoDelete" href="#" data-toggle="tooltip" title="Eliminar"><i  class="fa fa-big fa-trash-o "></i></a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Jefe de ventas</td>
                            <td>Perfil que administra el modulo de ventas</td>
                            <td><a href="#" data-toggle="tooltip" title="Editar"><i class="fa fa-big fa-pencil"></i></a></td>
                            <td><a href="#" data-toggle="tooltip" title="Eliminar"><i class="fa fa-big fa-trash-o "></i></a></td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Administrativo de compras</td>
                            <td>Perfil para que los usuarios puedan comprar</td>
                            <td><a  href="#" data-toggle="tooltip" title="Editar"><i class="fa fa-big fa-pencil"></i></a></td>
                            <td><a href="#" data-toggle="tooltip" title="Eliminar"><i class="fa fa-big fa-trash-o "></i></a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Modal nuevo -->
    <div class="modal fade" id="modalNewPerfil">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5 class="modal-title">Nuevo Perfil</h5>
                </div>
                <form id="frmNewPerfil" data-parsley-validate class="form-horizontal form-label-left">
                    <div class="modal-body">
                    
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nombrePerfil">
                                    Nombre del perfil <span class="required">*</span>
                                </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="nombrePerfil" required="required" class="form-control col-md-7 col-xs-12"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nombrePerfil">
                                    Descripción <span class="required">*</span>
                                </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <textarea class="form-control" rows="3" id="descPerfil" required="required"></textarea>
                                    <%--<input type="text" id="descPerfil" required="required" class="form-control col-md-7 col-xs-12"/>--%>
                                </div>
                            </div>
                    </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-dark">Crear</button>
                    <button type="button" class="btn pull-left" data-dismiss="modal" aria-label="Close">Cancelar</button>
                </div>
                </form>
            </div>
        </div>
    </div>
<!-- /Modal nuevo -->
<!-- Modal Edit -->
    <div class="modal fade" id="modalEditPerfil">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5 class="modal-title">Modificar Perfil</h5>
                </div>
                <form id="frmEditPerfil" data-parsley-validate class="form-horizontal form-label-left">
                    <div class="modal-body">
                    
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nombrePerfil">
                                    Nombre del perfil <span class="required">*</span>
                                </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="nombrePerfilE" required="required" class="form-control col-md-7 col-xs-12" value="Vendedor"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nombrePerfil">
                                    Descripción <span class="required">*</span>
                                </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <textarea class="form-control" rows="3" id="descPerfilE" required="required">Perfil para que los usuarios puedan vender</textarea>
                                </div>
                            </div>
                        <table class="table table-hover" id="tbPrivilegios">
                            <thead>
                                <tr>
                                    <th>Modulo</th>
                                    <th>Lectura</th>
                                    <th>Creacion</th>
                                    <th>Modificación</th>
                                    <th>Eliminación</th>
                                    <th>Gestión</th>
                                    <th>Reportes</th>
                                </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Ventas</td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                            </tr>
                            <tr>
                                <td>Inventario</td>
                               <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                            </tr>
                            <tr>
                                <td>Compras</td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                                <td><input type="checkbox" class="js-switch"/></td>
                            </tr>
                        </tbody>
                    </table>
                    </div>
                    
                <div class="modal-footer">
                    <button type="submit" class="btn btn-dark">Actualizar</button>
                    <button type="button" class="btn pull-left" data-dismiss="modal" aria-label="Close">Cancelar</button>
                </div>
                </form>
            </div>
        </div>
    </div>
<!-- /Modal nuevo -->
</asp:Content>

