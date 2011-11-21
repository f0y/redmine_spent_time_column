module RedmineSpentTimeColumn
  module Patches
    module IssuePatch
      
      def remaining_hours
        @remaining_hours ||= self_and_descendants.sum("estimated_hours)").to_f || 0.0 - spent_hours
      end
      
    end
  end
end
