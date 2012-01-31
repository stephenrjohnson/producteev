module Producteev
    class Api
      include HTTParty
      base_uri 'https://api.producteev.com/'

      @@instance = Api.new
     
      def self.instance
        return @@instance
      end

      def api_set(apikey, secret, debug)
        @@apikey = apikey
        @@secret = secret
        @debug = debug
      end
     
      private_class_method :new

      def generate_signature(parameters)
        signature = ""

        parameters = parameters.sort_by { |name, value| name.to_s }
        #sort the hash alphabetically and make an array

        parameters.each { |key,value|  
          if (value.kind_of? String or value.kind_of? Integer)
            signature = "#{signature}#{key}#{value}"
          end
        }

        signature = "#{signature}#{@@secret}"
        signature = Digest::MD5.hexdigest(signature)
        return signature
      end


      def send_request(path, options={},token = nil)
        options.merge!({:api_key => @@apikey})

        if token != nil
          options.merge!({:token => token})
        end
        options.merge!({:api_sig => generate_signature(options)})

        if @debug
          response = self.class.get(path, {:query => options, :debug_output => $stderr})
        else
          response = self.class.get(path, {:query => options})
        end

        if response.success?
          return JSON.parse(response.body)
        else
          raise response.response    
        end    
      end
  end
end
