<%@ Page Title="" Language="C#" MasterPageFile="~/Real madrid/Admin/FanAdminMaster.master" AutoEventWireup="true" CodeFile="realhome.aspx.cs" Inherits="realhome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
</p>
<style>

.mySlides {display:none;}
        .w3-center {
            height: 19px;
        }
    </style>
<div class="w3-content w3-section" style="max-width:1400px; height: 500px;">
    <img class="mySlides" src="images/160528185335-01-champions-league-final-real-madrid-atletico-milan-super-169.jpg" style="width:100%  ; height:450px" />
    <img class="mySlides" src="images/images-real-madrid-2016-mobile.jpg" style="width:100% ;height:450px" />
    <img class="mySlides" src="images/real-madrid-hd-wallpapers-2016-real-madrid-hd-wallpapers-2016-5.jpg" style="width:100% ;height:450px" />
</div>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
   <script>
       var myIndex = 0;
       carousel();

       function carousel() {
           var i;
           var x = document.getElementsByClassName("mySlides");
           for (i = 0; i < x.length; i++) {
               x[i].style.display = "none";
           }
           myIndex++;
           if (myIndex > x.length) { myIndex = 1 }
           x[myIndex - 1].style.display = "block";
           setTimeout(carousel, 2000); // Change image every 2 seconds
       }
</script>
</asp:Content>

