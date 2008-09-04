namespace :spree do
  namespace :extensions do
    namespace :usps_simple_shipping do
      desc "Copies public assets of the Usps Simple Shipping to the instance public/ directory."
      task :update => :environment do
        is_svn_or_dir = proc {|path| path =~ /\.svn/ || File.directory?(path) }
        Dir[UspsSimpleShippingExtension.root + "/public/**/*"].reject(&is_svn_or_dir).each do |file|
          path = file.sub(UspsSimpleShippingExtension.root, '')
          directory = File.dirname(path)
          puts "Copying #{path}..."
          mkdir_p RAILS_ROOT + directory
          cp file, RAILS_ROOT + path
        end
      end  
    end
  end
end