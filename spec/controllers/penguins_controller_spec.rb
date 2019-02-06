require 'rails_helper'

RSpec.describe PenguinsController, type: :controller do
  describe '#index' do
    it 'displays recent penguins' do
      2.times { create(:penguin) }
      get :index
      expect(assigns(:penguins).size).to eq(2)
    end
  end
end
