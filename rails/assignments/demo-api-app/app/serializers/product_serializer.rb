class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :category_name

  def category_name
    Category.find_by(id: object.category_id).name
  end
end
