<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dnevnik_results.aspx.cs" Inherits="KursovaRabota.Dnevnik_results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
        <Columns>

           <asp:BoundField HeaderText="Ime"  DataField="ime">
            </asp:BoundField>

             <asp:BoundField HeaderText="Klas" DataField="klas">   
            </asp:BoundField>

              <asp:BoundField HeaderText="Predmet" DataField="predmet">         
            </asp:BoundField>

            <asp:BoundField HeaderText="Ocenka" DataField="ocenka">         
            </asp:BoundField>

        </Columns>
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Назад" />
</asp:Content>
