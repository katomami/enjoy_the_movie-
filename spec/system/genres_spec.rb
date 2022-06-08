# frozen_string_literal: true

require 'rails_helper'

describe 'ジャンル登録のテスト' do
  let!(:genre) { create(:genre, name:'hoge') }
  describe 'ジャンル一覧・追加画面のテスト' do
    before do
      visit admin_genres_path
    end
    context '表示の確認' do
      it '画面に「ジャンル一覧追加」が表示されているか' do
        expect(page).to have_content 'ジャンル一覧追加'
      end
      it 'admin_genres_pathが"/admin/genres"であるか' do
        expect(current_path).to eq('/admin/genres')
      end
      it '登録ボタンが表示されているか' do
        expect(page).to have_button '新規登録'
      end
    end
    context '登録処理のテスト' do
      it '登録後のリダイレクト先は正しいか' do
        fill_in 'genre[name]', with: Faker::Lorem.characters(number:5)
        click_button '新規登録'
        expect(page).to have_current_path admin_genres_path
      end
    end
    context '表示の確認' do
      it '登録されたものが表示されているか' do
        expect(page).to have_content genre.name
      end
    end
  end
  describe '編集画面のテスト' do
    before do
      visit edit_admin_genre_path(genre)
    end
    context '表示の確認' do
      it '編集前のジャンル名がフォームに表示(セット)されている' do
        expect(page).to have_field 'genre[name]', with: genre.name
      end
      it '保存ボタンが表示される' do
        expect(page).to have_button '保存'
      end
    end
    context '更新処理に関するテスト' do
      it '更新後のリダイレクト先は正しいか' do
        fill_in 'genre[name]', with: Faker::Lorem.characters(number:5)
        click_button '保存'
        expect(page).to have_current_path admin_genres_path
      end
    end
  end
end