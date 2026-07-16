# [Maze Generator API](https://apiverve.com/marketplace/maze?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)

Maze Generator creates random mazes using recursive backtracking algorithm with customizable size and difficulty.

The Maze Generator API provides a simple, reliable way to integrate maze generator functionality into your applications. Built for developers who need production-ready maze generator capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/maze?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/maze?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/maze)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.MazeGenerator)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-maze/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_maze)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/maze)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_maze)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callMazeGeneratorAPI() {
    try {
        const params = new URLSearchParams({
            width: 15,
            height: 15,
            difficulty: 'medium'
        });

        const response = await fetch(`https://api.apiverve.com/v1/maze?${params}`, {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callMazeGeneratorAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/maze?width=15&height=15&difficulty=medium" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/maze
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/maze) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.MazeGenerator
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.MazeGenerator) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-maze
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-maze/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_maze
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_maze) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/maze
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/maze) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_maze
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_maze) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:maze-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/maze-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Maze Generator API](https://apiverve.com/marketplace/maze?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/maze](https://docs.apiverve.com/ref/maze)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Maze Generator API is commonly used for:

- **Web Applications** - Add maze generator features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with maze generator capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Maze Generator API:

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

## Support & Community

- 🏠 **API Home**: [Maze Generator API](https://apiverve.com/marketplace/maze?utm_source&#x3D;github&amp;utm_medium&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
