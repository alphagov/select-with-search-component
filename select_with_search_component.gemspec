require_relative "lib/select_with_search_component/version"

Gem::Specification.new do |spec|
  spec.name        = "select_with_search_component"
  spec.version     = SelectWithSearchComponent::VERSION
  spec.authors     = ["GOV.UK Dev"]
  spec.email       = ["govuk-dev@digital.cabinet-office.gov.uk"]
  spec.homepage    = "https://github.com/alphagov/select-with-search-component"
  spec.summary     = "A gem to re-use the select-with-search component"
  spec.description = "A gem to re-use the select-with-search component"
  spec.license     = "MIT"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.2"
  spec.add_development_dependency "rubocop-govuk"
end
