class Order < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :product
  after_create :set_code
  validates :contact, presence: true
  def set_code
    self.code = "06#{Time.now.strftime("%Y%m%d")}#{Time.now.strftime("%S")}#{("%03d" % self.id)}"
    self.save!
  end
end
