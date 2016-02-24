class Owner < ActiveRecord::Base
  has_many :custodies
  has_many :dogs, :through => :custodies

  def name
    "#{last_name}, #{first_name}"
  end

end
