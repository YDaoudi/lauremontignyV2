<!doctype html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form"  prefix="f"%>
  <head>
    <meta charset="utf-8">
    <title>Laure Montigny</title>
    <!--SEO Meta Tags-->
    <meta name="description" content="Responsive HTML5 E-Commerce Template" />
		<meta name="keywords" content="responsive html5 template, e-commerce, shop, bootstrap 3.0, css, jquery, flat, modern" />
		<meta name="author" content="8Guild" />
    <!--Mobile Specific Meta Tag-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <!--Favicon-->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">
    <!--Master Slider Styles-->
    <link href="./resources/masterslider/style/masterslider.css" rel="stylesheet" media="screen">
    <!--Styles-->
    <link href="./resources/css/styles.css" rel="stylesheet" media="screen">
    <!--Color Scheme-->
    <link class="color-scheme" href="../../resources/css/colors/color-default.css" rel="stylesheet" media="screen">
    <!--Color Switcher-->
    <link href="./resources/color-switcher/color-switcher.css" rel="stylesheet" media="screen">
    <!--Modernizr-->
		<script src="./resources/js/libs/modernizr.custom.js"></script>
    <link rel="stylesheet" href="../../resources/font-awesome-4.6.3/css/font-awesome.min.css">

    <!--Adding Media Queries Support for IE8-->
    <!--[if lt IE 9]>
      <script src="js/plugins/respond.js"></script>
    <![endif]-->
  </head>

  <!--Body-->
  <body>


  
  	<!--Login Modal-->
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><i class="fa fa-times"></i></button>
            <h2>S'identifier ou <a href="register.html">s'enregistrer</a></h2>
            <div class="social-login">
              <a class="facebook" href="#"><i class="fa fa-facebook-square"></i></a>
              <a class="google" href="#"><i class="fa fa-google-plus-square"></i></a>
              <a class="twitter" href="#"><i class="fa fa-twitter-square"></i></a>
            </div>
          </div>
          <div class="modal-body">
            <form class="login-form" action="j_spring_security_check" method="post">
              <div class="form-group group">
                <label for="log-email">Adresse e-mail</label>
                <input type="email" class="form-control"  id="log-email" placeholder="Entrer votre email" required name="j_username">
              </div>
              <div class="form-group group">
                <label for="log-password">Mot de passe</label>
                <input type="text" class="form-control" name="j_password" id="log-password" placeholder="Entrer votre pass" required>
                <a class="help-link" href="#">Mot de passe password?</a>
              </div>
              <div class="checkbox">
                <label><input type="checkbox" name="remember"> se rappeller</label>
              </div>
              <input class="btn btn-black" type="submit" value="S'identifier">
            </form>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <!--Header-->
    <header data-offset-top="500" data-stuck="600"><!--data-offset-top is when header converts to small variant and data-stuck when it becomes visible. Values in px represent position of scroll from top. Make sure there is at least 100px between those two values for smooth animation-->
    
      <!--Search Form-->
      <form class="search-form closed" method="get" autocomplete="off" action="chercherProduits">
        <div class="container">
          <div class="close-search"><i class="icon-delete"></i></div>
            <div class="form-group">
              <label class="sr-only" for="search-hd">Rechercher un produit</label>
              <input type="text" class="form-control" name="search-hd" id="search-hd" placeholder="Rechercher un produit" value="${mc}">
              <button type="submit"><i class="icon-magnifier"></i></button>
          </div>
        </div>
      </form>
    
      <!--Mobile Menu Toggle-->
      <div class="menu-toggle"><i class="fa fa-list"></i></div>

      <div class="container">
        <a class="logo" href="home-fullscreen.html"><img src="img/logo-default.png" alt="Laure Montigny"/></a>
      </div>
      
      <!--Main Menu-->
      <nav class="menu">
        <div class="container">
          
          <ul class="main">
           <!--Class "has-submenu" for proper highlighting and dropdown-->
            <li class="has-submenu"><a href="presse.html"><span>P</span>resse<i class="fa fa-chevron-down"></i></a>
            </li>
            
          </ul>

        </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
        <div class="catalog-block">
          <div class="container">
            <ul class="catalog">
               <li class="has-submenu"><a href="home-fullscreen.html"><span>A</span>ccueil<i class="fa fa-chevron-down"></i></a>
            	<li class="has-submenu"><a href="shop-filters-left-3cols.html" ><span>C</span>ollection<i class="fa fa-chevron-down"></i></a>
              	<ul class="submenu">
                  <c:forEach items="${categories}" var="cat">
                	<li><a href="ville.html" style="color: black;">${cat.nomCategorie}</a></li>
                    <ul class="sub-submenu">
                      <li><a href="#">Laure Montigny</a></li>
                      <li><a href="#">Laure Montigny </a></li>
                      <li><a href="#">Laure Montigny</a></li>
                      <li><a href="#">Laure Montigny</a></li>
                    </ul>
                  </li>
                  <li class="offer">
                  	<div class="col-1">
                    	<p class="p-style2">..... </p>
                    </div>
                    <div class="col-2">
                    	<img src="img/offers/menu-drodown-offer.jpg" alt="Special Offer"/>
                    	<a class="btn btn-black" href="#"><span>584€</span>Offre speciale</a>
                    </div>
                  </li>
                </c:forEach>
                </ul>
              </li>
              <li><a href="about.html"><span>M</span>arque</a></li>
              <li><a href="atelier.html"><span>A</span>telier</a></li>
              <li><a href="contacts.html"><span>C</span>ontact</a></li>

              <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </li>
    
            </ul>
          </div>
        </div>
      </nav>
      
      <div class="toolbar-container">
        <div class="container">  
          <!--Toolbar-->
          <div class="toolbar group">
            <a class="login-btn btn-outlined-invert" href="#" data-toggle="modal" data-target="#loginModal"><i class="icon-profile"></i> <span><b>S</b>'identifier</span></a>

            <a class="btn-outlined-invert" href="wishlist.html"><i class="icon-heart"></i> <span><b>W</b>ishlist</span></a>   

            <div class="cart-btn">
              <a class="btn btn-outlined-invert" href="shopping-cart.html"><i class="icon-shopping-cart-content"></i><span>3</span><b>36 5654</b></a>
              
              <!--Cart Dropdown-->
              <div class="cart-dropdown">
                <span></span><!--Small rectangle to overlap Cart button-->
                <div class="body">
                  <table>
                    <tr>
                      <th>Articles</th>
                      <th>Quantité</th>
                      <th>Prix</th>
                    </tr>
           <c:forEach items="${panier.produit}" var="p">
                    <tr class="item">
                      <td><div class="delete"></div><a href="#">${p.description }</a></td>
                      <td><input type="text" value="1">${p.quantite}</td>
                      <td class="price">${p.prix}</td>
                    </tr>
            </c:forEach>
                  </table>
                </div>
                <div class="footer group">
                  <div class="buttons">
                    <a class="btn btn-outlined-invert" href="checkout.html"><i class="icon-download"></i>Paiement</a>
                    <a class="btn btn-outlined-invert" href="shopping-cart.html"><i class="icon-shopping-cart-content"></i>La carte</a>
                  </div>
                  <div class="total">getTotal()</div>
                </div>
              </div><!--Cart Dropdown Close-->
            </div>

            <button class="search-btn btn-outlined-invert"><i class="icon-magnifier"></i></button>
          </div><!--Toolbar Close-->
        </div>
      </div>
    </header><!--Header Close-->
    
    <!--Page Content-->
    <div class="page-content">
    <!--Hero Slider-->
      <section class="hero-slider">
        <div class="master-slider" id="hero-slider">

          <!--Slide 4-->
          <div class="ms-slide" data-delay="7">
            <div class="overlay"></div>
            <img src="../../resources/img/masterslider/blank.gif" data-src="../../resources/img/hero/slideshow/slide_5.jpg" alt="Crescent"/>
            <h2 style="width: 456px; left: 110px; top: 110px;color: white;" class="white-color ms-layer" data-effect="left(50,true)" data-duration="700" data-delay="250" data-ease="easeOutQuad">Crescent</h2>
            <p style="width: 456px; left: 110px; top: 210px;" class="dark-color ms-layer" data-effect="left(50,true)" data-duration="700" data-delay="500" data-ease="easeOutQuad">In this slider (which works both on touch screen and desktop devices) you can change the title, the description and button texts. It's all that you need to demonstrate your top rated products. </p>
            <div style="left: 110px; top: 330px;" class="ms-layer button" data-effect="left(50,true)" data-duration="500" data-delay="750" data-ease="easeOutQuad"><a class="btn btn-black" href="shop-filters-left-3cols.html">Voir le catalogue</a></div>
            <div style="left: 350px; top: 330px;" class="ms-layer button" data-effect="bottom(50,true)" data-duration="700" data-delay="950" data-ease="easeOutQuad"><a class="btn btn-primary" href="#">Parcourir tous les articles</a></div>
          </div>
        
          <!--Slide 1-->
          <div class="ms-slide" data-delay="7">
            <div class="overlay"></div>
            <img src="masterslider/blank.gif" data-src="img/hero/slideshow/logo-default.png" alt=""/>
            <h3 style="width: 300px; left: 110px; top: 110px;" class="dark-color ms-layer" data-effect="top(50,true)" data-duration="700" data-delay="250" data-ease="easeOutQuad">Recherchez tous les sacs dans notre boutique !</h3>
            <p style="width: 456px; left: 110px; top: 210px;" class="dark-color ms-layer" data-effect="back(500)" data-duration="700" data-delay="500" data-ease="easeOutQuad">In this slider (which works both on touch screen and desktop devices) you can change the title, the description and button texts. It's all that you need to demonstrate your top rated products. </p>
            <div style="left: 110px; top: 300px;" class="ms-layer button" data-effect="left(50,true)" data-duration="500" data-delay="750" data-ease="easeOutQuad"><a class="btn btn-black" href="shop-filters-left-3cols.html">Voir le catalogue</a></div>
            <div style="left: 350px; top: 300px;" class="ms-layer button" data-effect="bottom(50,true)" data-duration="700" data-delay="950" data-ease="easeOutQuad"><a class="btn btn-primary" href="">Parcourir tous les articles</a></div>
          </div>
          
          <!--Slide 2-->
          <div class="ms-slide" data-delay="7">
            <span class="overlay"></span>
            <img src="masterslider/blank.gif" data-src="img/hero/slideshow/slide_3.jpg" alt="Necessaire"/>
            <h2 style="width: 456px; left: 110px; top: 110px;color: white;" class="white-color ms-layer" data-effect="bottom(50,true)" data-duration="700" data-delay="250" data-ease="easeOutQuad" >Necessaire</h2>
            <p style="width: 456px; left: 110px; top: 210px;" class="dark-color ms-layer" data-effect="bottom(50,true)" data-duration="700" data-delay="500" data-ease="easeOutQuad">In this slider (which works both on touch screen and desktop devices) you can change the title, the description and button texts. It's all that you need to demonstrate your top rated products. </p>
            <div style="left: 110px; top: 330px;" class="ms-layer button" data-effect="left(50,true)" data-duration="500" data-delay="750" data-ease="easeOutQuad"><a class="btn btn-black" href="shop-filters-left-3cols.html">Voir le catalogue</a></div>
            <div style="left: 350px; top: 330px;" class="ms-layer button" data-effect="bottom(50,true)" data-duration="700" data-delay="950" data-ease="easeOutQuad"><a class="btn btn-primary" href="#">Parcourir tous les articles</a></div>
          </div>
          
          <!--Slide 3-->
          <div class="ms-slide" data-delay="7">
            <div class="overlay"></div>
            <img src="masterslider/blank.gif" data-src="img/hero/slideshow/slide_4.jpg" alt="Crescent"/>
            <h2 style="width: 456px; left: 110px; top: 110px;color: white;" class="white-color ms-layer" data-effect="left(50,true)" data-duration="700" data-delay="250" data-ease="easeOutQuad">Crescent</h2>
            <p style="width: 456px; left: 110px; top: 210px;" class="dark-color ms-layer" data-effect="left(50,true)" data-duration="700" data-delay="500" data-ease="easeOutQuad">In this slider (which works both on touch screen and desktop devices) you can change the title, the description and button texts. It's all that you need to demonstrate your top rated products. </p>
            <div style="left: 110px; top: 330px;" class="ms-layer button" data-effect="left(50,true)" data-duration="500" data-delay="750" data-ease="easeOutQuad"><a class="btn btn-black" href="shop-filters-left-3cols.html">Voir le catalogue</a></div>
            <div style="left: 350px; top: 330px;" class="ms-layer button" data-effect="bottom(50,true)" data-duration="700" data-delay="950" data-ease="easeOutQuad"><a class="btn btn-primary" href="#">Parcourir tous les articles</a></div>
          </div>
          
          
        </div>
      </section><!--Hero Slider Close-->
    	
          
        
    
    	<!--Categories-->
      <section class="cat-tiles">
        <div class="container">
          
            
        </div>
      </section><!--Categories Close-->
      
      <!--Catalog Grid-->
      <section class="catalog-grid">
        <div class="container">
      <section class="white-bg gallery-widget">
        <div class="container">
          <h2>Nos promotions </h2>
          

          <div class="row">
            <!--Tile-->
      <c:forEach items="${promotions}" var="promo">
            <div class="col-lg-3 col-md-4 col-sm-6">
           <div class="gallery-item" data-groups='["City bags"]' data-src="img/catalog/1.jpg">
             
              <div class="tile">
                <div class="badges">
                  <span class="sale">${promo.state }</span>
                </div>
                <div class="price-label">${promo.prix }</div>
                 <a href="shop-single-item-v1.html">
                  <img alt="" src="photoPromo?idProd=${promo.idProduit }" alt="1"/>
                  <span class="tile-overlay"></span>
                </a>
                <div class="footer">
                  <a href="#">Smart Backpack</a>
                  <span>by Laure Montigny</span>
                  <button class="btn btn-primary">addArticle()</button>
                </div>
              </div>
            </div>
          </div> 
      </c:forEach>
             
        </div>
        </div>
      </section><!--Catalog Grid Close-->
    </section>
      
      <!--Tabs Widget-->
      <section class="tabs-widget">
        <!-- Nav tabs -->
        <ul class="nav nav-tabs">
          <li class="active"><a href="#bestsel" data-toggle="tab">best-seller</a></li>
          <li><a href="#onsale" data-toggle="tab">Articles en promotion</a></li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane fade in active" id="bestsel">
          	<div class="container">
            	<div class="row">
                <div class="col-lg-3 col-md-4 col-sm-6">
                  
                </div>
              	<div class="col-lg-3 col-md-4 col-sm-6">
                	<a class="media-link" href="shop-single-item-v1.html">
                  	<div class="overlay">
                    	<div class="descr"><div>Nom Du Produit<span>€14.95</span></div></div>
                    </div>
                    <img src="img/media/1.jpg" alt="1"/>
                  </a>
                </div>
              	<div class="col-lg-3 col-md-4 col-sm-6">
                	<a class="media-link" href="shop-single-item-v1.html">
                  	<div class="overlay">
                    	<div class="descr"><div>Nom Du Produit<span>€19.40</span></div></div>
                    </div>
                    <img src="img/media/2.jpg" alt="2"/>
                  </a>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-1 col-md-4 col-sm-6">
                  
                </div>
              	<div class="col-lg-3 col-md-4 col-sm-6">
                	<a class="media-link" href="shop-single-item-v1.html">
                  	<div class="overlay">
                    	<div class="descr"><div>Nom Du Produit<span>€24.15</span></div></div>
                    </div>
                    <img src="img/media/3.jpg" alt="3"/>
                  </a>
                </div>
              	<div class="col-lg-3 col-md-4 col-sm-6">
                	<a class="media-link" href="shop-single-item-v1.html">
                  	<div class="overlay">
                    	<div class="descr"><div>Nom Du Produit<span>€24.15</span></div></div>
                    </div>
                    <img src="img/media/4.jpg" alt="4"/>
                  </a>
                </div>
              	<div class="col-lg-3 col-md-4 col-sm-6">
                	<a class="media-link" href="shop-single-item-v1.html">
                  	<div class="overlay">
                    	<div class="descr"><div>Nom Du Produit<span>€24.15</span></div></div>
                    </div>
                    <img src="img/media/5.jpg" alt="5"/>
                  </a>
                </div>
              </div>
            </div>
          </div>
          <div class="tab-pane fade" id="onsale">
          	<div class="container">
            	<div class="row">
                <div class="col-lg-3 col-md-4 col-sm-6">
                  
                </div>
              	<div class="col-lg-3 col-md-4 col-sm-6">
                	<a class="media-link" href="shop-single-item-v1.html">
                  	<div class="overlay">
                    	<div class="descr"><div>Nom Du Produit<span>€14.95</span></div></div>
                    </div>
                    <img src="img/media/6.jpg" alt="1"/>
                  </a>
                </div>
              	<div class="col-lg-3 col-md-4 col-sm-6">
                	<a class="media-link" href="shop-single-item-v1.html">
                  	<div class="overlay">
                    	<div class="descr"><div>Nom Du Produit<span>€19.40</span></div></div>
                    </div>
                    <img src="img/media/2.jpg" alt="2"/>
                  </a>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-6">
                  
                </div>
              	<div class="col-lg-3 col-md-4 col-sm-6">
                	<a class="media-link" href="shop-single-item-v1.html">
                  	<div class="overlay">
                    	<div class="descr"><div>Nom Du Produit<span>€24.15</span></div></div>
                    </div>
                    <img src="img/media/5.jpg" alt="3"/>
                  </a>
                </div>
              	<div class="col-lg-3 col-md-4 col-sm-6">
                	<a class="media-link" href="shop-single-item-v1.html">
                  	<div class="overlay">
                    	<div class="descr"><div>Nom Du Produit<span>€24.15</span></div></div>
                    </div>
                    <img src="img/media/7.jpg" alt="4"/>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section><!--Tabs Widget Close-->
    
     
      
      <!--Gallery Widget-->
      <section class="white-bg gallery-widget">
        <div class="container">
          <h2>Galerie de produit</h2>
          <div class="filters">
            <a class="active" href="#" data-group="all">Tout</a>
            <a href="#" data-group="City bags">sacs de ville</a>
            <a href="#" data-group="Gloves">Collection Polo</a>
            <a href="#" data-group="Belts">Collection Tonight</a>
            <a href="#" data-group="video">Collection Garden Party</a>
          </div>
          <div class="gallery-grid">
            <!--Item-->
            <div class="gallery-item" data-groups='["City bags"]' data-src="img/gallery-widget/1.jpg">
              <a href="img/gallery-widget/1.jpg">
                <div class="overlay"><span><i class="icon-expand"></i></span></div>
                <img src="img/gallery-widget/1.jpg" alt="1"/>
              </a>
            </div>
            <!--Item-->
            <div class="gallery-item" data-groups='["City bags"]' data-src="img/gallery-widget/2.jpg">
              <a href="img/gallery-widget/2.jpg">
                <div class="overlay"><span><i class="icon-expand"></i></span></div>
                <img src="img/gallery-widget/2.jpg" alt="2"/>
              </a>
            </div>
            <!--Item-->
            <div class="gallery-item" data-groups='["video"]' data-src="https://www.youtube.com/watch?v=AZ3AVR7VnqA">
              <a href="https://www.youtube.com/watch?v=hdEAWW7tZSA">
                <div class="overlay"><span><i class="icon-music-play"></i></span></div>
                <img src="img/gallery-widget/5.jpg" alt="3"/>
              </a>
            </div>
            <!--Item-->
            <div class="gallery-item" data-groups='["Belts"]' data-src="img/gallery-widget/4.jpg">
              <a href="img/gallery-widget/4.jpg">
                <div class="overlay"><span><i class="icon-expand"></i></span></div>
                <img src="img/gallery-widget/4.jpg" alt="4"/>
              </a>
            </div>
            <!--Item-->
            <div class="gallery-item" data-groups='["Gloves"]' data-src="img/gallery-widget/5.jpg">
              <a href="img/gallery-widget/5.jpg">
                <div class="overlay"><span><i class="icon-expand"></i></span></div>
                <img src="img/gallery-widget/5.jpg" alt="5"/>
              </a>
            </div>
            <!--Item-->
            <div class="gallery-item" data-groups='["Gloves"]' data-src="img/gallery-widget/6.jpg">
              <a href="img/gallery-widget/6.jpg">
                <div class="overlay"><span><i class="icon-expand"></i></span></div>
                <img src="img/gallery-widget/6.jpg" alt="6"/>
              </a>
            </div>
          </div>
        </div>
      </section><!--Gallery Widget Close-->
      
      
    </div><!--Page Content Close-->
    
    <!--Sticky Buttons-->
    <div class="sticky-btns">
    	<form class="quick-contact ajax-form" method="post" name="quick-contact">
      	<h3>Contacter nous</h3>
        
        <div class="form-group">
        	<label for="qc-name">Nom Complet</label>
          <input class="form-control input-sm" type="text" name="name" id="qc-name" placeholder="Entrer votre nom">
        </div>
        <div class="form-group">
        	<label for="qc-email">Email</label>
          <input class="form-control input-sm" type="email" name="email" id="qc-email" placeholder="Entrer votre mail">
        </div>
        <div class="form-group">
        	<label for="qc-message">Votre message</label>
          <textarea class="form-control input-sm" name="message" id="qc-message" placeholder="Entrer votre message"></textarea>
        </div>
        <!-- Validation Response -->
        <div class="response-holder"></div>
        <!-- Response End -->
        <input class="btn btn-black btn-sm btn-block" type="submit" value="Envoyer">
      </form>
    	<span id="qcf-btn"><i class="fa fa-envelope-o" ></i></span>
      <span id="scrollTop-btn"><i class="fa fa-chevron-up"></i></span>
    </div><!--Sticky Buttons Close-->
    
    <!--Subscription Widget-->
    <section class="subscr-widget gray-bg">
      <div class="container">
        <div class="row">
          <div class="col-lg-7 col-md-8 col-sm-8">
            <h2>Abonnez vous à notre newsletter</h2>
            <form class="subscr-form" role="form" autocomplete="off">
              <div class="form-group">
                <label class="sr-only" for="subscr-name">Entrer votre nom</label>
                <input type="text" class="form-control" name="subscr-name" id="subscr-name" placeholder="Entrer votre e-mail" required>
                <button class="subscr-next"><i class="icon-arrow-right"></i></button>
              </div>
              <div class="form-group fff" style="display: none">
                <label class="sr-only" for="subscr-email">Entrer votre email</label>
                <input type="email" class="form-control" name="subscr-email" id="subscr-email" placeholder="Enter email" required>
                <button type="submit" id="subscr-submit"><i class="icon-check"></i></button>
              </div>
            </form>
            <p class="p-style2">Merci de remplir le champ avant de continuer</p>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4 col-lg-offset-1">
            <p class="p-style3">Inscrivez vous à la newsletter et recevez nos actualités mensuelles</p>
          </div>
        </div>
      </div>
    </section><!--Subscription Widget Close-->
      
  	<!--Footer-->
    <footer class="footer">
    	<div class="container">
      	<div class="row">
        	<div class="col-lg-5 col-md-5 col-sm-5">
          	<div class="info">
              <a class="logo" href="home-fullscreen.html"><img src="img/logo-footer.png" alt="Laure Montigny"/></a>
          
              <div class="social">
              	<a href="#" style="color: black;"><i class="fa fa-instagram"></i></a>
              	<a href="#" target="_blank" style="color: black;"><i class="fa fa-youtube-square"></i></a>
              	<a href="#" target="_blank" style="color: black;"><i class="fa fa-twitter"></i></a>
              	<a href="#" target="_blank"style="color: black;"><i class="fa fa-google-plus-square"></i></a>
              	<a href="#" target="_blank"style="color: black;"><i class="fa fa-pinterest-square"></i></a>
              	<a href="#" target="_blank"style="color: black;"><i class="fa fa-facebook-square"></i></a>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-4 col-sm-4">
          	<h2 style="color: black;">Informations</h2>
            <i class="fa-paper-plane"></i><a href="contacts.html"><p class="p-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact</a></br>
            <a href="contact.html">Mentions Legales</a></p>

          </div>
            <div class="contacts col-lg-3 col-md-3 col-sm-3">
            	<h2 style="color: black;">Contact</h2>
             <i class="fa-map-marker"></i><p class="p-style3" > &nbsp;&nbsp;&nbsp;
              	3,rue Jbel Bouiblane,<br/>
                Triangle d'or,Casablanca<br/>
                <i class="fa-envelope"></i><a href="mailto:mail@Limo.com">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact@lauremontigny.com</a></br>             
               
                 <i class="fa-phone"></i> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+212 699889803</p>
            </div>
          </div>
        <div class="copyright">
        	<div class="row">
          	<div class="col-lg-7 col-md-7 col-sm-7">
              <p>© <a href="#" target="_blank" style="color: black;">Laure Montigny</a> 2016, powered by <a href="#" target="_blank" style="color: black;"> Ago-Solutions</a>.
            </div>
          	<div class="col-lg-5 col-md-5 col-sm-5">
            	<div class="payment">
                <img src="img/payment/visa.png" alt="Visa"/>
                <img src="img/payment/paypal.png" alt="PayPal"/>
                <img src="img/payment/master.png" alt="Master Card"/>
                <img src="img/payment/discover.png" alt="Discover"/>
                <img src="img/payment/amazon.png" alt="Amazon"/>
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer><!--Footer Close-->
    
    <!--Javascript (jQuery) Libraries and Plugins-->
		<script src="js/libs/jquery-1.11.1.min.js"></script>
		<script src="js/libs/jquery-ui-1.10.4.custom.min.js"></script>
    <script src="js/libs/jquery.easing.min.js"></script>
		<script src="js/plugins/bootstrap.min.js"></script>
		<script src="js/plugins/smoothscroll.js"></script>
		<script src="js/plugins/jquery.validate.min.js"></script>
		<script src="js/plugins/icheck.min.js"></script>
		<script src="js/plugins/jquery.placeholder.js"></script>
		<script src="js/plugins/jquery.stellar.min.js"></script>
		<script src="js/plugins/jquery.touchSwipe.min.js"></script>
		<script src="js/plugins/jquery.shuffle.min.js"></script>
    <script src="js/plugins/lightGallery.min.js"></script>
    <script src="js/plugins/owl.carousel.min.js"></script>
    <script src="js/plugins/masterslider.min.js"></script>
    <script src="mailer/mailer.js"></script>
		<script src="js/scripts.js"></script>

    <script src="color-switcher/color-switcher.js"></script>

    <!--Google Remarketing Tag (Placed before </body>)-->
  <script type="text/javascript">
  /* <![CDATA[ */
  var google_conversion_id = 966923546;
  var google_custom_params = window.google_tag_params;
  var google_remarketing_only = true;
  /* ]]> */
  </script>
  <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
  </script>
  <noscript>
  <div style="display:inline;">
  <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/966923546/?value=0&amp;guid=ON&amp;script=0"/>
  </div>
  </noscript>

  </body><!--Body Close-->
</html>
