# frozen_string_literal: true

require 'rails_helper'

describe '映画の投稿のテスト' do
  let!(:movie) { create(:movie, title:'hoge',director_name:'body',production_year:'1111年',explanation:'hogehoge') }
  describe "投稿画面(new_admin_movie_path)のテスト" do
    before do
      visit new_admin_movie_path
    end
    context '表示の確認' do
      it 'new_admin_movie_pathが"/admin/movies/new"であるか' do
        expect(current_path).to eq('/admin/movies/new')
      end
      it '投稿ボタンが表示されているか' do
        expect(page).to have_button '新規登録'
      end
    end
    context '投稿処理のテスト' do
      it '投稿後のリダイレクト先は正しいか' do
        fill_in 'movie[title]', with: Faker::Lorem.characters(number:30)
        fill_in 'movie[director_name]', with: Faker::Lorem.characters(number:30)
        fill_in 'movie[production_year]', with: Faker::Lorem.characters(number:10)
        fill_in 'movie[explanation]', with: Faker::Lorem.characters(number:105)
        select movie.genre.name, from: 'movie[genre_id]'
        click_button '新規登録'
        expect(page).to have_current_path admin_movies_path
      end
    end
  end
  describe "映画一覧のテスト" do
    before do
      visit admin_movies_path
    end
    context '表示の確認' do
      it '投稿されたものが表示されているか' do
        expect(page).to have_content movie.title
        expect(page).to have_content movie.director_name
        expect(page).to have_content movie.genre.name
        expect(page).to have_link '編集'
        expect(page).to have_link '詳細'
      end
    end
  end
  describe "詳細画面のテスト" do
    before do
      visit admin_movie_path(movie)
    end
    context '表示の確認' do
      it '編集リンクが存在しているか' do
        expect(page).to have_link '編集'
      end
    end
    context 'リンクの遷移先の確認' do
      it '編集の遷移先は編集画面か' do
        click_link '編集', href: edit_admin_movie_path(movie)
      end
    end
  end
  describe '編集画面のテスト' do
    before do
      visit edit_admin_movie_path(movie)
    end
    context '表示の確認' do
      it '編集前のタイトルと本文がフォームに表示(セット)されている' do
        expect(page).to have_field 'movie[title]', with: movie.title
        expect(page).to have_field 'movie[director_name]', with: movie.director_name
        expect(page).to have_field 'movie[production_year]', with: movie.production_year
        expect(page).to have_field 'movie[explanation]', with: movie.explanation
        expect(page).to have_select('movie[genre_id]', selected: movie.genre.name)
      end
      it '保存ボタンが表示される' do
        expect(page).to have_button '保存'
      end
    end
    context '更新処理に関するテスト' do
      it '更新後のリダイレクト先は正しいか' do
        click_button '保存'
        expect(page).to have_current_path admin_movies_path
      end
    end
  end
  describe "映画の検索画面のテスト" do
    before do
      visit user_movies_path
    end
    context '表示の確認' do
      it 'user_movies_pathが"/user/movies"であるか' do
        expect(current_path).to eq('/user/movies')
      end
      it '投稿ボタンが表示されているか' do
        expect(page).to have_button '検索'
      end
      it '検索フォームに表示されている' do
        expect(page).to have_field
        expect(page).to have_select
      end
    end
  end
  describe "検索結果のテスト" do
    before do
      visit search_user_movies_path
    end
    context '表示の確認' do
      it '検索されたものが表示されているか' do
        expect(page).to have_content movie.title
        expect(page).to have_content movie.director_name
        expect(page).to have_content movie.genre.name
        expect(page).to have_content movie.production_year
        expect(page).to have_link '詳細'
      end
    end
  end
end