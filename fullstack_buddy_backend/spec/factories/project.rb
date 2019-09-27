# frozen_string_literal: true

FactoryBot.define do
  factory(:template) do
    title { 'Airbnb Template' }
    description { 'an Airbnb template for a project.' }

    type { 'Template' }
  end

  factory(:personal_project) do
   
    type { 'Project' }
    title { 'A personal project' }
    description { ' a personal project from the airbnb template' }
    personal_completed { true }
    personal_sharable { true }
    personal_github_repo_url { 'https://www.githubexamplerepo.com'}
    
  end
end
