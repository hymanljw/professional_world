# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :text(4294967295)
#  desp       :text(4294967295)
#  user_id    :integer
#  like_count :integer
#  type       :string(255)
#  usable     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Article < ApplicationRecord

  belongs_to :user

end
