module Producteev
    class Tasks
      @api = nil
      def initialize(api)
        @api = api
      end

      def create(options = {})
        return @api.send_request("/tasks/create.json",options)
      end

      def delete(options = {})
        return @api.send_request("/tasks/delete.json",options)
      end

      def view(options = {})
        return @api.send_request("/tasks/view.json",options)
      end

      def show_list(options = {})
        return @api.send_request("/tasks/show_list.json",options)
      end
      
      def my_tasks(options = {})
        return @api.send_request("/tasks/show_list.json",options)
      end

      def my_tasks(options = {})
        return @api.send_request("/tasks/archived.json",options)
      end

      def my_team_tasks(options = {})
        return @api.send_request("/tasks/my_team_tasks.json",options)
      end

      def set_title(options = {})
        return @api.send_request("/tasks/set_title.json",options)
      end

      def set_status(options = {})
        return @api.send_request("/tasks/set_status.json",options)
      end

      def set_star(options = {})
        return @api.send_request("/tasks/set_star.json",options)
      end

      def set_responsible(options = {})
        return @api.send_request("/tasks/set_responsible.json",options)
      end

      def unset_responsible(options = {})
        return @api.send_request("/tasks/unset_responsible.json",options)
      end

      def set_deadline(options = {})
        return @api.send_request("/tasks/set_deadline.json",options)
      end

      def unset_deadline(options = {})
        return @api.send_request("/tasks/unset_deadline.json",options)
      end

      def set_reminder(options = {})
        return @api.send_request("/tasks/set_reminder.json",options)
      end

      def set_repeating(options = {})
        return @api.send_request("/tasks/set_repeating.json",options)
      end

      def unset_repeating(options = {})
        return @api.send_request("/tasks/unset_repeating.json",options)
      end

      def labels(options = {})
        return @api.send_request("/tasks/labels.json",options)
      end

      def change_labels(options = {})
        return @api.send_request("/tasks/change_labels.json",options)
      end

      def set_workspace(options = {})
        return @api.send_request("/tasks/set_workspace.json",options)
      end

      def note_view(options = {})
        return @api.send_request("/tasks/note_view.json",options)
      end

      def notes_get(options = {})
        return @api.send_request("/tasks/notes_get.json",options)
      end

      def note_create(options = {})
        return @api.send_request("/tasks/note_create.json",options)
      end

      def note_delete(options = {})
        return @api.send_request("/tasks/note_delete.json",options)
      end

      def activity_view(options = {})
        return @api.send_request("/tasks/activity_view.json",options)
      end

      def activities_get(options = {})
        return @api.send_request("/tasks/activities_get.json",options)
      end
  end
end
