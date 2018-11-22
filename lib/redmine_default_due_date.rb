
module Redmine
  module Plugins
    class DefaultDueDateListener < Redmine::Hook::ViewListener

      NUMBER_DAYS_AFTER = 7

      def view_issues_new_top(context)
        context[:issue].due_date ||= Date.today + NUMBER_DAYS_AFTER.days
      end
    end
  end
end
