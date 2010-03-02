require 'redmine'
require 'ticket_admin_listener'

Redmine::Plugin.register :redmine_ticket_admin do
  name 'Redmine Ticket Admin plugin'
  author 'kumattau'
  description 'This is a ticket admin plugin for Redmine'
  version '0.0.1'
end
