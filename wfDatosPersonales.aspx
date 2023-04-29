<%@ Page Title="" Language="C#" MasterPageFile="~/mpVentas.Master" AutoEventWireup="true" CodeBehind="wfDatosPersonales.aspx.cs" Inherits="wfVentas.wfDatosPersonales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Content wrapper -->
    <div class="content-wrapper">
        <!-- Content -->

        <div class="container-xxl flex-grow-1 container-p-y">

            <div class="row">
                <div class="col-md-12">

                    <div class="card mb-4">
                        <h5 class="card-header">Datos Personales</h5>
                        <!-- Account -->
                        <div class="card-body">
                            <div class="d-flex align-items-start align-items-sm-center gap-4">
                                <img
                                    src="../assets/img/avatars/1.png"
                                    alt="user-avatar"
                                    class="d-block rounded"
                                    height="100"
                                    width="100"
                                    id="uploadedAvatar" />

                            </div>
                        </div>
                        <hr class="my-0" />
                        <div class="card-body">
                            <form id="formAccountSettings" method="POST" onsubmit="return false">
                                <div class="row">
                                    <%--NOMBRE--%>
                                    <div class="mb-3 col-md-6">
                                        <label for="firstName" class="form-label">NOMBRE</label>
                                        <asp:TextBox ID="txtNombre" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                    </div>

                                    <%--CORREO--%>
                                    <div class="mb-3 col-md-6">
                                        <label for="lastName" class="form-label">E-MAIL</label>
                                        <asp:TextBox ID="txtEmail" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                    </div>

                                    <%--TELEFONO--%>
                                    <div class="mb-3 col-md-6">
                                        <label class="form-label" for="phoneNumber">TELEFONO</label>
                                        <asp:TextBox ID="txtTelefono" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                    </div>

                                    <%--DIRECCION--%>
                                    <div class="mb-3 col-md-6">
                                        <label for="address" class="form-label">Direccion</label>
                                        <asp:TextBox ID="txtDireccion" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                    </div>

                                    <%--TIPO DOCUMENTO--%>
                                    <div class="mb-3 col-md-6">
                                        <label for="email" class="form-label">TIPO DE DOCUMENTO </label>
                                        <asp:TextBox ID="txtTipoDocumento" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                    </div>

                                    <%--NRO DOCUMENTO--%>
                                    <div class="mb-3 col-md-6">
                                        <label for="txtNumDocumento" class="form-label">NUMERO DE DOCUMENTO</label>
                                        <asp:TextBox ID="txtNumDocumento" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                    </div>

                                    <%--ID USUARIO--%>
                                    <div class="mb-3 col-md-6">
                                        <label for="state" class="form-label">ID USUARIO</label>
                                        <asp:TextBox ID="txtIdUsuario" runat="server" class="form-control" ReadOnly="True"></asp:TextBox>
                                    </div>

                                </div>

                            </form>
                        </div>
                        <!-- /Account -->
                    </div>

                </div>
            </div>
        </div>
        <!-- / Content -->

        <div class="content-backdrop fade"></div>
    </div>
    <!-- Content wrapper -->
</asp:Content>
