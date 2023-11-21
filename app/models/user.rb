class User < ApplicationRecord
  scope :find_active, lambda {
    where(active: true)
  }

  after_create :create_person

  private

  def create_person
    Person.create(name: name, active: active)
  end
end
