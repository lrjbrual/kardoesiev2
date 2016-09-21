##for Jumbotron
Deface::Override.new(
 virtual_path: "spree/home/index",
 name: "jumbotron",
 insert_before: "[data-hook='homepage_products']",
 text: "
 <div id='myCarousel' class='carousel slide'>
   <div class='carousel-inner'>
     <div class='item active'>
       <%= image_tag(('banner-bag03.jpeg'), class: 'img-responsive image-banner') %>
       <div class='container'>
         <div class='carousel-caption'>
           <h1>Example headline.</h1>
           <p class='lead'>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
           <a class='btn btn-large btn-primary' href='#'>Sign up today</a>
         </div>
       </div>
     </div>
     <div class='item'>
       <%= image_tag(('banner-bag01.jpeg'), class: 'img-responsive image-banner') %>
       <div class='container'>
         <div class='carousel-caption'>
           <h1>Another example headline.</h1>
           <p class='lead'>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
           <a class='btn btn-large btn-primary' href='#'>Learn more</a>
         </div>
       </div>
     </div>
     <div class='item'>
       <%= image_tag(('banner-bag02.jpeg'), class: 'img-responsive image-banner') %>
       <div class='container'>
         <div class='carousel-caption'>
           <h1>One more for good measure.</h1>
           <p class='lead'>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
           <a class='btn btn-large btn-primary' href='#'>Browse gallery</a>
         </div>
       </div>
     </div>
     <div class='item'>
       <%= image_tag(('banner-bag04.jpeg'), class: 'img-responsive image-banner') %>
       <div class='container'>
         <div class='carousel-caption'>
           <h1>One more for good measure.</h1>
           <p class='lead'>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
           <a class='btn btn-large btn-primary' href='#'>Browse gallery</a>
         </div>
       </div>
     </div>
   </div>
   <a class='left carousel-control' href='#myCarousel' data-slide='prev'>‹</a>
   <a class='right carousel-control' href='#myCarousel' data-slide='next'>›</a>
 </div>

      "
)


    # <div class='jumbotron'>
    #        <div class='container text-center'>
    #          <div id='carousel-example-generic' class='carousel slide' data-ride='carousel'>
    #            <!-- Indicators -->
    #            <ol class='carousel-indicators'>
    #              <li data-target='#carousel-example-generic' data-slide-to='0' class='active'></li>
    #              <li data-target='#carousel-example-generic' data-slide-to='1'></li>
    #              <li data-target='#carousel-example-generic' data-slide-to='2'></li>
    #            </ol>
    #
    #            <!-- Wrapper for slides -->
    #            <div class='carousel-inner' role='listbox'>
    #              <div class='item active'>
    #                <%= image_tag(('banner-bag.jpeg'), class: 'banner-images img-responsive') %>
    #                <div class='carousel-caption'>
    #                </div>
    #              </div>
    #              <div class='item'>
    #                <%= image_tag(('banner-bag.jpeg'), class: 'banner-images img-responsive') %>
    #                <div class='carousel-caption'>
    #                   <%= link_to Spree.t(:shop_now), spree.products_path, class: 'btn-shop' %>
    #                </div>
    #              </div>
    #            </div>
    #        </div>
    #      </div>
