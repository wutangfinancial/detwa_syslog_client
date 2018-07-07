
cookbook_file '/etc/rsyslog.d/98-network.conf' do
	source '98-network.conf'
	owner 'root'
	group 'root'
	mode '0644'
	action :create
	notifies :restart, 'service[rsyslog]', :immediately
end

service "rsyslog" do
	action [ :enable, :start ]
end
