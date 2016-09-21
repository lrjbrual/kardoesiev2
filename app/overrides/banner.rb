##for Jumbotron
Deface::Override.new(
 virtual_path: "spree/home/index",
 name: "jumbotron",
 insert_before: "[data-hook='homepage_products']",
 text: "<div class='jumbotron'>
        <div class='container text-center'>
          <div id='carousel-example-generic' class='carousel slide' data-ride='carousel'>
            <!-- Indicators -->
            <ol class='carousel-indicators'>
              <li data-target='#carousel-example-generic' data-slide-to='0' class='active'></li>
              <li data-target='#carousel-example-generic' data-slide-to='1'></li>
              <li data-target='#carousel-example-generic' data-slide-to='2'></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class='carousel-inner' role='listbox'>
              <div class='item active jumbotron-image'>
                <div class='carousel-caption'>
                  ...
                </div>
              </div>
              <div class='item'>
                <img src='...' alt='...'>
                <div class='carousel-caption'>
                   <%= link_to Spree.t(:shop_now), spree.products_path, class: 'btn-shop' %>
                </div>
              </div>
              ...
            </div>
        </div>
      </div>
      "
)
