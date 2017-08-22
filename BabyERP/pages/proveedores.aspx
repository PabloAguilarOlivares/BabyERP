<%@ Page Title="" Language="C#" MasterPageFile="~/pages/BERP.Master" AutoEventWireup="true" CodeBehind="proveedores.aspx.cs" Inherits="BabyERP.pages.proveedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="ContentScriptPage" ContentPlaceHolderID="ContentScriptPages" Runat="Server">
    <!-- Scripts de paginas -->
    <script src="../build/js/proveedores.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-title">
    <div class="title_left">
        <h3>Mantenedor de proveedores</h3>
    </div> 
</div>
<div class="clearfix"></div>  
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Lista de proveedores del sistema</h2>
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
                <button type="button" class="btn btn-app pull-right" id="btnNuevoProveedor"><i class="fa fa-big fa-plus "></i>Nuevo</button>
                 <table class="table table-hover table-bordered" id="tbProveedores">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Rut</th>
                            <th>Nombre</th>
                            <th>Dirección</th>
                            <th>Editar</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>17665-9</td>
                            <td>Jose Luis P.</td>
                            <td>Pasaje ... Puente Alto</td>
                            <td><a class="btnEditProveedor"  href="#" data-toggle="tooltip" title="Editar"><i class="fa fa-pencil"></i></a></td>
                            <td><a class="btnDeleteProveedor" href="#" data-toggle="tooltip" title="Eliminar"><i  class="fa fa-big fa-trash-o "></i></a></td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>17665-9</td>
                            <td>Jona Hr.</td>
                            <td>Pasaje ... Puente Alto</td>
                            <td><a class="btnEditProveedor"  href="#" data-toggle="tooltip" title="Editar"><i class="fa fa-pencil"></i></a></td>
                            <td><a class="btnDeleteProveedor" href="#" data-toggle="tooltip" title="Eliminar"><i  class="fa fa-big fa-trash-o "></i></a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- Modal nuevo -->
    <div class="modal fade" id="modalNewProveedor">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5 class="modal-title">Nuevo Proveedor</h5>
                </div>
                <form id="frmNewProveedor" data-parsley-validate class="form-horizontal form-label-left">
                    <div class="modal-body">                    
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="rutProveedor">
                                    Rut del proveedor <span class="required">*</span>
                                </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="rutProveedor" required="required" class="form-control col-md-7 col-xs-12"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nombreProveedor">
                                    Nombre del proveedor <span class="required">*</span>
                                </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="nombreProveedor" required="required" class="form-control col-md-7 col-xs-12"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="direccionProveedor">
                                    Direccion del proveedor <span class="required">*</span>
                                </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="direccionProveedor" required="required" class="form-control col-md-7 col-xs-12"/>
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
    <div class="modal fade" id="modalEditProveedor">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h5 class="modal-title">Modificar Proveedor</h5>
                </div>
                <form id="frmEditProveedor" data-parsley-validate class="form-horizontal form-label-left">
                    <div class="modal-body">
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="rutProveedorE">
                                    Rut del proveedor <span class="required">*</span>
                                </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="rutProveedorE" required="required" class="form-control col-md-7 col-xs-12"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="nombreProveedorE">
                                    Nombre del proveedor <span class="required">*</span>
                                </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="nombreProveedorE" required="required" class="form-control col-md-7 col-xs-12"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="direccionProveedorE">
                                    Direccion del proveedor <span class="required">*</span>
                                </label>
                                <div class="col-md-9 col-sm-9 col-xs-12">
                                    <input type="text" id="direccionProveedorE" required="required" class="form-control col-md-7 col-xs-12"/>
                                </div>
                            </div>
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

