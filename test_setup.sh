#!/bin/bash
echo "=== FlooNoC Setup Verification ==="
echo "1. Checking Python dependencies..."
python -c "import yaml, mako, jinja2; print('✓ Python dependencies OK')"

echo "2. Checking Bender..."
bender --version

echo "3. Checking Verilator..."
verilator --version 2>/dev/null && echo "✓ Verilator found" || echo "✗ Verilator not installed"

echo "4. Checking source files..."
find hw/ -name "*.sv" | wc -l | xargs echo "✓ Number of SystemVerilog files:"

echo "5. Checking floogen examples..."
ls floogen/examples/*.yml 2>/dev/null | wc -l | xargs echo "✓ Number of example configurations:"

echo "=== Setup Complete ==="
