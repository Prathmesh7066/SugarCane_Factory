<%@ Page Title="" Language="C#" MasterPageFile="~/website/MasterPage.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="website_about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style>
        /*logo*/
        .ftco-navbar-light .navbar-brand span{

             color: #75992e;
        }

        /*menu*/
        .ftco-navbar-light .navbar-nav > .nav-item.active > a {
            color: #A7E810;
        }

        .ftco-counter {
            background:#75992e;
        }
        .services .icon{
            background:white;
        }
        .ftco-intro .overlay{
            background:#75992e;
        }
       
    </style>
    <title>About</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/About_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text align-items-end">
          <div class="col-md-9 ftco-animate pb-5">
          	<p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Home <i class="fa fa-chevron-right"></i></a></span> <span>About us <i class="fa fa-chevron-right"></i></span></p>
            <h1 class="mb-0 bread">About Us</h1>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">
    		<div class="row d-flex no-gutters">
    			<div class="col-md-6 d-flex">
    				<div class="img d-flex align-items-center justify-content-center py-5 py-md-0" style="background-image:url(images/8.jpg);">
    					
    				</div>
    			</div>
    			<div class="col-md-6 pl-md-5 pt-md-5">
    				<div class="row justify-content-start py-5">
		          <div class="col-md-12 heading-section ftco-animate">
		          	<span class="subheading"></span>
		            <h2 class="mb-4">A legacy of diversified excellence</h2>
		            <p>The group, which made a humble beginning with the commissioning of its first plant of 2500 TCD in Bijnor district of Uttar Pradesh, stands tall today across the sweet landscape of sugar manufacturing, along with ethanol and industrial alcohol production. Headquartered in Mumbai and steered by a legacy of excellence, the group is led by the philosophy to either find a way or make one to achieve excellence across its business value chain.</p>
		          </div>
		        </div>
						<div class="row ftco-counter py-5" id="section-counter">
		          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="45">0</strong>
		              </div>
		              <div class="text">
		              	<span>Years of <br>Experienced</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="2342">0</strong>
		              </div>
		              <div class="text">
		              	<span>Happy <br>Customers</span>
		              </div>
		            </div>
		          </div>
		         <%-- <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="30">0</strong>
		              </div>
		              <div class="text">
		              	<span>Building <br>Cleaned</span>
		              </div>
		            </div>
		          </div>
		        </div>--%>
	        </div>
        </div>
    	</div>
    </section>


    <section class="ftco-section testimony-section bg-light">
      
    </section>

    <section class="ftco-section ftco-intro" style="background-image: url('images/sugarcaneimg.jpg');" data-stellar-background-ratio="0.5">
    	<div class="overlay"></div>
    	<div class="container">
    		<div class="row justify-content-center">
    			<div class="col-md-8 text-center">
    				<h2>Together we will explore new things</h2>
    				<a href="" class="icon-video d-flex align-items-center justify-content-center"><span class="fa fa-play"></span></a>
    			</div>
    		</div>
    	</div>
    </section>
</asp:Content>

