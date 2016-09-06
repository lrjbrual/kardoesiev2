Deface::Override.new(
  virtual_path: "spree/shared/_sidebar",
  name: "remove_sidebar",
  remove: "aside#sidebar"
  )



Deface::Override.new(
 virtual_path: "spree/home/index",
 name: "login",
 insert_before: "[data-hook='homepage_products']",
 text: "<div class='jumbotron'>
        <div class='container text-center'>
        <div id='jumbotron-spacing'>
        </div>
        <p>
          <a class='btn btn-lg btn-success'  role='button'><%= link_to Spree.t(:shop_now), spree.products_path %></a>
        </p>
        </div>
      </div>
      ")
