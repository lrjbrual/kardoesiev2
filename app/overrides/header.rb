Deface::Override.new(
  virtual_path: "spree/shared/_header",
  name: "remove_header",
  remove: "header#header"
  )

Deface::Override.new(
  virtual_path: "spree/shared/_main_nav_bar",
  name: "insert_space",
  insert_after: "div#main-nav-bar",
  text: "<br /><br />"
  )

  # Deface::Override.new(
  #   virtual_path: "spree/shared/_header",
  #   name: "insert_space",
  #   insert_after: "ul#home-link",
  #   text: "hellow"
  #   )
  #
  # Deface::Override.new(
  #   virtual_path: "spree/shared/_header",
  #   name: "remove_navbar",
  #   replace: "div nav#main-nav-bar"
  #   ) do
  #   "
  #   <nav class='navbar navbar-fixed-top wrapper'>
  #     <div id='head-nav' class='container-fluid '>
  #       <!-- Brand and toggle get grouped for better mobile display -->
  #       <div class='navbar-header'>
  #         <button type='button' class='navbar-toggle collapsed' data-toggle='collapse' data-target='#bs-example-navbar-collapse-1' aria-expanded='false'>
  #           <span class='sr-only'>Toggle navigation</span>
  #           <span class='icon-bar'></span>
  #           <span class='icon-bar'></span>
  #           <span class='icon-bar'></span>
  #         </button>
  #         <a class='navbar-brand' href=''>Kardoesie</a>
  #       </div>
  #
  #       <!-- Collect the nav links, forms, and other content for toggling -->
  #       <div class='collapse navbar-collapse' id='bs-example-navbar-collapse-1'>
  #         <ul class='nav navbar-nav navbar-right'>
  #           <li class='active' data-hook><%= link_to Spree.t(:home), spree.root_path %></li>
  #           <li id='products-link' data-hook><%= link_to Spree.t(:products), spree.products_path %></li>
  #           <li id='about-link' data-hook><%= link_to Spree.t(:contact_us), main_app.contact_path %></li>
  #           <% if spree_current_user %>
  #             <li><%= link_to Spree.t(:my_account), spree.account_path %></li>
  #             <li><%= link_to Spree.t(:logout), spree.logout_path %></li>
  #           <% else %>
  #             <li id='link-to-login'><%= link_to Spree.t(:login), spree.login_path %></li>
  #           <% end %>
  #           <li id='link-to-cart' data-hook>
  #             <noscript>
  #               <%= link_to Spree.t(:cart), '/cart' %>
  #             </noscript>
  #           </li>
  #           <script>Spree.fetch_cart()</script>
  #         </ul>
  #       </div><!-- /.navbar-collapse -->
  #     </div><!-- /.container-fluid -->
  #   </nav>
  #
  #   "
  # end

  Deface::Override.new(
    virtual_path: "spree/shared/_main_nav_bar",
    name: "remove_navbar",
    replace: "div#main-nav-bar"
    ) do
    "
      <nav class='navbar navbar-fixed-top wrapper'>
        <div id='head-nav' class='container-fluid '>
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class='navbar-header'>
            <button type='button' class='navbar-toggle collapsed' data-toggle='collapse' data-target='#bs-example-navbar-collapse-1' aria-expanded='false'>
              <span class='sr-only'>Toggle navigation</span>
              <span class='icon-bar'></span>
              <span class='icon-bar'></span>
              <span class='icon-bar'></span>
            </button>
            <%= image_tag(('logo.png'), class: 'company-logo') %>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class='collapse navbar-collapse' id='bs-example-navbar-collapse-1'>
            <ul class='nav navbar-nav navbar-right'>
              <li class='active' data-hook>
                <%= link_to Spree.t(:home), spree.root_path %>
              </li>
              <li id='products-link' data-hook><%= link_to Spree.t(:products), spree.products_path %></li>
              <li id='about-link' data-hook><%= link_to Spree.t(:contact_us), main_app.contact_path %></li>
              <li class='dropdown'>
                <a class='dropdown-toggle' data-toggle='dropdown' role='button' aria-haspopup='true' aria-expanded='false'>Account</a>
                <ul class='dropdown-menu'>
                  <% if spree_current_user %>
                    <li><%= link_to Spree.t(:my_account), spree.account_path %></li>
                    <li><%= link_to Spree.t(:logout), spree.logout_path %></li>
                  <% else %>
                    <li id='link-to-login'><%= link_to Spree.t(:login), spree.login_path %></li>
                  <% end %>
                </ul>
              </li>


              <li id='link-to-cart' data-hook>
                <noscript>
                  <%= link_to Spree.t(:cart), '/cart' %>
                </noscript>
              </li>
              <script>Spree.fetch_cart()</script>
            </ul>
          </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
      </nav>

    "
  end
