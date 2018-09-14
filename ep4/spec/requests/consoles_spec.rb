require 'rails_helper'

RSpec.describe 'Consoles requests' do
	before do
			Console.create(name: 'NES', manufacturer: 'Nintendo')
			Console.create(name: 'Wii', manufacturer: 'Nintendo')
			Console.create(name: 'Genesis', manufacturer: 'Sega')
			Console.create(name: 'Xbox', manufacturer: 'Microsoft')
			Console.create(name: 'Switch', manufacturer: 'Nintendo')
			Console.create(name: 'PS1', manufacturer: 'Sony')
			Console.create(name: 'PS2', manufacturer: 'Sony')
	end

	describe 'GET /consoles' do
		it 'returns an array of the consoles' do
			get('/consoles')
			expect(response_json['consoles']).to contain_exactly(
				'NES',
				'SNES',
				'Wii',
				'Genesis',
				'Xbox',
				'Switch',
				'PS1',
				'PS2'
				)
		end
	end
end