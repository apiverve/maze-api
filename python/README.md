Maze Generator API
============

Maze Generator creates random mazes using recursive backtracking algorithm with customizable size and difficulty.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a Python API Wrapper for the [Maze Generator API](https://apiverve.com/marketplace/maze?utm_source=pypi&utm_medium=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-mazegenerator
```

Using `pip3`:

```bash
pip3 install apiverve-mazegenerator
```

---

## Configuration

Before using the maze API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_mazegenerator.apiClient import MazeAPIClient

# Initialize the client with your APIVerve API key
api = MazeAPIClient("[YOUR_API_KEY]")

query = { "width": 15, "height": 15, "difficulty": "medium" }

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Maze Generator API documentation is found here: [https://docs.apiverve.com/ref/maze](https://docs.apiverve.com/ref/maze?utm_source=pypi&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_mazegenerator.apiClient import MazeAPIClient

# Initialize the client with your APIVerve API key
api = MazeAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = { "width": 15, "height": 15, "difficulty": "medium" }
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "width": 15,
    "height": 15,
    "difficulty": "medium",
    "start": {
      "x": 1,
      "y": 1
    },
    "end": {
      "x": 29,
      "y": 29
    },
    "grid": [
      [
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1
      ],
      [
        1,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1
      ],
      [
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        0,
        1
      ],
      [
        1,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1
      ],
      [
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        1,
        1
      ],
      [
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1
      ],
      [
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        0,
        1
      ],
      [
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1
      ],
      [
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        1,
        1
      ],
      [
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1
      ],
      [
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        0,
        1
      ],
      [
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        1
      ],
      [
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        1
      ],
      [
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        1
      ],
      [
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        0,
        1
      ],
      [
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        1
      ],
      [
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        0,
        1
      ],
      [
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        1
      ],
      [
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        0,
        0,
        0,
        1,
        0,
        1,
        1,
        1
      ],
      [
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1
      ],
      [
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        0,
        1
      ],
      [
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        1
      ],
      [
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        0,
        1
      ],
      [
        1,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1
      ],
      [
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        0,
        1
      ],
      [
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        1
      ],
      [
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        0,
        1
      ],
      [
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1,
        0,
        1,
        0,
        0,
        0,
        1
      ],
      [
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        1,
        1,
        0,
        1,
        0,
        1,
        1,
        1
      ],
      [
        1,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        0,
        0,
        0,
        0,
        1,
        0,
        0,
        0,
        1
      ],
      [
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1,
        1
      ]
    ],
    "html": "<html><head><title>Maze Puzzle</title><style>body {font-family: Arial, sans-serif; padding: 20px; text-align: center;}h1 {color: #333;}.maze {display: inline-grid; grid-template-columns: repeat(31, 19px); gap: 0; border: 2px solid #333;}.cell {width: 19px; height: 19px;}.wall {background: #333;}.path {background: #fff;}.start {background: #4CAF50;}.end {background: #F44336;}</style></head><body><h1>Maze</h1><p>Find your way from green to red!</p><div class='maze'><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell start'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell end'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div></div></body></html>",
    "image": {
      "imageName": "ae2955eb-7151-48c1-a90b-3e67c08c0c6e_puzzle.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve.appspot.com/maze/ae2955eb-7151-48c1-a90b-3e67c08c0c6e_puzzle.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1764735759&Signature=ZSnW950f7ONQc6GAFmiCm7cQhPSS7f9CcxkckS1JoXhSp3vLSgN6eis0p1RTW9riNpGXI%2BlC3gjW%2FrrJcP1e9%2BV9z0ZFwpjVlzCNs%2BoXeMK2QbVCcd%2FIorvsiZRCzLknp1SKMJOcyqUChGVRsQN97q80BGvmKxsvMvWTXbzCvJF634sw8UvSrVBcrDY4FKLL75K%2BvOcIV8n9DExDdVKYXc%2B1NUxywL5uhmZPFe7vG6DcFIUwOsEJbgNi7Huw%2Fa%2BlC51sUT3wW9DoNPb9T04tB7pZ9gZaI9reLCvZUa%2BbWjHWeZYu3E4fz55lS9PaYILuOX5cjNa3ywDbxtCClSb8DA%3D%3D",
      "expires": 1764735759356
    },
    "solutionImage": {
      "imageName": "cc26ac88-ae60-4ea1-9b2d-bf81500b9a43_solution.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve.appspot.com/maze/cc26ac88-ae60-4ea1-9b2d-bf81500b9a43_solution.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1764735759&Signature=XZmIPV5aYT%2BmCywJ%2BB14G%2B4Yj0YbyBFCjNkZNUELx6srU6Aik8VOXAlHB8WABV4n%2FDA7e%2FxdRZ63RhQxURrw6%2F3YF1nC3SEdB8OrSGT%2F8Ih3D%2F%2FeNOOmT7YO8n5xjSbdbRIgZVqzBZ6sel8V5%2BqqepDkGt7HAX3kQckWgPHNoYKqoc0ydcPBLsQI%2B5vjNuT7%2F08I8QBk2625%2B7IanYaaFvKlAkjD9WlUGn3eit%2FqQbGxGGp8YLSntgYyci7HUAJxuPtnMqMWzK10XgggDFqBNdA6G40qL7BkMx6sc7igtrI3LsjiwIueigNwNmPTn4VZ%2Bb%2FP1OszqFZMKrYIvjn1nw%3D%3D",
      "expires": 1764735759882
    }
  }
}
```

---

## Error Handling

The API client provides comprehensive error handling through the `MazeAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_mazegenerator.apiClient import MazeAPIClient, MazeAPIClientError

api = MazeAPIClient("[YOUR_API_KEY]")

query = { "width": 15, "height": 15, "difficulty": "medium" }

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except MazeAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_mazegenerator.apiClient import MazeAPIClient, MazeAPIClientError

api = MazeAPIClient("[YOUR_API_KEY]")

query = { "width": 15, "height": 15, "difficulty": "medium" }

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except MazeAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_mazegenerator.apiClient import MazeAPIClient, MazeAPIClientError

query = { "width": 15, "height": 15, "difficulty": "medium" }

# Using context manager ensures proper cleanup
with MazeAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except MazeAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_mazegenerator.apiClient import MazeAPIClient

# Enable debug mode
api = MazeAPIClient("[YOUR_API_KEY]", debug=True)

query = { "width": 15, "height": 15, "difficulty": "medium" }

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_mazegenerator.apiClient import MazeAPIClient

api = MazeAPIClient("[YOUR_API_KEY]")

try:
    query = { "width": 15, "height": 15, "difficulty": "medium" }
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
