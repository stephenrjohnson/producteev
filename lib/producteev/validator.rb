module Producteev
    class Validator
     
      def self.validate(items, required)
        items.keys.each {|k| 
           if required[k] == nil
            return false
          end
        }
        return true
        end
      end
end
