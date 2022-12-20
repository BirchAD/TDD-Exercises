require "./lib/person"

describe Person do
  describe "#full_name" do
    it "concatenates first name, middle name, and last name with spaces" do
      person = Person.new(
        first_name: "John",
        middle_name: "Dave",
        last_name: "Doe"
        )
      expect(person.full_name).to eql("John Dave Doe")
    end

    it "does not add extra spaces if middle name is missing" do
      person = Person.new(
        first_name: "James",
        last_name: "Bond"
        )
      expect(person.full_name).to eql("James Bond")
    end
  end

  describe "#full_name_with_middle_initial" do
    it "returns their full name with the middle initial" do
      person = Person.new(
        first_name: "John",
        middle_name: "Dave",
        last_name: "Doe"
        )
      expect(person.full_name_with_middle_initial).to eql("John D Doe")
    end

    it "returns their full name with appropriate spacing if no middle name" do
      person = Person.new(
        first_name: "James",
        last_name: "Bond"
        )
      expect(person.full_name_with_middle_initial).to eql("James Bond")
    end
  end

  describe "#initials" do
    it "returns the intials of first, middle and last name" do
      person = Person.new(
        first_name: "John",
        middle_name: "Dave",
        last_name: "Doe"
        )
      expect(person.initials).to eql("JDD")
    end

    it "returns the initials of first and last name if no middle name" do
      person = Person.new(
        first_name: "James",
        last_name: "Bond"
        )
      expect(person.initials).to eql("JB")
    end
  end
end
