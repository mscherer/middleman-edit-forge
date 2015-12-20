module Middleman
  module EditForge
    class EditForgeExtension < Extension
      option :forge, 'github', 'Forge name'
      option :project, 'example/example-site', 'Project name'
      FORGES = {
        'github' => {
          'url'  => 'https://github.com/%{project}/edit/master%{source_file}',
          'name' => 'GitHub',
        },
        'gitlab' => {
          'url'  => 'https://gitlab.com/%{project}/edit/master%{source_file}',
          'name' => 'GitLab',
        },
      }

      def after_configuration
        app.set :edit_forge_id, options.forge
        app.set :edit_forge_project, options.project
      end


      helpers do
        def insert_link_edit_forge
            icon = '<i class="icon fa fa-pencil"></i>'
            source_file = current_page.source_file.sub(root, '')
            forge_url = FORGES[edit_forge_id]['url'] % { :project => edit_forge_project, :source_file => source_file }
            forge_name = FORGES[edit_forge_id]['name']
            link_to "#{icon}Edit this page on #{forge_name}", forge_url, {target: '_blank'}
        end
      end
    end
  end
end 
