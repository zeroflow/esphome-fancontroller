# Local Development Setup

This document describes how to run the ESPHome Fancontroller website locally for development.

## Option 1: Docker (Recommended)

The easiest way to run the site locally without installing Ruby:

```bash
# Start the Jekyll server
docker-compose up

# Access the site at http://localhost:4000
```

The server will automatically reload when you edit files.

To stop the server: `Ctrl+C` or `docker-compose down`

## Option 2: Native Ruby Installation

If you prefer to run Jekyll natively:

```bash
# Run the setup script (only needed once)
bash setup_local.sh

# Start the development server
cd static
bundle exec jekyll serve

# Access the site at http://localhost:4000
```

### Manual Setup

If the setup script doesn't work, run these commands:

```bash
# Install Ruby and dependencies
sudo apt-get update
sudo apt-get install -y ruby-full build-essential zlib1g-dev

# Configure gems to install in your home directory
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Install bundler and dependencies
gem install bundler
cd static
bundle install

# Start the server
bundle exec jekyll serve
```

## Development Workflow

1. Make changes to files in `static/`
2. Jekyll will automatically rebuild the site
3. Refresh your browser to see changes
4. Press `Ctrl+C` to stop the server when done

## Common Commands

```bash
# Clean build artifacts
cd static
bundle exec jekyll clean

# Build without serving
bundle exec jekyll build

# Serve with draft posts visible
bundle exec jekyll serve --drafts

# Serve on a different port
bundle exec jekyll serve --port 4001
```
