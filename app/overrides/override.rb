Deface::Override.new(
  virtual_path: "spree/shared/_sidebar",
  name: "remove_sidebar",
  remove: "aside#sidebar"
  )

Deface::Override.new(
 virtual_path: "spree/layouts/spree_application",
 name: "facebook",
 insert_before: "div.container") do
   "
       <div id='fb-root'></div>
      <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = ''//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.7&appId=1288595431165026';
      fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));</script>
      "
    end


#deface content
  Deface::Override.new(:virtual_path => "spree/layouts/spree_application",
  name: "remove_sidebar",
  replace: "div.container") do
    "
      <div class='wrapper'>
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
