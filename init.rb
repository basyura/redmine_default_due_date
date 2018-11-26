require File.dirname(__FILE__) + '/lib/redmine_default_due_date'

Redmine::Plugin.register :redmine_default_due_date do
  name 'Redmine Default Due Date Plugin'
  author 'basyura'
  description 'This is a plugin for Redmine'
  version '0.0.3'
  url 'https://github.com/basyura/redmine_default_due_date'
  author_url 'http://blog.basyura.org/'

  settings default: { 'default_due_date' => Redmine::Plugins::DefaultDueDateListener::DEFAULT_DUE_DATE },
           partial: 'settings/default_due_date'
end
