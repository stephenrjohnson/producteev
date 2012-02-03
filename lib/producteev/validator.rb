module Producteev
    class ValidationException < Exception
    end

    class Validator
     
      def self.validate(items, required)
        items.keys.each {|k| 
           if required[k] == nil
            raise ValidationException
          end
        }
        return true
        end
      end


     
end
