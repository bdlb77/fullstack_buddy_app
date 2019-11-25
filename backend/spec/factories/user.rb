# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'example@gmail.com' }
    password { 123451 }
    password_confirmation { 123451 }
    github_handle { 'bdlb77'}
  end
end
