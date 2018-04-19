<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="KursovaRabota.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script>
        jQuery(document).ready(function ($) {

            $('#myCarousel').carousel({
                interval: 5000
            });

            //Handles the carousel thumbnails
            $('[id^=carousel-selector-]').click(function () {
                var id_selector = $(this).attr("id");
                try {
                    var id = /-(\d+)$/.exec(id_selector)[1];
                    console.log(id_selector, id);
                    jQuery('#myCarousel').carousel(parseInt(id));
                } catch (e) {
                    console.log('Regex failed!', e);
                }
            });
            // When the carousel slides, auto update the text
            $('#myCarousel').on('slid.bs.carousel', function (e) {
                var id = $('.item.active').data('slide-number');
                $('#carousel-text').html($('#slide-content-' + id).html());
            });
        });
    </script>
    <style>
        .hide-bullets {
    list-style:none;
    margin-left: -40px;
    margin-top:20px;
}

.thumbnail {
    padding: 0;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
    width: 100%;
}
    </style>
    <div class="row">
        <div class="col-sm-6" id="slider-thumbs">
            <ul class="hide-bullets">
                <li class="col-sm-4">
                    <a class="thumbnail" id="carousel-selector-0">
                        <img src="Pictures/008.jpg">
                    </a>
                </li>

                <li class="col-sm-4">
                    <a class="thumbnail" id="carousel-selector-1">
                        <img src="Pictures/DSC01138.jpg" /></a>
                </li>

                <li class="col-sm-4">
                    <a class="thumbnail" id="carousel-selector-2">
                        <img src="Pictures/image-5d173acea55ad88b3d4bc9e2c4ed4c723136673ef4c0cab453f0e5d25c214502-V.jpg"></a>
                </li>

                <li class="col-sm-4">
                    <a class="thumbnail" id="carousel-selector-3">
                        <img src="Pictures/image-15e95451e9b2d28fbf72432ccc877f062989e71fa9738fab9c0a7f6f7d7bb070-V1.jpg"></a>
                </li>

                <li class="col-sm-4">
                    <a class="thumbnail" id="carousel-selector-4">
                        <img src="Pictures/P1140005.jpg"></a>
                </li>

                <li class="col-sm-4">
                    <a class="thumbnail" id="carousel-selector-5">
                        <img src="Pictures/plener.jpg"></a>
                </li>
            </ul>
        </div>
        <div class="col-sm-6">
            <div class="col-xs-12" id="slider">
                <!-- Top part of the slider -->
                <div class="row">
                    <div class="col-sm-12" id="carousel-bounding-box">
                        <div class="carousel slide" id="myCarousel">
                            <!-- Carousel items -->
                            <div class="carousel-inner">
                                <div class="active item" data-slide-number="0">
                                    <img src="Pictures/008.jpg">
                                </div>

                                <div class="item" data-slide-number="1">
                                    <img src="Pictures/DSC01138.jpg">
                                </div>

                                <div class="item" data-slide-number="2">
                                    <img src="Pictures/image-5d173acea55ad88b3d4bc9e2c4ed4c723136673ef4c0cab453f0e5d25c214502-V.jpg">
                                </div>

                                <div class="item" data-slide-number="3">
                                    <img src="Pictures/image-15e95451e9b2d28fbf72432ccc877f062989e71fa9738fab9c0a7f6f7d7bb070-V1.jpg">
                                </div>

                                <div class="item" data-slide-number="4">
                                    <img src="Pictures/P1140005.jpg">
                                </div>

                                <div class="item" data-slide-number="5">
                                    <img src="Pictures/plener.jpg">
                                </div>
                            </div>
                            <!-- Carousel nav -->
                            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
