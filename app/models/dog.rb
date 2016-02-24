class Dog < ActiveRecord::Base
  belongs_to :breed
  belongs_to :vet
  has_many :custodies
  has_many :owners, :through => :custodies

  accepts_nested_attributes_for :custodies, :reject_if => :all_blank, :allow_destroy => true

  def last_name
    if custodies.empty?
      "(none)"
    else
    custodies.first.owner.last_name
  end
  end
end
