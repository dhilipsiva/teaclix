Deface::Override.new(
  :virtual_path => 'spree/shared/_header',
  :name => 'customize_logo',
  :replace => "#logo",
  :text => "<%= link_to Teaclix, spree.root_path %>")
