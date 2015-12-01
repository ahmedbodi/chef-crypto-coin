actions :install
default_action :install

attribute :name,            		:kind_of => String, :name_attribute => true, :required => true
attribute :Acronymn,	    		:kind_of => String	
attribute :user,            		:kind_of => String
attribute :group,           		:kind_of => String
attribute :home,            		:kind_of => String
attribute :executable,      		:kind_of => String
attribute :clone_path,      		:kind_of => String
attribute :data_dir,        		:kind_of => String
attribute :conf,            		:kind_of => Hash, :default => {}
attribute :extra_config,    		:kind_of => Hash, :default => {}

attribute :autostart,       		:kind_of => [TrueClass, FalseClass], :default => true
attribute :respawn_times,   		:kind_of => String, :default => '10'
attribute :respawn_seconds, 		:kind_of => String, :default => '60'

attribute :repository,      		:kind_of => String, :required => true
attribute :revision,        		:kind_of => String, :default => 'master'

attribute :rpcuser,        		:kind_of => String, :required => true
attribute :rpcpassword,    		:kind_of => String, :required => true
attribute :rpcport,        		:kind_of => Integer
attribute :port,           		:kind_of => Integer, :required => true
attribute :daemon,         		:kind_of => Integer
attribute :server,         		:kind_of => Integer
attribute :pid,            		:kind_of => String
attribute :irc,            		:kind_of => Integer
attribute :dns,            		:kind_of => Integer
attribute :forcednsseed,   		:kind_of => Integer
attribute :alertnotify,    		:kind_of => String
attribute :blocknotify,    		:kind_of => String
attribute :txindex,        		:kind_of => Integer
attribute :keypool,        		:kind_of => Integer
attribute :sendfreetransactions,	:kind_of => Integer
attribute :rpcallowip,      		:kind_of => Array


attribute :compile_cmd,    		:kind_of => String

attr_accessor :exists
