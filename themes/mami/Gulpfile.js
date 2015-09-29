/**
 * Gulp tasks:
 *     gulp         (default task)
 *     gulp css     (build dev css)
 *     gulp img     (optimise images)
 *     gulp serve   (run browser-sync and watch for css and js changes)
 */

var gulp = require('gulp'),

    // Requirements
    bs       = require('browser-sync').create(),
    csslint  = require('gulp-csslint'),
    cssmin   = require('gulp-cssmin'),
    imagemin = require('gulp-imagemin'),
    jshint   = require('gulp-jshint'),
    pngquant = require('imagemin-pngquant'),
    prefixer = require('gulp-autoprefixer'),
    rename   = require('gulp-rename'),
    sass     = require('gulp-sass'),
    srcmap   = require('gulp-sourcemaps'),

    // Options
    options = {
        imagemin: {
            progressive : true,
            use: [pngquant()]
        },
        prefixer: {
            browsers : ['last 2 versions', 'IE 8', 'IE 9']
        },
        rename: {
            css: {
                suffix: '.min'
            }
        },
        sass: {
            outputStyle       : 'expanded',
            sourceComments    : true,
            sourceMapContents : true
        },
    },

    // Source paths
    build = {
        scss : 'scss/',
        css  : 'css/',
        img  : 'img/',
        js   : 'js/'
    },
    dist = {
        css : 'dist/css/',
        img : 'dist/img/',
        js  : 'dist/js/'
    };;

// Default task
gulp.task('default', ['serve']);

// Build css for development (not minified)
gulp.task('css', function() {
    return gulp.src(build.scss + '**/*.scss')
        .pipe(sass(options.sass).on('error', sass.logError))
        .pipe(prefixer(options.prefixer))
        .pipe(csslint())
        .pipe(csslint.reporter())
        .pipe(gulp.dest(build.css));
});

// Build dist css (minified)
gulp.task('css:dist', function() {
    return gulp.src(build.css + '**/*.css')
        .pipe(srcmap.init())
        .pipe(cssmin())
        .pipe(rename(options.rename.css))
        .pipe(srcmap.write(dist.css))
        .pipe(gulp.dest(dist.css));
});

// Image optimisation
gulp.task('imagemin', function() {
    return gulp.src(build.img + '*')
        .pipe(imagemin(options.imagemin))
        .pipe(gulp.dest(dist.img));
});

// Serve with browser-sync
gulp.task('serve', function() {

    bs.init({
        proxy: 'mami.vagrant'
    });

    gulp.watch(build.scss, ['css']);
    gulp.watch(build.css, ['css:dist']);
    gulp.watch(build.img, ['imagemin']);
    gulp.watch('templates/**/*.ss')
        .on('change', bs.reload);
});
