# == Schema Information
#
# Table name: papers
#
#  id         :bigint           not null, primary key
#  content    :text
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Paper < ApplicationRecord
validates :title, presence: true
validates :content, presence: true

  after_create_commit { broadcast_prepend_to "papers" }
  after_update_commit { broadcast_replace_to "papers" }
  after_destroy_commit { broadcast_remove_to "papers" }
end
