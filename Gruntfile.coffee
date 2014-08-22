module.exports = (grunt) ->
  grunt.loadNpmTasks "grunt-contrib-coffee"
  grunt.loadNpmTasks "grunt-simple-mocha"
  grunt.loadNpmTasks "grunt-contrib-watch"

  grunt.initConfig
    coffee:
      compile:
        options:
          bare: true
        files:
          "dist/rodash.js": "src/*coffee"
          "test/test.js": "test/*.coffee"

    simplemocha:
      all:
        src: ['test/*.js']
      options:
        globals: ['should']
        timeout: 3000
        slow: 200
        ignoreLeaks: true
        ui: 'bdd'

    watch:
      scripts:
        files: [ "src/*coffee", "test/*.coffee"]
        tasks: ["coffee","simplemocha"]


  grunt.registerTask('default', 'simplemocha')
