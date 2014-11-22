// 'use strict';
module.exports = function(grunt) {
  grunt.initConfig({
    watch: {
      coffee:{
        tasks: 'coffee',
        files:['app/*/*.coffee']
      }
//      tasks: {
//        tasks: 'nightwatch'
//      }
    },
    coffee: {
      tests: {
        files:[{ 
          expand: true,
          cwd: 'app/tests',
          src: ['*.coffee'],
          dest: 'tests/',
          ext: '.js'
        }]
      },
      pages: {
        files:[{ 
          expand: true,
          cwd: 'app/pages',
          src: ['*.coffee'],
          dest: 'pages/',
          ext: '.js'
        }]
      }
    },
    nightwatch: {
      options: {}
    }
  });
  
  grunt.loadNpmTasks('grunt-contrib-coffee');
  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-nightwatch');
  grunt.registerTask('default', 'watch');
//  grunt.registerTask('default', ['nightwatch']);
};