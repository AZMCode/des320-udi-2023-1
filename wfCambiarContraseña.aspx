<%@ Page Title="" Language="C#" MasterPageFile="~/mpVentas.Master" AutoEventWireup="true" CodeBehind="wfCambiarContraseña.aspx.cs" Inherits="wfVentas.wfCambiarContraseña" %>

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
                        <h5 class="card-header">Cambiar Contraseña</h5>
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
                                <asp:Label ID="lblNombre" runat="server"></asp:Label>
                            </div>
                        </div>
                        <hr class="my-0" />
                        <div class="card-body">
                            <form id="formAccountSettings" method="POST" onsubmit="return false">
                                <div class="row">
                                    <%--Contraseña Actual--%>
                                    <div class="mb-3 col-md-6">
                                        <label for="txtPasswActual" class="form-label">Contraseña Actual</label>
                                        <asp:TextBox TextMode="Password" ID="txtPasswActual" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <%--Contraseña Nueva--%>
                                    <div class="mb-3 col-md-6">
                                        <label for="txtPasswNueva" class="form-label">Contraseña Nueva</label>
                                        <asp:TextBox TextMode="Password" ID="txtPasswNueva" runat="server" class="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <%--Confirmación de Contraseña--%>
                                    <div class="mb-3 col-md-6">
                                        <label for="txtPasswConfirmar" class="form-label">Confirmación Contraseña Nueva</label>
                                        <asp:TextBox ID="txtPasswConfirmar" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="row">
                                    <asp:CompareValidator
                                        ID="cvPassword"
                                        runat="server"
                                        ForeColor="Red"
                                        ErrorMessage="Las Contraseñas no coinciden"
                                        ControlToValidate="txtPasswConfirmar"
                                        ControlToCompare="txtPasswNueva">
                                    </asp:CompareValidator>
                                </div>
                                <div class="row">
                                    <asp:RequiredFieldValidator ID="rfvActual"
                                        runat="server"
                                        ControlToValidate="txtPasswActual"
                                        ErrorMessage="Debe ingresar el password actual" ForeColor="Red">
                                    </asp:RequiredFieldValidator>

                                </div>
                                <div class="row">
                                    <asp:RequiredFieldValidator ID="rfvNueva"
                                        runat="server"
                                        ErrorMessage="Nueva contraseña requerida"
                                        ControlToValidate="txtPasswNueva" ForeColor="Red">

                                    </asp:RequiredFieldValidator>

                                </div>
                                <div class="row">
                                    <asp:RequiredFieldValidator ID="rfvConfirmar"
                                        runat="server"
                                        ErrorMessage="La confirmacion de la contraseña es requerida"
                                        ControlToValidate="txtPasswConfirmar" ForeColor="Red">

                                    </asp:RequiredFieldValidator>

                                </div>


                                <div class="row">
                                    <asp:CustomValidator ID="cvValidarActual"
                                        runat="server"
                                        ForeColor="Red"
                                        ErrorMessage="" ControlToValidate="txtPasswActual" OnServerValidate="cvValidarActual_ServerValidate" ValidateEmptyText="True"></asp:CustomValidator>
                                </div>
                                <div class="row">
                                    <asp:Button ID="btnCambiar" runat="server" Text="Actualizar Contraseña" OnClick="btnCambiar_Click" />
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
