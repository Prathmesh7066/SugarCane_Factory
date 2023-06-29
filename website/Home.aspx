<%@ Page Title="" Language="C#" MasterPageFile="~/website/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="website_Default" %>

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
    <title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="hero-wrap js-fullheight" style="background-image: url('images/sugarcane_1.png');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
          <div class="col-md-6 ftco-animate">
          	<h2 class="subheading"></h2>
          	<h1 class="mb-4">Towards new vistas of excellence.</h1>
            <p><a href="#" class="btn btn-primary mr-md-4 py-2 px-4">Learn more <span class="ion-ios-arrow-forward"></span></a></p>
          </div>
        </div>
      </div>
    </div>

	  <section class="ftco-appointment ftco-section ftco-no-pt ftco-no-pb">
			<div class="overlay"></div>
    	<div class="container">
    		<div class="row d-md-flex justify-content-center">
    			
    		</div>
    	</div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb">
    	<div class="container">
    		<div class="row d-flex no-gutters">
    			<div class="col-md-6 d-flex">
    				<div class="img d-flex align-items-center justify-content-center py-5 py-md-0" style="background-image:url(images/5.jpg);">
    					
    				</div>
    			</div>
    			<div class="col-md-6 pl-md-5 pt-md-5">
    				<div class="row justify-content-start py-5">
		          <div class="col-md-12 heading-section ftco-animate">
		          	<span class="subheading"></span>
		            <h2 class="mb-4">A legacy of diversified excellence</h2>
		            <p>A market leader in the Indian sugar industry, Dwarikesh Sugar Industries Limited is a multi-faceted, diversified industrial group engaged in the manufacture of the finest grains of sugar, as well as allied products. The group, which made a humble beginning with the commissioning of its first plant of 2500 TCD in Bijnor district of Uttar Pradesh, stands tall today across the sweet landscape of</p>
		          </div>
		        </div>
						<div class="row ftco-counter py-5" id="section-counter">
		          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="26">0</strong>
		              </div>
		              <div class="text">
		              	<span>Years of <br>Experienced</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="400">0</strong>
		              </div>
		              <div class="text">
		              	<span>Employee</span>
		              </div>
		            </div>
		          </div>
		          <div class="col-md-6 col-lg-4 d-flex justify-content-center counter-wrap ftco-animate">
		            <div class="block-18">
		              <div class="text">
		                <strong class="number" data-number="47000">0</strong>
		              </div>
		              <div class="text">
		              	<span>Farmers</span>
		              </div>
		            </div>
		          </div>
		        </div>
	        </div>
        </div>
    	</div>
    </section>

    <section class="ftco-section">
    	<div class="container">
    		<div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-7 heading-section text-center ftco-animate">
          	<span class="subheading"></span>
            <h2>Career With Dwarikesh</h2>
          </div>
        </div>
    		<div class="row">
          <div class="col-md-6 col-lg-4 services ftco-animate">
            <div class="d-block d-flex">
              <div class="icon d-flex justify-content-center align-items-center">
                  <img src="images/icon/sec2-icon1.png">
            		<%--<span class="fa fa-home"></span>--%>
              </div>
              <div class="media-body pl-3">
                <h3 class="heading">An entity par excellence</h3>
                <p> A Market leader in the Indian sugar industry...</p>
                <p><a href="#" class="btn-custom">Read more</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 services ftco-animate">
          	<div class="d-block d-flex">
              <div class="icon d-flex justify-content-center align-items-center">
            		<img src="images/icon/sec2-icon2.png">
              </div>
              <div class="media-body pl-3">
                <h3 class="heading">The beginning of the excellence journey</h3>
                <p>Dwarikesh Sugar Industries Limited was originally...</p>
                <p><a href="#" class="btn-custom">Read more</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 services ftco-animate">
            <div class="d-block d-flex">
              <div class="icon d-flex justify-content-center align-items-center">
            		<img src="images/icon/sec2-icon3.png">
              </div>
              <div class="media-body pl-3">
                <h3 class="heading">The white crystals of our excellence</h3>
                <p>Dwarikesh sugar stands for excellent quality...</p>
                <p><a href="#" class="btn-custom">Read more</a></p>
              </div>
            </div> 
          </div>

          <div class="col-md-6 col-lg-4 services ftco-animate">
          	<div class="d-block d-flex">
              <div class="icon d-flex justify-content-center align-items-center">
            		<img src="images/icon/sec2-icon4.png">
              </div>
              <div class="media-body pl-3">
                <h3 class="heading">Numbers that define excellence</h3>
                <p>Have a look at the most recent financial...</p>
                <p><a href="#" class="btn-custom">Read more</a></p>
              </div>
            </div> 
          </div>

          <div class="col-md-6 col-lg-4 services ftco-animate">
            <div class="d-block d-flex">
              <div class="icon d-flex justify-content-center align-items-center">
            		<img src="images/icon/sec2-icon5.png">
              </div>
              <div class="media-body pl-3">
                <h3 class="heading">Creating excellence in investors relations</h3>
                <p>At Dwarikesh, we believe in nurturing our...</p>
                <p><a href="#" class="btn-custom">Read more</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4 services ftco-animate">
          	<div class="d-block d-flex">
              <div class="icon d-flex justify-content-center align-items-center">
            		<img src="images/icon/sec2-icon6.png">
              </div>
              <div class="media-body pl-3">
                <h3 class="heading">Making way for others</h3>
                <p>We, at Dwarikesh, are known to think and work differently...</p>
                <p><a href="#" class="btn-custom">Read more</a></p>
              </div>
            </div>
          </div>
        </div>
    	</div>
    </section>

    

    
		
		<section class="ftco-section ftco-no-pb">
			<div class="container">
				<div class="row justify-content-center pb-5 mb-3">
          <div class="col-md-12 heading-section  text-center ftco-animate">
          	<span class="subheading"></span>
            <h2>Glimpses of excellence</h2>
          </div>
        </div>
				<div class="row">
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(images/1.jpg);">
            	
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(images/2.jpg);">
            	
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(images/3.jpg);">
            	
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(images/4.jpg);">
            	
            </div>
          </div>

          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(images/5.jpg);">
            	
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(images/6.jpg);">
            	
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(images/7.png);">
            	
            </div>
          </div>
          <div class="col-md-6 col-lg-3 ftco-animate">
            <div class="work img d-flex align-items-center" style="background-image: url(images/8.jpg);">
            	
            </div>
          </div>
        </div>
			</div>
		</section>	
		
		<section class="ftco-section">
      
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

