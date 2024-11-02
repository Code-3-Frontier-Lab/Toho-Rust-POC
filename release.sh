# Install Rustup
echo "Installing Rustup..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Activate Rust environment
source "$HOME/.cargo/env"

# Add WebAssembly target
rustup target add wasm32-unknown-unknown

# Build a WebAssembly binary using Cargo
cargo build --target wasm32-unknown-unknown --release

# Copy the compiled WebAssembly binary to the current directory
cp ../target/wasm32-unknown-unknown/release/toho-in-rust.wasm .

# Copy the assets directory to the current directory
cp -r ../assets .
