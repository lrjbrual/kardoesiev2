
Deface::Override.new(:virtual_path => "spree/shared/_products",
name: "replace_productdesign",
replace: "div#products") do
  "
  <% if products.any? %>
    <div id='products' class='row container' data-hook>
      <% products.each do |product| %>
        <% url = spree.product_url(product, taxon_id: @taxon.try(:id)) %>
        <div id='product_<%= product.id %>' class='col-md-3 col-sm-6 col-xs-6 product-list-item' data-hook='products_list_item' itemscope itemtype='https://schema.org/Product'>
          <div class='panel panel-default'>
            <% cache(@taxon.present? ? [I18n.locale, current_currency, @taxon, product] : cache_key_for_product(product)) do %>
              <div class='panel-body text-center product-body'>
                <%= link_to url, itemprop: 'url' do %>
                  <%= large_image(product, itemprop: 'image', class: 'img-responsive img-size') %>
                  <%= content_tag(:span, truncate(product.name, length: 50), class: 'info', itemprop: 'name', title: product.name) %>
                <% end %>
                <br/>
              </div>
              <div class='panel-footer text-center'>
                <span itemprop='offers' itemscope itemtype='https://schema.org/Offer'>
                <span class='price selling lead' itemprop='price'><%= display_price(product) %></span>
                </span>
              </div>
            <% end %>
          </div>
        </div>
      <% end %>
      <% reset_cycle('classes') %>
    </div>
  <% end %>
  <% if products.respond_to?(:total_pages) %>
    <%= paginate products, theme: 'twitter-bootstrap-3' %>
  <% end %>
  </div>
  "
end

Deface::Override.new(:virtual_path => "spree/products/show",
name: "products_show",
replace: "[data-hook='product_show']") do
  "
    <div data-hook='product_show' class='row container contain-show' itemscope itemtype='https://schema.org/Product'>
      <div class='col-md-4 col-sm-5' data-hook='product_left_part'>
        <div data-hook='product_left_part_wrap'>
          <div id='product-images' data-hook='product_images'>
            <div id='main-image' class='panel panel-default' data-hook>
              <div class='panel-body text-center'>
                <%= render :partial => 'image' %>
              </div>
            </div>
            <div id='thumbnails' data-hook>
              <%= render :partial => 'thumbnails' %>
            </div>
          </div>

          <div data-hook='product_properties'>
            <%= render :partial => 'properties' %>
          </div>

          <div data-hook='promotions'>
            <%= render :partial => 'promotions' %>
          </div>
        </div>
      </div>

      <div class='col-md-8 col-sm-7' data-hook='product_right_part'>
        <div data-hook='product_right_part_wrap'>
          <div id='product-description' data-hook='product_description'>
            <h1 class='product-title' itemprop='name'><%= @product.name %></h1>

            <div class='well' itemprop='description' data-hook='description'>
              <%= product_description(@product) %>
            </div>

            <div id='cart-form' data-hook='cart_form'>
              <%= render :partial => 'cart_form' %>
            </div>
          </div>

          <div id='taxon-crumbs' class=' five ' data-hook='product_taxons'>
            <%= render :partial => 'taxons' %>
          </div>
        </div>
      </div>
    </div>
  "
end
