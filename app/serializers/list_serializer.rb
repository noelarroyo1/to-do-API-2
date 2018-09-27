class ListSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :title, :private

  def title
    object.title
  end

  def created_at
    object.created_at.strftime('%B %d, %Y')
  end
end
