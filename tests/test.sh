#!/bin/bash
curl -s http://localhost:8080 | grep "Bienvenue"
if [ $? -eq 0 ]; then
  echo "✅ Test passed"
else
  echo "❌ Test failed"
  exit 1
fi