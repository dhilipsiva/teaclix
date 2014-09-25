Spree::Taxon.create!([
  {parent_id: nil, position: 0, name: "category", permalink: "category", taxonomy_id: 1, lft: 1, rgt: 2, icon_file_name: nil, icon_content_type: nil, icon_file_size: nil, icon_updated_at: nil, description: nil, meta_title: nil, meta_description: nil, meta_keywords: nil, depth: 0}
])
Spree::Taxonomy.create!([
  {name: "category", position: 0}
])
