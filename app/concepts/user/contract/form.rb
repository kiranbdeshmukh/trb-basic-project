require 'reform'

module User::Contract
  class Form < Reform::Form
    property :name
    property :email
    property :mobile_number

    validates :name, :email, :mobile_number, presence: true
    # validate :email, uniqueness:true
    # validates_uniqueness_of :email
  end
end 
