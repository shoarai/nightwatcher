# 'use strict';
module.exports = (grunt) ->
  grunt.initConfig
    coffee:
      tests:
        files: [ 
          expand: true
          cwd: 'app/tests'
          src: ['*.coffee']
          dest: 'js/tests/'
          ext: '.js'
        ]
      pages:
        files: [ 
          expand: true,
          cwd: 'app/pages'
          src: ['*.coffee']
          dest: 'js/pages/'
          ext: '.js'
        ]
    uglify:
      tests:
        files: [ 
          expand: true
          cwd: 'js/tests'
          src: ['*.js']
          dest: 'tests/'
          ext: '.js'
        ]
      pages:
        files: [ 
          expand: true,
          cwd: 'js/pages'
          src: ['*.js']
          dest: 'pages/'
          ext: '.js'
        ]
    clean:
      tmp: 'js'
    watch:
      coffee:
        tasks: ['coffee', 'uglify', 'clean']
        files: ['app/*/*.coffee']
#      tasks:
#        tasks: 'nightwatch'
          
#    nightwatch:
#      options: {}
  
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-uglify'
  grunt.loadNpmTasks 'grunt-contrib-clean'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-nightwatch'
  grunt.registerTask 'default', 'watch'
#  grunt.registerTask 'default' ['nightwatch']