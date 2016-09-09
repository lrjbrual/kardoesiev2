Deface::Override.new(
  virtual_path: "spree/shared/_sidebar",
  name: "remove_sidebar",
  remove: "aside#sidebar"
  )

##for Jumbotron
Deface::Override.new(
 virtual_path: "spree/home/index",
 name: "jumbotron",
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
      "
)

#deface content
  Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
  name: "remove_sidebar",
  replace: "div.container") do
    "
      <div class='container'>
         <div class='row' data-hook>
           <%= breadcrumbs(@taxon) %>
           <%= render partial: 'spree/shared/sidebar' if content_for? :sidebar %>
          <div id='content' class='<%= !content_for?(:sidebar) ? 'col-sm-12' : 'col-sm-8 col-md-12' %>' data-hook>
            <%= flash_messages %>
            <%= yield %>
          </div>
          <%= yield :templates %>
        </div>
      </div>
    "
  end

# #deface body for java script
# Deface::Override.new(
#  virtual_path: "spree/layouts/spree_application",
#  name: "icon-return",
#  insert_before: "div#spree-header",
#  text: "
#  <a href='javascript:' id='return-to-top'><i class='icon-chevron-up'></i></a>
#  "
#  )
