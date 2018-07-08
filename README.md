
# About

A repo to generate diagrams using
[mscgen](http://www.mcternan.me.uk/mscgen/),
[dot language](http://www.graphviz.org/Documentation.php)
and [blockdiag](http://blockdiag.com/en/index.html).

This project is meant to be a blueprint project.

# How to use ?

You just put a file with the ending

* .msc (for [mscgen](http://www.mcternan.me.uk/mscgen/))
* .dot (for [dot language](https://www.graphviz.org/doc/info/lang.html))
* .diag (for [blockdiag](http://blockdiag.com/en/blockdiag/index.html))
* .nwdiag (for [nwdiag](http://blockdiag.com/en/nwdiag/index.html))
* .seqdiag (for [seqdiag](http://blockdiag.com/en/seqdiag/index.html))
* .actdiag (for [actdiag](http://blockdiag.com/en/actdiag/index.html))

in this folder or subfolders and [rake](https://ruby.github.io/rake/) 
will pick it up and generate tasks
you can call to render  png and svg files.

# How to build ?

Call

    rake -T

and everything should be written there.
