module TeaclixBreadcrumbHelper
  def teaclix_breadcrumbs(taxon)
    return "" if current_page?("/") || taxon.nil?

    crumbs = [[Spree.t(:home), spree.root_path]]

    if taxon
      crumbs << [Spree.t(:products), products_path]
      crumbs += taxon.ancestors.collect { |a| [a.name, spree.nested_taxons_path(a.permalink)] } unless taxon.ancestors.empty?
      crumbs << [taxon.name, spree.nested_taxons_path(taxon.permalink)]
    else
      crumbs << [Spree.t(:products), products_path]
    end

    crumbs.map! do |crumb|
      content_tag(:li, itemscope:"itemscope", itemtype:"http://data-vocabulary.org/Breadcrumb") do
        link_to(crumb.last, itemprop: "url") do
          content_tag(:span, crumb.first, itemprop: "title")
        end
      end
    end

    content_tag(:nav, content_tag(:ul, raw(crumbs.map(&:mb_chars).join), class: 'breadcrumb'), id: 'breadcrumbs', class: 'sixteen columns')

  end
end
