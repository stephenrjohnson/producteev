module Producteev
  class Tasks
    def initialize(token)
      @token = token
    end

    def create(options = {})
      return  Producteev::Api.instance.send_request("/tasks/create.json", options,@token)
    end

    def delete(options = {})
      return  Producteev::Api.instance.send_request("/tasks/delete.json",options,@token)
    end

    def view(options = {})
      return  Producteev::Api.instance.send_request("/tasks/view.json",options,@token)
    end

    def show_list(options = {})
      return  Producteev::Api.instance.send_request("/tasks/show_list.json",options,@token)
    end

    def my_tasks(options = {})
      return  Producteev::Api.instance.send_request("/tasks/my_tasks.json",options,@token)
    end

    def archived(options = {})
      return  Producteev::Api.instance.send_request("/tasks/archived.json",options,@token)
    end

    def my_team_tasks(options = {})
      return  Producteev::Api.instance.send_request("/tasks/my_team_tasks.json",options,@token)
    end

    def set_title(options = {})
      return  Producteev::Api.instance.send_request("/tasks/set_title.json",options,@token)
    end

    def set_status(options = {})
      return  Producteev::Api.instance.send_request("/tasks/set_status.json",options,@token)
    end

    def set_star(options = {})
      return  Producteev::Api.instance.send_request("/tasks/set_star.json",options,@token)
    end

    def set_responsible(options = {})
      return  Producteev::Api.instance.send_request("/tasks/set_responsible.json",options,@token)
    end

    def unset_responsible(options = {})
      return  Producteev::Api.instance.send_request("/tasks/unset_responsible.json",options,@token)
    end

    def set_deadline(options = {})
      return  Producteev::Api.instance.send_request("/tasks/set_deadline.json",options,@token)
    end

    def unset_deadline(options = {})
      return  Producteev::Api.instance.send_request("/tasks/unset_deadline.json",options,@token)
    end

    def set_reminder(options = {})
      return  Producteev::Api.instance.send_request("/tasks/set_reminder.json",options,@token)
    end

    def set_repeating(options = {})
      return  Producteev::Api.instance.send_request("/tasks/set_repeating.json",options,@token)
    end

    def unset_repeating(options = {})
      return  Producteev::Api.instance.send_request("/tasks/unset_repeating.json",options,@token)
    end

    def labels(options = {})
      return  Producteev::Api.instance.send_request("/tasks/labels.json",options,@token)
    end

    def change_labels(options = {})
      return  Producteev::Api.instance.send_request("/tasks/change_labels.json",options,@token)
    end

    def set_workspace(options = {})
      return  Producteev::Api.instance.send_request("/tasks/set_workspace.json",options,@token)
    end

    def note_view(options = {})
      return  Producteev::Api.instance.send_request("/tasks/note_view.json",options,@token)
    end

    def notes_get(options = {})
      return  Producteev::Api.instance.send_request("/tasks/notes_get.json",options,@token)
    end

    def note_create(options = {})
      return  Producteev::Api.instance.send_request("/tasks/note_create.json",options,@token)
    end

    def note_delete(options = {})
      return  Producteev::Api.instance.send_request("/tasks/note_delete.json",options,@token)
    end

    def activity_view(options = {})
      return  Producteev::Api.instance.send_request("/tasks/activity_view.json",options,@token)
    end

    def activities_get(options = {})
      return  Producteev::Api.instance.send_request("/tasks/activities_get.json",options,@token)
    end
  end
end
