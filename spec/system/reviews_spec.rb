# frozen_string_literal: true

require 'rails_helper'

describe 'レビュー画面のテスト' do
  let!(:review) { create(:review, comment:'hoge',spoiler:'hogehoge',purpose:'気分転換',comment_title:'面白い',star:'1',movie_id:movie.id) }
  let(:user) { create(:user) }
  let!(:movie) { create(:movie) }
  describe "レビュー投稿のテスト" do
    before do
      sign_in user
      visit user_movie_path(movie)
    end

    context '投稿処理のテスト' do
      it '投稿後のリダイレクト先は正しいか' do
        fill_in 'review[movie_id]', with: review.movie.id
        fill_in 'review[spoiler]', with: Faker::Lorem.characters(number:105)
        fill_in 'review[comment]', with: Faker::Lorem.characters(number:105)
        fill_in 'review[comment_title]', with: Faker::Lorem.characters(number:15)
        fill_in 'review[purpose]', with: Faker::Lorem.characters(number:15)
        choose "star5"
        click_button '保存'
        expect(page).to have_current_path user_movie_path(movie)
      end
    end
  end

  describe "レビュー履歴一覧のテスト" do
    before do
      sign_in user
      visit user_reviews_path
    end

    context '表示の確認' do
      it '投稿されたものが表示されているか' do
        expect(page).to have_content review.movie.title
        expect(page).to have_content review.comment_title
        expect(page).to have_content review.purpose
        expect(page).to have_content review.star
        expect(page).to have_link '編集'
        expect(page).to have_link '詳細'
        expect(page).to have_link '削除'
      end
    end
    context '詳細リンクの遷移先の確認' do
      it '詳細の遷移先は詳細画面か' do
        click_link '詳細'
        expect(page).to have_current_path user_review_path(review)
      end
    end
    context '編集リンクの遷移先の確認' do
      it '編集の遷移先は編集画面か' do
        click_link '編集'
        expect(page).to have_current_path edit_user_movie_path(movie)
      end
    end
    context 'レビュー削除のテスト' do
      it 'レビューの削除' do
        expect{ review.destroy }.to change{ Review.count }.by(-1)
      end
    end
  end
  describe "詳細画面のテスト" do
    before do
      sign_in user
      visit user_review_path(review)
    end
    context '表示の確認' do
      it 'レビュー履歴一覧のリンクが存在しているか' do
        expect(page).to have_link 'レビュー一覧へ'
      end
    end
  end
  describe '編集画面のテスト' do
    before do
      sign_in user
      visit edit_user_movie_path(movie)
    end
    context '表示の確認' do
      it '編集前のタイトルと本文がフォームに表示(セット)されている' do
        expect(page).to have_field 'review[comment_title]', with: review.comment_title
        expect(page).to have_field 'review[comment]', with: review.comment
        expect(page).to have_field 'review[spoiler]', with: review.spoiler
        expect(page).to have_field 'review[purpose]', with: review.purpose
        expect(page).to have_unchecked_field ('')
        end
      it '保存ボタンが表示される' do
        expect(page).to have_button '保存'
      end
    end
    context '更新処理に関するテスト' do
      it '更新後のリダイレクト先は正しいか' do
        fill_in 'review[comment_title]', with: Faker::Lorem.characters(number:15)
        fill_in 'review[purpose]', with: Faker::Lorem.characters(number:15)
        fill_in 'review[comment]', with: Faker::Lorem.characters(number:105)
        fill_in 'review[spoiler]', with: Faker::Lorem.characters(number:105)
        choose "star5"
        click_button '保存'
        expect(page).to have_current_path user_movie_path(movie)
      end
    end
  end
end