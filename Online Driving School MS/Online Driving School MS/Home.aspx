
<%@ Page Title="" Language="C#" MasterPageFile="~/site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Online_Driving_School_MS.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Styles/bootstrap.min.css" rel="stylesheet" />
    <link href="Styles/siteStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content" runat="server">

            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            <li data-target="#carousel-example-generic" data-slide-to="4"></li>
          </ol>
        <br />
          <!-- Wrapper for slides -->
          <div class="carousel-inner" role="listbox">
           
            <div class="item active">
             <img src="Images/1.jpg" />
              <div class="carousel-caption">
                ...
              </div>
            </div>
             <div class="item">
            <img src="Images/2.jpg" />
              <div class="carousel-caption">
                ...
              </div>
            </div>

              <div class="item">
            <img src="Images/3.jpg" />
              <div class="carousel-caption">
                ...
              </div>
            </div>

              <div class="item">
            <img src="Images/4.jpg" />
              <div class="carousel-caption">
                ...
              </div>
            </div>

              <div class="item">
            <img src="Images/5.jpg" />
              <div class="carousel-caption">
                ...
              </div>
            </div>
          </div>

          <!-- Controls -->
          <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
    <br />
    <!-- Middle Contents -->
    <div class="container center">
        <div class="row">
            <div class="col-lg-4">
                <img class="img-circle"src="Images/DRIVING-INSTRUCTOR-.jpg" width="140" height="140"/>"
                <h2>About Us</h2>

                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                   Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                   when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                   It has survived not only five centuries, but also the leap into electronic typesetting, 
                   remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset 
                   sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus 
                   PageMaker including versions of Lorem Ipsum.
                </p>

                <p><a class=" btn btn-info" href="About.aspx" role="button">About>></a> </p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle"src="Images/images.png" width="140" height="140"/>"
                <h2>Learn Now</h2>

                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                   Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                   when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                   It has survived not only five centuries, but also the leap into electronic typesetting, 
                   remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset 
                   sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus 
                   PageMaker including versions of Lorem Ipsum.
                </p>

                <p><a class=" btn btn-info" href="Learn.aspx" role="button">Learn Now>></a> </p>
            </div>
            <div class="col-lg-4">
                <img class="img-circle"src="Images/driving-lessons-in-the-uk.png.gif" width="140" height="140"/>"
                <h2>View Pricing</h2>

                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. 
                   Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                   when an unknown printer took a galley of type and scrambled it to make a type specimen book. 
                   It has survived not only five centuries, but also the leap into electronic typesetting, 
                   remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset 
                   sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus 
                   PageMaker including versions of Lorem Ipsum.
                </p>

                <p><a class=" btn btn-info" href="About.aspx" role="button">View Prices>></a> </p>
            </div>
        </div>
    </div>

    <!-- Middle Contents -->

    <!-- Footer -->
    <footer>
        <div class="container">
            <p>&copy; 2016 ODS.com</p>
        </div>
    </footer>
    <!--Footer-->

</asp:Content>
