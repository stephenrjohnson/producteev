module Producteev
    class Dashboards
      def initialize(token)
        @token = token
      end

      def create(options = {})
        return Producteev::Api.instance.send_request("/dashboards/create.json",options,@token)
      end

      def view(options = {})
        return Producteev::Api.instance.send_request("/dashboards/view.json",options,@token)
      end

      def show_list(options = {})
        return Producteev::Api.instance.send_request("/dashboards/show_list.json",options,@token)
      end

      def access(options = {})
        return Producteev::Api.instance.send_request("/dashboards/access.json",options,@token)
      end

      def leave(options = {})
        return Producteev::Api.instance.send_request("/dashboards/leave.json",options,@token)
      end

      def set_title(options = {})
        return Producteev::Api.instance.send_request("/dashboards/set_title.json",options,@token)
      end

      def set_smart_labels(options = {})
        return Producteev::Api.instance.send_request("/dashboards/set_smart_labels.json",options,@token)
      end

      def delete(options = {})
        return Producteev::Api.instance.send_request("/dashboards/delete.json",options,@token)
      end

      def tasks(options = {})
        return Producteev::Api.instance.send_request("/dashboards/tasks.json",options,@token)
      end

      def confirm(options = {})
        return Producteev::Api.instance.send_request("/dashboards/confirm.json",options,@token)
      end

      def refuse(options = {})
        return Producteev::Api.instance.send_request("/dashboards/refuse.json",options,@token)
      end

      def invite_user_by_id(options = {})
        return Producteev::Api.instance.send_request("/dashboards/invite_user_by_id.json",options,@token)
      end

      def invite_user_by_email(options = {})
        return Producteev::Api.instance.send_request("/dashboards/invite_user_by_email.json",options,@token)
      end

      def need_upgrade_list(options = {})
        return Producteev::Api.instance.send_request("/dashboards/need_upgrade_list.json",options,@token)
      end

      def needs_upgrade(options = {})
        return Producteev::Api.instance.send_request("/dashboards/needs_upgrade.json",options,@token)
      end

      def reorder(options = {})
        return Producteev::Api.instance.send_request("/dashboards/reorder.json",options,@token)
      end

  end
end
