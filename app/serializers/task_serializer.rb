class TaskSerializer < ActiveModel::Serializer
  attributes :amount, :pp_amount, :content, :thumbnail_url, :task_type, :url

  def pp_amount
    "$#{'%.2f' % object.amount}"
  end
end
