<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="AppTurnos.web.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link href="Recursos/css/Style.css" rel="stylesheet" />
    <title>Registrarse</title>
</head>

<body class="form-control bg-light">
    <div class="container small">
        <div class="row">
            <h2 class="text-center">Formulario de Registro</h2>
            <div class="col">
                <form id="FrmRegistro" class="form-check" runat="server">
                    <div>
                        <fieldset>
                            <legend>Datos de Login</legend>
                            <asp:Table runat="server">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" ID="LblUsuario" Text="Usuario:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-content" ID="TxtUsuario" placeholder="Nombre de Usuario"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" ID="lblContrasena" Text="Contraseña"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-content" ID="TxtContrasena" TextMode="Password"></asp:TextBox>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:Label runat="server" ID="lblConfimarContrasena" Text="Confirmar contraseña"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-content" ID="TxtConfirmarrContrasena"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell ColumnSpan="2">
                                        <asp:Label runat="server" CssClass="alert-danger" ID="LblError"></asp:Label>
                                        <asp:Label runat="server" CssClass="alert-danger" ID="LblErrorContrasena"></asp:Label>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                        </fieldset>
                        <br />
                        <div>
                            <asp:Button ID="BtnRegistrarse" runat="server" CssClass="btn btn-primary btn-dark" Text="Registrarse" OnClick="BtnRegistrarse_Click" /><!--Onclick="BtnRegistrar"-->
                        </div>
                        <br />
                        <div>
                            <asp:Button ID="BtnRegresar" runat="server" CssClass="btn btn-primary btn-info" Text="Regresar" OnClick="BtnRegresar_Click" /><!--Onclick="BtnRegresar"-->
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
