# encoding: UTF-8
class Requisition < ActiveRecord::Base
  attr_accessible :comment, :contact_person, :doc, :email, :name_organization, :phone_number

  dragonfly_accessor :doc


  validates :name_organization, length: {minimum: 5, maximum: 30,
                                            :message => "Название организации- это поле быть заполнено должно и содержать минимум 5 символов " " лов " }
  validates :contact_person, length: {minimum: 5, maximum: 30,
                                       :message =>"Контактное лицо- это поле быть заполнено должно и содержать минимум 5 символов " }
  validates :email, length: {minimum: 5, maximum: 20,
                             :message =>"Email- это поле быть заполнено должно и содержать минимум 5 символов " }
  validates :phone_number, length: {minimum: 5, maximum: 20,
                               :message =>"Телефон- это поле быть заполнено должно и содержать минимум 5 символов " }
  validates_property :ext, of: :doc, in:['docx', 'doc', 'txt'],
                     :message => "Документ должен иметь одно из расширений: .doc, .docx, .txt "

end
