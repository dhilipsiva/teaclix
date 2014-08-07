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
