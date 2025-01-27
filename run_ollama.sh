#!/bin/bash

echo "Starting Ollama server..."
ollama serve &
ollama run deepseek-r1:32b

echo "Waiting for Ollama server to be active..."
while [ "$(ollama list | grep 'NAME')" == "" ]; do
  sleep 1
done