# frozen_string_literal: true

require 'rails_helper'

describe 'モデルのテスト' do
  it "有効ないいねは保存されるか" do
    expect(FactoryBot.build(:like)).to be_valid
  end
end