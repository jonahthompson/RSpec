require 'rspec'
require_relative 'dog'

RSpec.describe Dog do
	describe '#bark' do
		it 'returns the "Woof!"' do
			dog = Dog.new
			expect(subject.bark).to eql('Woof!')
		end
 	end

 	describe '#feed' do
 		it 'is no longer hungry' do
 			subject.feed
 			expect(subject).to_not be_hungry
 		end
 	end

 	describe '#hungry?' do
 		context 'when hunger_level is more than 5' do
 			subject { described_class.new(hunger_level: 7)  }
	 		it 'returns true' do
		 		expect(subject).to be_hungry
		 	end
		end

		context 'when hunger_level is 5 or less' do
			subject { described_class.new(hunger_level: 5) }
		 	it 'returns false' do
		 		expect(subject).to_not be_hungry
		 	end
		end
 	end
end