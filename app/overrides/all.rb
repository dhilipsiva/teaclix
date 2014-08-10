=begin
Deface::Override.new(
  :virtual_path => 'spree/shared/_header',
  :name => 'customize_logo',
  :replace => "#logo",
  :text => "<%= link_to Teaclix, spree.root_path %>")


Deface::Override.new(
  :virtual_path => 'spree/shared/_header',
  :name => 'set_header_attributes',
  :set_attributes => "#header",
  :attributes => {
    :class => "navbar navbar-custom navbar-fixed-top megamenu",
    :role => "navigation"
  })

Deface::Override.new(
  :virtual_path => 'spree/shared/_header',
  :name => 'set_top_nav_bar_class',
  :set_attributes => "#top-nav-bar",
  :attributes => {
    :class => "navbar-top"
  })
=end

Deface::Override.new(
  :virtual_path => 'spree/shared/_main_nav_bar',
  :name => 'set_main_nav_bar_class',
  :set_attributes => "#main-nav-bar",
  :attributes => {
    :class => "userMenu"
  })


Deface::Override.new(
  :virtual_path => 'spree/shared/_nav_bar',
  :name => 'set_nav_bar_class',
  :set_attributes => "#nav-bar",
  :attributes => {
    :class => "userMenu"
  })


Deface::Override.new(
  :virtual_path => 'spree/shared/_sidebar',
  :name => 'set_sidebar_class',
  :set_attributes => "#sidebar",
  :attributes => {
    :class => "col-lg-3 col-md-3 col-sm-12"
  })


Deface::Override.new(
  :virtual_path => 'spree/layouts/spree_application',
  :name => 'set_product_class',
  :set_attributes => "#content",
  :attributes => {
    :class => "col-lg-9"
  })


Deface::Override.new(
  :virtual_path => 'spree/shared/_products',
  :name => 'set_individual_product_class',
  :set_attributes => "#product",
  :attributes => {
    :class => "row  categoryProduct xsResponse clearfix"
  })



Deface::Override.new(
  :virtual_path => 'spree/shared/_taxonomies',
  :name => 'set_category_heading',
  :replace => "h6",
  :text => "<h4>Categories</h4>")


Deface::Override.new(
  :virtual_path => 'spree/shared/_taxonomies',
  :name => 'set_category_heading_color',
  :set_attributes => "h4",
  :attributes => {
    :class => "panel-heading"
   # :style => "background-color:red"
  })


=begin
Deface::Override.new(
  :virtual_path => 'spree/layouts/spree_application',
  :name => 'set_category_heading',
  :set_attributes => "#",
  :attributes => {
    :class => "panel-title"
  })
=end
