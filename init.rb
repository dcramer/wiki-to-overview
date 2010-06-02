require 'redmine'

Redmine::Plugin.register :forward_to_diffs do
  name 'Wiki to Overview'
  author 'Disqus (David Cramer)'
  url 'http://github.com/dcramer/wiki-to-overview'
  author_url 'http://www.disqus.com/'
  description 'Moves the Wiki tab to the Overview tab.'
  version '0.1'

  requires_redmine :version_or_higher => '0.8.0'
  
  menu :project_menu, '/', :caption => 'Yo'
  
  Redmine::MenuManager.map :project_menu do |menu|
    menu.delete :wiki
    menu.delete :overview
    menu.push :wiki, { :controller => 'wiki', :action => 'index', :page => nil }, :before => :activity
  end
end