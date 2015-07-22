module.exports = function(grunt) {

  grunt.initConfig({
    sass: {
      dist: {
        files: {
          "dist/css/app.css": "scss/app.scss"
        }
      }
    },
    elm: {
      compile: {
        files: {
          "dist/js/app.js": ["src/**/*.elm"],
          "tmp/test_suite.js": ["test/**/*.elm"]
        }
      }
    },
    watch: {
      elm: {
        files: ["src/**/*.elm", "test/**/*.elm"],
        tasks: ["elm"]
      },
      sass: {
        files: ["scss/**/*.scss"],
        tasks: ["sass"]
      }
    },
    clean: ["elm-stuff/build-artifacts"]
  });

  grunt.loadNpmTasks('grunt-contrib-watch');
  grunt.loadNpmTasks('grunt-contrib-clean');
  grunt.loadNpmTasks('grunt-sass');
  grunt.loadNpmTasks('grunt-elm');

  grunt.registerTask('default', ['elm', 'sass']);

};
