.PHONY: client master node network

client: 
	@echo "Running Client"
	@cd client && zig build run
master: 
	@echo "Running Master"
	@cd network && zig build run
node:
	@echo "Running Node"
	@cd server && zig build run
network:
	@echo "Building Network"
	@cd network && zig build