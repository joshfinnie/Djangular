gulp = require 'gulp'
gutil = require 'gulp-util'

coffee = require 'gulp-coffee'

gulp.task 'coffee', ->
    gulp.src('djangular/frontend/**/*.coffee')
        .pipe(coffee({bare: true}).on('error', gutil.log))
        .pipe(gulp.dest('djangular/static/js/'))
    
gulp.task 'watch', ->
    gulp.watch("djangular/frontend/**/*.coffee", ['coffee'])

gulp.task('default', ['coffee', 'watch'])
