module HumanEnumName
  module Helpers
    def self.included(base)
      base.extend ClassMethods
    end

    module ClassMethods
      def human_enum_name(enum_name, enum_value)
        enum_i18n_key = enum_name.to_s.pluralize
        I18n.t("activerecord.attributes.#{model_name.i18n_key}.#{enum_i18n_key}.#{enum_value}")
      end
    end
  end
end
