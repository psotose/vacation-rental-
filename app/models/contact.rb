class Contact < ApplicationRecord
  include ActiveModel::Validations
  
  validates_presence_of :name, :rut, :message, :email
  validates :email,
  :format => { :with => /\A[^@\s]+@[^@\s]+\z/ }
  validates :message, :length => {:in => 10..750}          
  validates_with RUTValidator
end