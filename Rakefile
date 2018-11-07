
#
# configuration
#

@viewer = "feh"      # just comment out if you don't want the viewr task
@watch_folder = "**" # which folder to scan for diagrams

#
# default task
#

desc "create all files"
task :all
task :default => :all

#
# tasks I need for all files
#

def rest_tasks(name, file, png_file, svg_file)

  desc "generate all files for ./#{file}"
  task name => png_file
  task name => svg_file

  if @viewer

    show_name = "view_#{name}"
    desc "#{@viewer} ./#{png_file}"
    task show_name => png_file do
      sh "#{@viewer} #{png_file}"
    end

    watch_name = "watch_#{name}"
    desc "watch #{@viewer} ./#{png_file}"
    task watch_name do
      # sh "#{@viewer} #{png_file}"
      sh "bash ./watcher.sh #{@viewer} #{png_file} #{name}"
    end


  end

  # append tasks to default task
  task :all => png_file
  task :all => svg_file

end


#
# tasks for dot files
#

Dir["#{@watch_folder}/*.dot"].each do |file|

  name      = file[0..-5]
  svg_file  = "#{name}.svg"
  png_file  = "#{name}.png"

  task svg_file do
    sh "dot -Tsvg -o #{svg_file} #{file}"
  end

  task png_file do
    sh "dot -Tpng -o #{png_file} #{file}"
  end

  rest_tasks(name, file, png_file, svg_file)

end


#
# tasks for msc files
#

Dir["#{@watch_folder}/*.msc"].each do |file|

  name      = file[0..-5]
  svg_file  = "#{name}.svg"
  png_file  = "#{name}.png"


  task svg_file do
    sh "mscgen -T svg -o #{name}.svg #{file}"
  end

  task png_file do
    sh "mscgen -T png -o #{name}.png #{file}"
  end

  rest_tasks(name, file, png_file, svg_file)

end

#
# tasks for blockdiag files
#

Dir["#{@watch_folder}/*.diag"].each do |file|

  name      = file[0..-6]
  svg_file  = "#{name}.svg"
  png_file  = "#{name}.png"


  task svg_file do
    sh "blockdiag -Tsvg -o #{name}.svg #{file}"
  end

  task png_file do
    sh "blockdiag --no-transparency -Tpng -o #{name}.png #{file}"
  end

  rest_tasks(name, file, png_file, svg_file)

end

#
# tasks for nwdiag files
#

Dir["#{@watch_folder}/*.nwdiag"].each do |file|

  name      = file[0..-8]
  svg_file  = "#{name}.svg"
  png_file  = "#{name}.png"


  task svg_file do
    sh "nwdiag -Tsvg -o #{name}.svg #{file}"
  end

  task png_file do
    sh "nwdiag --no-transparency -Tpng -o #{name}.png #{file}"
  end

  rest_tasks(name, file, png_file, svg_file)

end

#
# tasks for seqdiag files
#

Dir["#{@watch_folder}/*.seqdiag"].each do |file|

  name      = file[0..-9]
  svg_file  = "#{name}.svg"
  png_file  = "#{name}.png"


  task svg_file do
    sh "seqdiag -Tsvg -o #{name}.svg #{file}"
  end

  task png_file do
    sh "seqdiag --no-transparency -Tpng -o #{name}.png #{file}"
  end

  rest_tasks(name, file, png_file, svg_file)

end

#
# tasks for actdiag files
#

Dir["#{@watch_folder}/*.actdiag"].each do |file|

  name      = file[0..-9]
  svg_file  = "#{name}.svg"
  png_file  = "#{name}.png"


  task svg_file do
    sh "actdiag -Tsvg -o #{name}.svg #{file}"
  end

  task png_file do
    sh "actdiag --no-transparency -Tpng -o #{name}.png #{file}"
  end

  rest_tasks(name, file, png_file, svg_file)

end
