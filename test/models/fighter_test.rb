require "test_helper"

class FighterTest < ActiveSupport::TestCase
  test 'should save valid fighter' do
    fighter = Fighter.new(name: 'Daniel Cormier', weight_class: 'Heavyweight', fight_record: '22-3-0')

    assert fighter.save
  end

  test 'should not save fighter without name' do
    fighter = Fighter.new(weight_class: 'Heavyweight', fight_record: '22-3-0')

    assert_not fighter.save
    assert fighter.errors.full_messages.include?("Name can't be blank")
  end

  test 'should not save fighter without weight class' do
    fighter = Fighter.new(name: 'Daniel Cormier', fight_record: '22-3-0')

    assert_not fighter.save
    assert fighter.errors.full_messages.include?("Weight class can't be blank")
  end

  test 'should not save fighter without fight record' do
    fighter = Fighter.new(name: 'Daniel Cormier', weight_class: 'Heavyweight')

    assert_not fighter.save
    assert fighter.errors.full_messages.include?("Fight record can't be blank")
  end
end
