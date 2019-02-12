require "human_enum_name/version"
require "human_enum_name/helpers"

ActiveSupport.on_load :active_record do
  include HumanEnumName::Helpers
end
