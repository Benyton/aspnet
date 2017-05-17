<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MeuPrimeiroWebForm.aspx.cs" Inherits="Aula1605.MeuPrimeiroWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h1>Meu primeiro Form</h1>
    
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    <div class="row">
        <asp:Label ID="lblNome" runat="server" Text="Nome"></asp:Label>
        <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvnome" 
            runat="server" 
            ErrorMessage="Campo nome é obrigatorio!"
            ControlToValidate="txtNome">
        </asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:Label ID="lblAtivo" runat="server" Text="Ativo"></asp:Label>
        <asp:CheckBox ID="chkAtivo" runat="server" />
    </div>
    <div>
        <asp:Label ID="lblDescricao" runat="server" Text="Descrição:"></asp:Label>
        <asp:TextBox ID="txtDescricao" runat="server"></asp:TextBox>
    </div>
    <div class="row">
        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="btn btn-primary" OnClick="btnSalvar_Click" />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-primary" BackColor="Red" 
            OnClick="btnCancelar_Click" CauseValidation="false"/>
    </div>
            </ContentTemplate>
    </asp:UpdatePanel>
         

</asp:Content>
