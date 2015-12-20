Feature: Forge Edit helpers

  Scenario: Helpers works
    Given a fixture app "test-app"
    And a file named "config.rb" with:
      """
      activate :edit_forge do |f|
        f.forge = 'github'
        f.project = 'example/example-site'
      end
      """
    Given the Server is running at "test-app"
    When I go to "/link_edit_forge.html"
    Then I should see "https://github.com/example/example-site/edit/master/source/link_edit_forge.html.erb"

  Scenario: Helpers works in upper case
    Given a fixture app "test-app"
    And a file named "config.rb" with:
      """
      activate :edit_forge do |f|
        f.forge = 'Github'
        f.project = 'example/example-site'
      end
      """
    Given the Server is running at "test-app"
    When I go to "/link_edit_forge.html"
    Then I should see "https://github.com/example/example-site/edit/master/source/link_edit_forge.html.erb"


