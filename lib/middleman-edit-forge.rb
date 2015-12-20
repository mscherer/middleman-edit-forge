require "middleman-core"
require "middleman-edit-forge/version"

::Middleman::Extensions.register(:edit_forge) do
  require "middleman-edit-forge/extension"
  ::Middleman::EditForge::EditForgeExtension
end
