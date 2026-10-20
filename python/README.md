Maze Generator API
============

Maze Generator creates random mazes using recursive backtracking algorithm with customizable size and difficulty.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-mazegenerator.svg)](https://pypi.org/project/apiverve-mazegenerator/)

This is a Python wrapper for the [Maze Generator API](https://apiverve.com/marketplace/maze?utm_source=pypi&utm_medium=referral&utm_content=readme)

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

Before using the Maze Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_mazegenerator.apiClient import MazeAPIClient

# Initialize the client with your APIVerve API key
api = MazeAPIClient("[YOUR_API_KEY]")

query = {
    "width": 15,
    "height": 15,
    "difficulty": "medium",
    "image": true,
    "solutionImage": true
}

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

The Maze Generator API documentation is found here: [https://docs.apiverve.com/ref/maze](https://docs.apiverve.com/ref/maze?utm_source=pypi&utm_medium=referral&utm_content=readme).
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
query = {
    "width": 15,
    "height": 15,
    "difficulty": "medium",
    "image": true,
    "solutionImage": true
}
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
        0,
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
        1
      ],
      [
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
        1,
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
        1,
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
        0,
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
        1,
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
        1,
        1,
        0,
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
    "html": "<html><head><title>Maze Puzzle</title><style>body {font-family: Arial, sans-serif; padding: 20px; text-align: center;}h1 {color: #333;}.maze {display: inline-grid; grid-template-columns: repeat(31, 19px); gap: 0; border: 2px solid #333;}.cell {width: 19px; height: 19px;}.wall {background: #333;}.path {background: #fff;}.start {background: #4CAF50;}.end {background: #F44336;}</style></head><body><h1>Maze</h1><p>Find your way from green to red!</p><div class='maze'><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell start'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell wall'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell path'></div><div class='cell end'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div><div class='cell wall'></div></div></body></html>",
    "image": {
      "imageName": "24ed4b60-28c5-4aa9-9d18-0dec8c2df627_puzzle.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve/APIData/maze/24ed4b60-28c5-4aa9-9d18-0dec8c2df627_puzzle.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010378&Signature=bh3WmsCSjfVyE003mAyBjbWf07n4%2FjfI48d%2FpJpNAQEimQ113b%2F1%2FcovTUBbbMBOMy8ehlNHL9TDUcg7JNkfbIZL9ZePI0ioWQygbZro6ypdiHv0url3Iwh46nQbp6PqQ8KVUYF2%2FE7vCVEji15cJDK%2F5NJ61Y40ICPhbDGuxRBoDpvBuYS5mIYaOgrteLQpfYUL5qlSE%2F34ifcA8PTxfPjTNG4ixNmRELw6xqtcQs7RMFVTui6bm9eEA6a8D%2Br7h7NhUEnJv7kuJJVY1ieHKxg6yTJIWZUd%2FVIXrPRTJF3lgpgJFubXzAs5x01CVxEGl%2B2cUiG4u4gB%2F4ILITSJsw%3D%3D",
      "expires": 1766010378634
    },
    "solutionImage": {
      "imageName": "7d1c4b60-c228-47d1-9f8a-d8141d087cdc_solution.png",
      "format": ".png",
      "downloadURL": "https://storage.googleapis.com/apiverve/APIData/maze/7d1c4b60-c228-47d1-9f8a-d8141d087cdc_solution.png?GoogleAccessId=635500398038-compute%40developer.gserviceaccount.com&Expires=1766010378&Signature=H7m2zOphZK6elU3niJ4BSJD%2FABqi%2BZ1cPKUfG8QJbd1fY3nyhVdD5wFAcGzvCN76kjtVg%2BwBlbIDr3QG6FhrBhll9eY2t3UnCioJQ6lqQZYRIaB%2FmURSUbeLEIg2PZvODwf3qgZmTSsH8kIiLynIgr3vvvJ%2FBzJFKt56OUZLo2eynqLVWz%2FiQbUCcZ%2F5C6auROc2nWvhoPgV1xAwKEYlNCyFnHXbtTbBiBMqmk7n7SXg3l3ijQGuop8WYWPoAdI0%2FqQcREz5HwTdFsOdsv7sfh2TusSpPzNUycR%2F%2B6KlwWduiB0TKYAZSrmn5GYsDHxF%2BxjgNT5xaT02%2FFvelOb5mw%3D%3D",
      "expires": 1766010378983
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

query = {
    "width": 15,
    "height": 15,
    "difficulty": "medium",
    "image": true,
    "solutionImage": true
}

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

query = {
    "width": 15,
    "height": 15,
    "difficulty": "medium",
    "image": true,
    "solutionImage": true
}

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

query = {
    "width": 15,
    "height": 15,
    "difficulty": "medium",
    "image": true,
    "solutionImage": true
}

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

query = {
    "width": 15,
    "height": 15,
    "difficulty": "medium",
    "image": true,
    "solutionImage": true
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_mazegenerator.apiClient import MazeAPIClient

api = MazeAPIClient("[YOUR_API_KEY]")

query = {
    "width": 15,
    "height": 15,
    "difficulty": "medium",
    "image": true,
    "solutionImage": true
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
