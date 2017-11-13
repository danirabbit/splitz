project('com.github.danrabbit.splitz', 'vala', 'c')

gnome = import('gnome')
i18n = import('i18n')

add_global_arguments('-DGETTEXT_PACKAGE="' + meson.project_name() + '"', language:'c')

asresources = gnome.compile_resources(
    'as-resources', 'data/css.gresource.xml',
    source_dir: 'data',
    c_name: 'as'
)

executable(
    meson.project_name(),
    'src/Application.vala',
    'src/MainWindow.vala',
    asresources,
    dependencies: [
        dependency('glib-2.0'),
        dependency('gobject-2.0'),
        dependency('gtk+-3.0'),
    ],
    install: true
)

#subdir('data')
#subdir('po')
