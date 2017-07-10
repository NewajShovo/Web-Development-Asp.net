﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
    <div>
     <asp:gridview runat="server" AutoGenerateColumns="False" DataKeyNames = "id" AutoGenerateDeleteButton="false" AutoGenerateEditButton="false" DataSourceID="SqlDataSource1" EnableModelValidation="True">
         <Columns>
             <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
             <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
             <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
         </Columns>
        </asp:gridview>     
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ProjectConnectionString %>" SelectCommand="SELECT * FROM [Table_1]" UpdateCommand="UPDATE [Table_1] Set [name]=@name,[city]=@city WHERE [id]=@id" DeleteCommand="DELETE from [Table_1] WHERE [id]=@id"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
