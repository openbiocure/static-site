# OpenBioCure React Static Site Makefile

.PHONY: init build dev preview clean lint test deploy

# Initialize the project and install dependencies
init:
	@echo "🚀 Initializing OpenBioCure static site..."
	npm install
	@echo "✅ Project initialized successfully!"

# Build the static site for production
build:
	@echo "🔨 Building static site..."
	npm run build
	@echo "✅ Build completed! Static files are in ./dist"

# Start development server
dev:
	@echo "🌐 Starting development server..."
	npm run dev

# Preview the production build locally
preview:
	@echo "👀 Previewing production build..."
	npm run preview

# Clean build artifacts
clean:
	@echo "🧹 Cleaning build artifacts..."
	rm -rf dist
	rm -rf node_modules
	@echo "✅ Clean completed!"

# Lint the code
lint:
	@echo "🔍 Linting code..."
	npm run lint

# Run tests
test:
	@echo "🧪 Running tests..."
	npm run test

# Deploy to GitHub Pages (requires gh-pages package)
deploy:
	@echo "🚀 Deploying to GitHub Pages..."
	npm run deploy

# Install additional development dependencies
dev-deps:
	@echo "📦 Installing development dependencies..."
	npm install --save-dev @types/react @types/react-dom eslint prettier

# Format code with prettier
format:
	@echo "✨ Formatting code..."
	npx prettier --write "src/**/*.{js,jsx,ts,tsx,css,md}"

# Check for outdated packages
outdated:
	@echo "📋 Checking for outdated packages..."
	npm outdated

# Update dependencies
update:
	@echo "🔄 Updating dependencies..."
	npm update

# Show project info
info:
	@echo "📊 Project Information:"
	@echo "Name: OpenBioCure Static Site"
	@echo "Framework: React + Vite"
	@echo "Build output: ./dist"
	@echo "Available commands:"
	@echo "  make init     - Initialize project"
	@echo "  make dev      - Start development server"
	@echo "  make build    - Build for production"
	@echo "  make preview  - Preview production build"
	@echo "  make clean    - Clean build artifacts"
	@echo "  make lint     - Lint code"
	@echo "  make format   - Format code"
	@echo "  make deploy   - Deploy to GitHub Pages" 