require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'top_3_statistics' do
    before :each do
      @astronaut_1 = Astronaut.create(Name: "Neil Armstrong", Age: 37, Job: "Commander")
      @astronaut_2 = Astronaut.create(Name: "Ndgl Armsdgong", Age: 39, Job: "Officer")
      @astronaut_3 = Astronaut.create(Name: "sdeil Armsfg", Age: 38, Job: "Lieutenant")
    end

    it '.averages_ages' do
      expected = 38
      actual = .average_age

      expect(actual).to eq(expected)
    end

end
