Spree::ProductsController.class_eval do
  before_filter :load_taxonomies, :only => :show

  def load_taxonomies
    @taxonomies = Spree::Taxonomy.all
  end
end
