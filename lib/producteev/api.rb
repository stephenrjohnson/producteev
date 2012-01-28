module Producteev
    class Api
      include HTTParty
      base_uri 'https://api.producteev.com/'

      def initialize(apikey,secret, debug)
        @apikey = apikey
        @secret = secret
        @token = nil
        @debug = debug
      end

      def login(email,password)
        param = {:email => email, :password => password}
        @token = self.sendRequest("/users/login.json",param)['login']['token']
      end

      def generate_signature(parameters)
        signature = ""
       
        #sort the hash alphabetically
        parameters = parameters.sort

        parameters.each { |key,value|  
          if (value.kind_of? String or value.kind_of? Integer)
            signature = "#{signature}#{key}#{value}"
          end
        }
        signature = signature+@secret
        signature = Digest::MD5.hexdigest(signature)
        return signature
      end


      def sendRequest(path, options={})
        options.merge!({:api_key => @apikey})

        if @token != nil
          options.merge!({:token => @token})
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
