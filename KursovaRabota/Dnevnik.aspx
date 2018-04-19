<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Dnevnik.aspx.cs" Inherits="KursovaRabota.Dnevnik" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <style>
        .dropdown-selection {
            width: 45%;
            display: flex;
            margin-bottom: 20px;
        }
        .input-section {
            border: 2px solid #333;
            border-radius: 5px;
            display: flex;
            flex-direction: column;
            padding: 20px 0;
            margin-bottom: 30px;
        }
    </style>
    <h1>Електронен Дневник</h1>
    <h2>Проверете оценка:</h2>
    <div class="input-section">
        <div class="dropdown-selection">
            <div class="col-md-6">
                <span>Изберете клас:</span>
            </div>
            <div class="col-md-6">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="Klasove" DataTextField="Klas" DataValueField="Klas">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Klasove" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Klas] FROM [Grades]"></asp:SqlDataSource>
            </div>
        </div>
        <div class="dropdown-selection">
            <div class="col-md-6">
                <span>Изберете предмет:</span>
            </div>            
            <div class="col-md-6">
                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Predmeti" DataTextField="Predmet" DataValueField="Predmet">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Predmeti" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [Predmet] FROM [Grades]"></asp:SqlDataSource>
            </div>
        </div>
        <div>
            <div class="col-md-12">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Вижте Оценките" />
            </div>
        </div>        
    </div>    
    <h2>Нанесете оценка:</h2>
    <div class="input-section">
        <div class="dropdown-selection">
            <div class="col-md-6">
                <span>Име:</span>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="dropdown-selection">
            <div class="col-md-6">
                <span>Клас:</span>
            </div>
            <div class="col-md-6">                
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div class="dropdown-selection">
            <div class="col-md-6">
                <span>Предмет:</span>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="dropdown-selection">
            <div class="col-md-6">
                <span>Оценка:</span>
            </div>
            <div class="col-md-6">                
                <asp:DropDownList ID="DropDownList6" runat="server">
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div>
            <div class="col-md-12">
                <asp:Button ID="Button3" runat="server" Text="Нанесете Оценка" OnClick="Button3_Click" />        
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </div>
        </div>        
    </div>    
</asp:Content>
