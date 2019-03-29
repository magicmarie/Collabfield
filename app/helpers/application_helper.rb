# give access to the navigation_helper file content
require 'navigation_helper.rb'

module ApplicationHelper
  # inject this module into application_helper
  include NavigationHelper
end
