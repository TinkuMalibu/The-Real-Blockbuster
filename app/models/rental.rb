class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :movie
  before_save :validar_fecha

  validates :rent_date, :return_date, presence: true
  def validar_fecha
    if rent_date.present? && return_date.present?
      if return_date < rent_date
        errors.add(:base, 'La fecha de renta debe ser menor a la de devolución')
      end
      if rent_date < Time.zone.today
        errors.add(:base, 'La fecha inicial de renta debe ser superior o igual al día actual')
      end
    else
      errors.add(:base, 'La fecha de renta y la fecha de devolución no pueden estar vacías')
    end
    throw(:abort) if errors.any?
  end
end
