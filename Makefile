all: client server

client: target/wasm32-unknown-unknown/debug/client.wasm

server: target/debug/server

target/debug/server: server/src/main.rs
	cargo build -p server

target/wasm32-unknown-unknown/debug/client.wasm: client/src/main.rs
	cargo build -p client --target wasm32-unknown-unknown

clean:
	cargo clean
