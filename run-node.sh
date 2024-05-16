cd ~ && git clone https://github.com/QuilibriumNetwork/ceremonyclient.git

cd ~/ceremonyclient/client && GOEXPERIMENT=arenas go build -o qclient main.go

tmux new-session -d -s quil 'export PATH=$PATH:/usr/local/go/bin && cd ~/ceremonyclient/node && ~/scripts/qnode_restart.sh'
