gulp = require('gulp')
rename = require('gulp-rename')
plumber = require('gulp-plumber')
purescript = require('gulp-purescript')

gulp.task 'build:purescript', ->
  gulp
    .src 'src/**/*.purs'
    .pipe plumber()
    .pipe purescript.psc {
      main: 'Chapter2'
    }
    .pipe rename 'all.js'
    .pipe gulp.dest('build')

gulp.task 'watch', ['build'], ->
  gulp.watch 'src/**/*.purs', ['build:purescript']

gulp.task 'build', ['build:purescript']
gulp.task 'default', ['build']
