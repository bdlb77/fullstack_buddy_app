# frozen_string_literal: true

FactoryBot.define do
  factory(:template) do
    title { 'Airbnb Template' }
    description { 'an Airbnb template for a project.' }

    type { 'Template' }
  end

  factory(:personal_project) do
    tesla_authenticated { false }
    type { 'Project' }
    title { 'A personal project' }
    description { ' a personal project from the airbnb template' }
    template { FactoryBot.create(:template)}
    personal_completed { false }
    personal_sharable { true }
    personal_github_repo { 'https://www.githubexamplerepo.com'}
    
  end
end
