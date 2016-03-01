# conjur-virtualbox

This project uses puppet and vagrant to create a virtual box appliance for Conjur.

It installs and configures a [Conjur Master](https://developer.conjur.net/server_setup/platforms/docker.html) and the [Conjur UI](https://developer.conjur.net/server_setup/tools/ui.html).  The hostname for the image conjur.local.

## Running
1. Copy the docker container to this directory
2. vagrant up

It takes 10 minutes or so to configure the appliance, but when its done you should be able to access the CLI on port 4443
and the Conjur UI on port 8443.

You can log into both with admin/conjur
