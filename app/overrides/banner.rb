##for Jumbotron
Deface::Override.new(
 virtual_path: "spree/home/index",
 name: "jumbotron",
 insert_before: "[data-hook='homepage_products']",
 text: "
 <div id='myCarousel' class='carousel slide'>
          <ol class='carousel-indicators'>
               <li data-target='#myCarousel' data-slide-to='0' class='active'></li>
               <li data-target='#myCarousel' data-slide-to='1'></li>
               <li data-target='#myCarousel' data-slide-to='2'></li>
               <li data-target='#myCarousel' data-slide-to='3'></li>
             </ol>
   <div class='carousel-inner'>
     <div class='item active'>
       <%= image_tag(('banner-bag01.jpeg'), class: 'img-responsive image-banner') %>
       <div class='container'>
         <div class='carousel-caption'>
           <h2>Grab our latest products <br />20% off until September 30, 2016</h2>
           <%= link_to Spree.t(:shop_now), spree.products_path, class: 'btn-shop' %>
         </div>
       </div>
     </div>
     <div class='item'>
       <%= image_tag(('banner-bag02.jpeg'), class: 'img-responsive image-banner') %>
       <div class='container'>
         <div class='carousel-caption'>
         <h2>Grab our latest products <br />20% off until September 30, 2016</h2>
         <%= link_to Spree.t(:shop_now), spree.products_path, class: 'btn-shop' %>
         </div>
       </div>
     </div>
     <div class='item'>
       <%= image_tag(('banner-bag04.jpeg'), class: 'img-responsive image-banner') %>
       <div class='container'>
         <div class='carousel-caption'>
         <br /><br />
         <%= link_to Spree.t(:shop_now), spree.products_path, class: 'btn-shop' %>
         </div>
       </div>
     </div>
     <div class='item'>
       <%= image_tag(('banner-bag03.jpeg'), class: 'img-responsive image-banner') %>
       <div class='container'>
         <div class='carousel-caption'>
         <br /><br />
         <%= link_to Spree.t(:shop_now), spree.products_path, class: 'btn-shop' %>
         </div>
       </div>
     </div>
     </div>
   </div>
 </div>
"
)
