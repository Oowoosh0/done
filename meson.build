project(
  'com.github.oowoosh0.done',
  'vala', 'c',
  version: '0.1',
  meson_version: '>=0.58.0'
)

gnome = import('gnome')
i18n = import('i18n')

profile = get_option('profile')
if profile == 'devel'
    app_id = meson.project_name() + '.Devel'
    app_name = 'DoneDevel'
    app_path = '/com/github/oowoosh0/done/Devel'
else
    app_id = meson.project_name()
    app_name = 'Done'
    app_path = '/com/github/oowoosh0/done'
endif

add_global_arguments('-DGETTEXT_PACKAGE="@0@"'.format (app_id), language:'c')

conf_data = configuration_data()
conf_data.set_quoted('APP_ID', app_id)
conf_data.set('APP_ID_UNQUOTED', app_id)
conf_data.set('APP_NAME', app_name)
conf_data.set('APP_PATH', app_path)
conf_data.set_quoted('PROFILE', profile)
conf_data.set_quoted('LOCALEDIR', get_option('prefix') / get_option('localedir'))
conf_data.set_quoted('GETTEXT_PACKAGE', app_id)
conf_file = configure_file(
    input: 'src/Config.vala.in',
    output: '@BASENAME@',
    configuration: conf_data
)

dependencies = [
    dependency('gtk4'),
    dependency('granite-7')
]

subdir('src')
