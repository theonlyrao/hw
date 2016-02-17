class Credit

  def initialize(name)
    @name = name
    @credit_lines = Hash.new
  end

  def name
    @name
  end

  def open_credit(person, limit, interest)
    # Needs to get the credit object into
    # the person's credits array
    # whichever credit object we called open_credit on Needs
    # to get shovvelled in
    person.credits << self
    @credit_lines[person] = limit
  end

  def available_credit(person)
    # get limit for this specific person
    @credit_lines[person]
  end

  def cc_spend(person, amount)
    # reduce their credit line by the specified amount
    # credit line lives in @credit_lines and is retrieved

    # check that amount we're reducing is not more than their limit
    # check that this person actually has an account

    # using the person as a key
    # reducing it would need to ... subtract from their credit line

    # if that person has account, do this:

    # otherwise:
    # return simple error message "credit does not exist..."

    if @credit_lines.include?(person)
      @credit_lines[person] -= amount
    else
      p "Credit does not exist for #{person.name}"
    end
  end

end
