#!/bin/bash
# Local Jekyll development setup for ESPHome Fancontroller website

set -e

echo "Setting up local Jekyll development environment..."

# Check if Ruby is installed
if ! command -v ruby &> /dev/null; then
    echo "Installing Ruby and dependencies..."
    sudo apt-get update
    sudo apt-get install -y ruby-full build-essential zlib1g-dev
fi

# Configure gem installation to user directory (avoid sudo)
if ! grep -q "GEM_HOME" ~/.bashrc; then
    echo "" >> ~/.bashrc
    echo "# Install Ruby Gems to ~/gems" >> ~/.bashrc
    echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
    echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
    echo "Added gem configuration to ~/.bashrc"
    export GEM_HOME="$HOME/gems"
    export PATH="$HOME/gems/bin:$PATH"
fi

# Install bundler if not present
if ! command -v bundle &> /dev/null; then
    echo "Installing Bundler..."
    gem install bundler
fi

# Install dependencies
echo "Installing Jekyll and dependencies..."
cd static
bundle install

echo ""
echo "✓ Setup complete!"
echo ""
echo "To start the local development server:"
echo "  cd static"
echo "  bundle exec jekyll serve"
echo ""
echo "Then access your site at: http://localhost:4000"
