# Example recipe that uses the LWRP to install litecoind

# Get access to the LWRP and install prerequisites
include_recipe "multicoin::default"

# Download, compile and configure the cryptocoin
multicoin "litecoin" do
  repository    "https://github.com/litecoin-project/litecoin.git"
  revision      "0.6.3"
  port          9333
  rpcpassword   "nojxxq2rryghg1p0ti7x"
end

# Start the cryptocoin node
service "litecoind" do
  provider Chef::Provider::Service::Upstart
  action :start
end
