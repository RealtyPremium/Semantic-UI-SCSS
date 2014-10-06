lib_path = File.join(File.dirname(__FILE__), 'lib')
$:.unshift(lib_path) unless $:.include?(lib_path)

#load 'tasks/bower.rake'

desc 'Convert bootstrap to bootstrap-sass'
task :convert, :branch do |t, args|
  require './tasks/converter'
  Converter.new(branch: args[:branch]).process_semantic
end
task :parse do |t, args|
  #TODO
  require './tasks/parser/parser'

end

task default: :convert
