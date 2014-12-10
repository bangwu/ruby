class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :context, length:{maximum:140}
  validates :context, length:{minimum:1}
end
