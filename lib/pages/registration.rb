require 'capybara/dsl' # Sub-directory of capybara

class Registration
  include Capybara::DSL

  # Page Objects
  REGISTRATION_PAGE_URL = 'http://localhost:9292/'
  FIRST_NAME_FIELD_ID = 'firstName'

  def visit_registration_page
    visit(REGISTRATION_PAGE_URL)
  end

  def fill_in_name_field(name)
    fill_in(FIRST_NAME_FIELD_ID, :with => name)
  end
end