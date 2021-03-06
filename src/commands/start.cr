module Mint
  class Cli < Admiral::Command
    class Start < Admiral::Command
      include Command

      define_help description: "Starts the development server."
      define_flag auto_format : Bool,
                  description: "Auto formats the source files when running development server.",
                  default: false,
                  required: false

      def run
        execute "Running the development server" do
          Reactor.start flags.auto_format
        end
      end
    end
  end
end
