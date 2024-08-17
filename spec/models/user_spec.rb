# frozen_string_literal: true

require "rails_helper"

RSpec.describe User, type: :model do
  subject(:user) { create(:user) }

  describe "validations" do
    %i[first_name last_name email].each do |attribute|
      it { is_expected.to validate_presence_of(attribute) }
    end
  end

  describe "Devise modules" do
    let(:devise_modules) do
      %i[
        database_authenticatable
        registerable
        recoverable
        rememberable
        validatable
      ]
    end

    it "includes the required Devise modules" do
      expect(user.devise_modules).to include(*devise_modules)
    end
  end
end
