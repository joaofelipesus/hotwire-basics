class Fighter < ApplicationRecord
  validates :name, :weight_class, :fight_record, presence: true

  enum weight_class: {
    flyweight: 'Flyweight',
    bantamweight: 'Bantamweight',
    featherweight: 'Featherweight',
    lightweight: 'Lightweight',
    welterweight: 'Welterweight',
    middleweight: 'Middleweight',
    light_heavyweight: 'Light Heavyweight',
    heavyweight: 'Heavyweight'
  }
end
