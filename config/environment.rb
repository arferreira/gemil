# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!



require 'brazilian-rails'



# Load carrierwave

require 'carrierwave/orm/activerecord'

WillPaginate::ViewHelpers.pagination_options[:next_label]=I18n.t("pagination.next")

WillPaginate::ViewHelpers.pagination_options[:prev_label]=I18n.t("pagination.prev")

