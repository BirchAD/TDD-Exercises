class Person
  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name
    @middle_name.nil? ? "#{@first_name} #{@last_name}" : "#{@first_name} #{@middle_name} #{@last_name}"
  end

  def full_name_with_middle_initial
    @middle_name.nil? ? "#{@first_name} #{@last_name}" : "#{@first_name} #{@middle_name[0]} #{@last_name}"
  end

  def initials
    @middle_name.nil? ? "#{@first_name[0]}#{@last_name[0]}" : "#{@first_name[0]}#{@middle_name[0]}#{@last_name[0]}"
  end
end
