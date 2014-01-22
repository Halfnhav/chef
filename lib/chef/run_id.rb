require 'singleton'

class Chef
  class RunID
    include Singleton

    def run_id
      @run_id ||= generate_run_id
    end

    def generate_run_id
      SecureRandom.uuid
    end
  end
end
