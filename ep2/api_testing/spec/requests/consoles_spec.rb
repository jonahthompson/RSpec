require 'rails_helper'

RSpec.describe 'Consoles requests' do

	describe 'GET /consoles' do
		it 'returns an array of some consoles' do
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

		it 'supports specifying consoles for manufacturer Nintendo' do
			get('/consoles', params: { manufacturer: 'Nintendo' })
			expect(response_json['consoles']).to contain_exactly(
				'NES',
				'SNES',
				'Wii',
				'Switch'
			)
		end

		it 'supports specifying consoles for manufacturer Sega' do
			get('/consoles', params: { manufacturer: 'Sega' })
			expect(response_json['consoles']).to contain_exactly(
				'Genesis'
			)
		end
	end
end