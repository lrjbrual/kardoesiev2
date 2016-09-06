Deface::Override.new(
  virtual_path: "spree/shared/_sidebar",
  name: "remove_sidebar",
  remove: "aside#sidebar"
  )

##for Jumbotron
Deface::Override.new(
 virtual_path: "spree/layouts/spree_application",
 name: "jumbotron",
 insert_before: "div#content",
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
  replace: "div#content") do
    "
    <div id='content' class='<%= !content_for?(:sidebar) ? 'col-sm-12' : 'col-sm-8 col-md-12' %>' data-hook>
      <%= flash_messages %>
      <%= yield %>
    </div>
    "
  end

#deface body for java script
Deface::Override.new(
 virtual_path: "spree/layouts/spree_application",
 name: "icon-return",
 insert_before: "div#spree-header",
 text: "
 <a href='javascript:' id='return-to-top'><i class='icon-chevron-up'></i></a>
 "
 )
