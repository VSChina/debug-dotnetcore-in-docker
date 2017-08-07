## Install VSDBG (the .Net Core command line debugger) and ps in container
* `apt-get update`
* `apt-get install -y unzip procps`
* `curl -sSL https://aka.ms/getvsdbgsh | bash /dev/stdin -v latest -l ~/vsdbg`