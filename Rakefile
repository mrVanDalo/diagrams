
#
# configuration
#

@viewer = "feh" # just comment out if you don't want the viewr task

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
  end

  # append tasks to default task
  task :all => png_file
  task :all => svg_file

end


#
# tasks for dot files
#

Dir['**/*.dot'].each do |dot_file|

  name      = dot_file[0..-5]
  svg_file  = "#{name}.svg"
  png_file  = "#{name}.png"

  task svg_file do
    sh "dot -Tsvg -o #{svg_file} #{dot_file}"
  end

  task png_file do
    sh "dot -Tpng -o #{png_file} #{dot_file}"
  end

  rest_tasks(name, dot_file, png_file, svg_file)

end


#
# tasks for msc files
#

Dir['**/*.msc'].each do |msc_file|

  name      = msc_file[0..-5]
  svg_file  = "#{name}.svg"
  png_file  = "#{name}.png"


  task svg_file do
    sh "mscgen -T svg -o #{name}.svg #{msc_file}"
  end

  task png_file do
    sh "mscgen -T png -o #{name}.png #{msc_file}"
  end

  rest_tasks(name, msc_file, png_file, svg_file)

end

#
# tasks for blockdiag files
#
Dir['**/*.diag'].each do |diag_file|

  name      = diag_file[0..-6]
  svg_file  = "#{name}.svg"
  png_file  = "#{name}.png"


  task svg_file do
    sh "blockdiag -Tsvg -o #{name}.svg #{diag_file}"
  end

  task png_file do
    sh "blockdiag --no-transparency -Tpng -o #{name}.png #{diag_file}"
  end

  rest_tasks(name, diag_file, png_file, svg_file)

end

#
# tasks for nwdiag files
#
Dir['**/*.nwdiag'].each do |diag_file|

  name      = diag_file[0..-8]
  svg_file  = "#{name}.svg"
  png_file  = "#{name}.png"


  task svg_file do
    sh "nwdiag -Tsvg -o #{name}.svg #{diag_file}"
  end

  task png_file do
    sh "nwdiag --no-transparency -Tpng -o #{name}.png #{diag_file}"
  end

  rest_tasks(name, diag_file, png_file, svg_file)

end

#
# tasks for seqdiag files
#
Dir['**/*.seqdiag'].each do |diag_file|

  name      = diag_file[0..-9]
  svg_file  = "#{name}.svg"
  png_file  = "#{name}.png"


  task svg_file do
    sh "seqdiag -Tsvg -o #{name}.svg #{diag_file}"
  end

  task png_file do
    sh "seqdiag --no-transparency -Tpng -o #{name}.png #{diag_file}"
  end

  rest_tasks(name, diag_file, png_file, svg_file)

end

#
# tasks for actdiag files
#
Dir['**/*.actdiag'].each do |diag_file|

  name      = diag_file[0..-9]
  svg_file  = "#{name}.svg"
  png_file  = "#{name}.png"


  task svg_file do
    sh "actdiag -Tsvg -o #{name}.svg #{diag_file}"
  end

  task png_file do
    sh "actdiag --no-transparency -Tpng -o #{name}.png #{diag_file}"
  end

  rest_tasks(name, diag_file, png_file, svg_file)

end
