
module Redmine
  module Plugins
    class DefaultDueDateListener < Redmine::Hook::ViewListener
      def view_issues_new_top(context)
        context[:issue].due_date ||= Date.today + 7
      end
    end
  end
end
