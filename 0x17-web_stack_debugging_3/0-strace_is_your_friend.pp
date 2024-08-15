# A puppet manuscript to replace line in a file on a server

$file_to_edit = '/var/www/html/wp-settings.php'

#replace line that contains "phpp" with "php"

exec { 'replace_line':
  command => "sed -i 's/phpp/php/g' ${file_to_edit}",
  path    => ['/bin','/usr/bin']
}
