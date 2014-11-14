class ItemBacklog < ActiveRecord::Base
  belongs_to :status
  belongs_to :classificacao
  belongs_to :user
end
