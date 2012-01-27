module Producteev
    class Tasks
      @api = nil
      def initialize(api)
        @api = api
      end

      def create(options = {})
        return @api.sendRequest("/tasks/create.json",options)
      end

      def delete(options = {})
        return @api.sendRequest("/tasks/delete.json",options)
      end

      def view(options = {})
        return @api.sendRequest("/tasks/view.json",options)
      end

      def show_list(options = {})
        return @api.sendRequest("/tasks/show_list.json",options)
      end
      
      def my_tasks(options = {})
        return @api.sendRequest("/tasks/show_list.json",options)
      end

      def my_tasks(options = {})
        return @api.sendRequest("/tasks/archived.json",options)
      end

      def my_team_tasks(options = {})
        return @api.sendRequest("/tasks/my_team_tasks.json",options)
      end

      def set_title(options = {})
        return @api.sendRequest("/tasks/set_title.json",options)
      end

      def set_status(options = {})
        return @api.sendRequest("/tasks/set_status.json",options)
      end

      def set_star(options = {})
        return @api.sendRequest("/tasks/set_star.json",options)
      end

      def set_responsible(options = {})
        return @api.sendRequest("/tasks/set_responsible.json",options)
      end

      def unset_responsible(options = {})
        return @api.sendRequest("/tasks/unset_responsible.json",options)
      end

      def set_deadline(options = {})
        return @api.sendRequest("/tasks/set_deadline.json",options)
      end

      def unset_deadline(options = {})
        return @api.sendRequest("/tasks/unset_deadline.json",options)
      end

      def set_reminder(options = {})
        return @api.sendRequest("/tasks/set_reminder.json",options)
      end

      def set_repeating(options = {})
        return @api.sendRequest("/tasks/set_repeating.json",options)
      end

      def unset_repeating(options = {})
        return @api.sendRequest("/tasks/unset_repeating.json",options)
      end

      def labels(options = {})
        return @api.sendRequest("/tasks/labels.json",options)
      end

      def change_labels(options = {})
        return @api.sendRequest("/tasks/change_labels.json",options)
      end

      def set_workspace(options = {})
        return @api.sendRequest("/tasks/set_workspace.json",options)
      end

      def note_view(options = {})
        return @api.sendRequest("/tasks/note_view.json",options)
      end

      def notes_get(options = {})
        return @api.sendRequest("/tasks/notes_get.json",options)
      end

      def note_create(options = {})
        return @api.sendRequest("/tasks/note_create.json",options)
      end

      def note_delete(options = {})
        return @api.sendRequest("/tasks/note_delete.json",options)
      end

      def activity_view(options = {})
        return @api.sendRequest("/tasks/activity_view.json",options)
      end

      def activities_get(options = {})
        return @api.sendRequest("/tasks/activities_get.json",options)
      end
  end
end
