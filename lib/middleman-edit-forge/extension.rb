module Middleman
  module EditForge
    class EditForgeExtension < Extension
      option :forge, 'github', 'Forge name'
      option :project, 'example/example-site', 'Project name'
      
      def after_configuration
        app.set :edit_forge_id, options.forge
        app.set :edit_forge_project, options.project
      end


      helpers do
        def insert_link_edit_forge
            icon = '<i class="icon fa fa-pencil"></i>'
            source_file = current_page.source_file.sub(root, '')
            # TODO do not hardcode
            forge_url = "https://github.com/#{edit_forge_project}/edit/master#{source_file}"
            # TODO do not hardcode    
            forge_name = 'GitHub'
            link_to "#{icon}Edit this page on #{forge_name}", forge_url, {target: '_blank'}
        end
      end
    end
  end
end 
