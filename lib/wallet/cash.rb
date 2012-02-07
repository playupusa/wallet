module Wallet
  module Cash
    extend ActiveSupport::Concern

    module ClassMethods
      def cash!

        Wallet::Configuration.controllers.each do |controller_name, actions_configs|
          controller = "#{controller_name}_controller".camelize.constantize
          actions_configs.actions.each do |action_name, ttl|
            controller.caches_action action_name, :expires_in => ttl, :cache_path => Proc.new { |controller| controller.params }
          end
        end
      end
    end
  end
end
