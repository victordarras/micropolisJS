module.exports = (grunt) ->

  grunt.loadNpmTasks "grunt-contrib-watch"
  grunt.loadNpmTasks "grunt-contrib-less"
  grunt.loadNpmTasks "grunt-slim"

  grunt.initConfig
    pkg: grunt.file.readJSON("package.json")

    watch:
      default:
        files: ["index.slim","css/style.less"]
        tasks: ["slim", "less"]
    
    slim: 
      default: 
        files: 
          "index.html": "index.slim"

    less:
      default:
        files:
          "css/style.css": "css/style.less"
        options:
          banner: '/*! <%= pkg.name %> <%= grunt.template.today("yyyy-mm-dd, HH:mm") %> */\n'
          compress: true

  grunt.registerTask "default", ["watch"]