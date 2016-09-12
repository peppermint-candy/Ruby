require 'rails_helper'

RSpec.describe Pet, type: :model do
  it 'requires a name' do
      pet = Pet.new(name: '')
      pet.valid?
      expect(pet.errors[:name].any?).to eq(true)
    end
    it 'requires an email' do
      pet = Pet.new(email: '')
      pet.valid?
      expect(pet.errors[:email].any?).to eq(true)
    end
    it 'accepts properly formatted email' do
      emails = ['kobe@lakers.com', 'kobe.bryant@lakers.com']
      emails.each do |email|
        pet = Pet.new(email: email)
        pet.valid?
        expect(pet.errors[:email].any?).to eq(false)
      end
    end
    it 'rejects improperly formatted email' do
      emails = %w[@ pet@ @example.com]
      emails.each do |email|
        pet = Pet.new(email: email)
        pet.valid?
        expect(pet.errors[:email].any?).to eq(true)
      end
    end
    it 'requires a unique, case insensitive email address' do
      pet1 = Pet.create(name:'kobe', email: 'kobe@lakers.com', password: 'password', password_confirmation: 'password')
      pet2 = Pet.new(email: pet1.email.upcase)
      pet2.valid?
      expect(pet2.errors[:email].first).to eq("has already been taken")
    end
    it 'requires a password' do
      pet = Pet.new(password: '')
      pet.valid?
      expect(pet.errors[:password].any?).to eq(true)
    end
    it 'requires the password to match the password confirmation' do
      pet = Pet.new(password: 'password', password_confirmation: 'not password')
      pet.valid?
      expect(pet.errors[:password_confirmation].first).to eq("doesn't match Password")
    end
    it 'automatically encrypts the password into the password_digest attribute' do
      pet = Pet.create(name:'kobe', email: 'kobe@lakers.com', password: 'password', password_confirmation: 'password')
      expect(pet.password_digest.present?).to eq(true)
    end
end
