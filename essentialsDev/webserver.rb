package 'httpd' do
    action :install
end 
#default action is already install, just written as a reminder

service 'httpd' do
    action :start
    start_command '/usr/sbin/httpd -k start'
end

file '/var/www/html/index.html' do
    content '<html>
    <body>
      <h1>hello world</h1>
    </body>
  </html>'
end