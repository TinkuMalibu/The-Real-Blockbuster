class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  before_save :validar_fecha

  validates :rent_date, :return_date, presence: true
  def validar_fecha
    if return_date < rent_date
      errors.add(:base, 'La fecha de renta debe ser menor a la de devolucion')
      throw(:abort)
    end
  end
end
