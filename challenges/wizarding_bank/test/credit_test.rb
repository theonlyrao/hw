require 'minitest/autorun'
require 'minitest/pride'
require '../lib/credit'
require '../lib/wizarding_bank'

class TestCredit < Minitest::Test

  def test_easy
    assert true
  end

  def test_makes_a_credit
    # make one vvvvvv
    credit = Credit.new("AMEX")
    # some way to verify what was made
    assert_equal "AMEX", credit.name
  end

  def test_opens_line_of_credit
    credit = Credit.new("AMEX")
    person1 = Person.new("Mars", 100)

    credit.open_credit(person1, 100, 0.05)
    # ^^^^ Needs to get the credit object into
    # the person's credits array

    # want person to know what credit cards they have as well as associated info

    assert_equal "AMEX", person1.credits.first.name
    assert_equal 100,  credit.available_credit(person1)
  end

  def test_can_track_credit_for_multiple_people
    # 1 - set up / create some objects
    credit = Credit.new("AMEX")
    person1 = Person.new("Mars", 100)
    person2 = Person.new("Pizza Man", 75)

    # 2 - do some stuff / work / call methods
    credit.open_credit(person1, 100, 0.05)
    credit.open_credit(person2, 75, 0.05)

    # 3 - make some assertions / check some values
    assert_equal 100,  credit.available_credit(person1)
    assert_equal 75,  credit.available_credit(person2)
  end

  def test_cc_spend_pays_against_credit_line
    credit = Credit.new("AMEX")
    person1 = Person.new("Mars", 100)

    credit.open_credit(person1, 100, 0.05)

    assert_equal 100,  credit.available_credit(person1)

    credit.cc_spend(person1, 30)

    assert_equal 70, credit.available_credit(person1)
  end

  def test_cant_cc_spend_for_someone_with_no_credit_line
    credit = Credit.new("AMEX")
    person1 = Person.new("Mars", 100)

    output = credit.cc_spend(person1, 34)

    assert_equal "Credit does not exist for #{person1.name}", output

  end

  def test_cant_overspend_credit_limit
  end

end
