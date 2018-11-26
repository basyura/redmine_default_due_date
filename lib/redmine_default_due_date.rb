
module Redmine
  module Plugins
    class DefaultDueDateListener < Redmine::Hook::ViewListener

      DEFAULT_DUE_DATE = 7

      def view_issues_new_top(context)
        context[:issue].due_date ||= self.class.default_due_date
      end

      def self.default_due_date
        Date.today + Setting.plugin_redmine_default_due_date['default_due_date'].to_i.days
      end

    end
  end
end
