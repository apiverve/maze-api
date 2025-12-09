APIVerve.API.MazeGenerator API
============

Maze Generator creates random mazes using recursive backtracking algorithm with customizable size and difficulty.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a .NET Wrapper for the [APIVerve.API.MazeGenerator API](https://apiverve.com/marketplace/maze)

---

## Installation

Using the .NET CLI:
```
dotnet add package APIVerve.API.MazeGenerator
```

Using the Package Manager:
```
nuget install APIVerve.API.MazeGenerator
```

Using the Package Manager Console:
```
Install-Package APIVerve.API.MazeGenerator
```

From within Visual Studio:

1. Open the Solution Explorer
2. Right-click on a project within your solution
3. Click on Manage NuGet Packages
4. Click on the Browse tab and search for "APIVerve.API.MazeGenerator"
5. Click on the APIVerve.API.MazeGenerator package, select the appropriate version in the right-tab and click Install

---

## Configuration

Before using the maze API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MazeGeneratorQueryOptions {
  width = 15,
  height = 15,
  difficulty = "medium"
};

        // Make the API call
        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                // Access response data using the strongly-typed ResponseObj properties
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Exception: {ex.Message}");
        }
    }
}
```

---

## Usage

The APIVerve.API.MazeGenerator API documentation is found here: [https://docs.apiverve.com/ref/maze](https://docs.apiverve.com/ref/maze).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
APIVerve.API.MazeGenerator API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

```csharp
// Create an instance of the API client
var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]");
```

---

## Usage Examples

### Basic Usage (Async/Await Pattern - Recommended)

The modern async/await pattern provides the best performance and code readability:

```csharp
using System;
using System.Threading.Tasks;
using APIVerve;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MazeGeneratorQueryOptions {
  width = 15,
  height = 15,
  difficulty = "medium"
};

        var response = await apiClient.ExecuteAsync(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

### Synchronous Usage

If you need to use synchronous code, you can use the `Execute` method:

```csharp
using System;
using APIVerve;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MazeGeneratorQueryOptions {
  width = 15,
  height = 15,
  difficulty = "medium"
};

        var response = apiClient.Execute(queryOptions);

        if (response.Error != null)
        {
            Console.WriteLine($"Error: {response.Error}");
        }
        else
        {
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
    }
}
```

---

## Error Handling

The API client provides comprehensive error handling. Here are some examples:

### Handling API Errors

```csharp
using System;
using System.Threading.Tasks;
using APIVerve;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MazeGeneratorQueryOptions {
  width = 15,
  height = 15,
  difficulty = "medium"
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            // Check for API-level errors
            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
                Console.WriteLine($"Status: {response.Status}");
                return;
            }

            // Success - use the data
            Console.WriteLine("Request successful!");
            Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
        }
        catch (ArgumentException ex)
        {
            // Invalid API key or parameters
            Console.WriteLine($"Invalid argument: {ex.Message}");
        }
        catch (System.Net.Http.HttpRequestException ex)
        {
            // Network or HTTP errors
            Console.WriteLine($"Network error: {ex.Message}");
        }
        catch (Exception ex)
        {
            // Other errors
            Console.WriteLine($"Unexpected error: {ex.Message}");
        }
    }
}
```

### Comprehensive Error Handling with Retry Logic

```csharp
using System;
using System.Threading.Tasks;
using APIVerve;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new MazeGeneratorQueryOptions {
  width = 15,
  height = 15,
  difficulty = "medium"
};

        try
        {
            var response = await apiClient.ExecuteAsync(queryOptions);

            if (response.Error != null)
            {
                Console.WriteLine($"API Error: {response.Error}");
            }
            else
            {
                Console.WriteLine("Success!");
                Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
            }
        }
        catch (Exception ex)
        {
            Console.WriteLine($"Failed after retries: {ex.Message}");
        }
    }
}
```

---

## Advanced Features

### Custom Headers

Add custom headers to your requests:

```csharp
var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]");

// Add custom headers
apiClient.AddCustomHeader("X-Custom-Header", "custom-value");
apiClient.AddCustomHeader("X-Request-ID", Guid.NewGuid().ToString());

var queryOptions = new MazeGeneratorQueryOptions {
  width = 15,
  height = 15,
  difficulty = "medium"
};

var response = await apiClient.ExecuteAsync(queryOptions);

// Remove a header
apiClient.RemoveCustomHeader("X-Custom-Header");

// Clear all custom headers
apiClient.ClearCustomHeaders();
```

### Request Logging

Enable logging for debugging:

```csharp
var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]", isDebug: true);

// Or use a custom logger
apiClient.SetLogger(message =>
{
    Console.WriteLine($"[LOG] {DateTime.Now:yyyy-MM-dd HH:mm:ss} - {message}");
});

var queryOptions = new MazeGeneratorQueryOptions {
  width = 15,
  height = 15,
  difficulty = "medium"
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Retry Configuration

Customize retry behavior for failed requests:

```csharp
var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]");

// Set retry options
apiClient.SetMaxRetries(3);           // Retry up to 3 times (default: 0, max: 3)
apiClient.SetRetryDelay(1500);        // Wait 1.5 seconds between retries (default: 1000ms)

var queryOptions = new MazeGeneratorQueryOptions {
  width = 15,
  height = 15,
  difficulty = "medium"
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
using (var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]"))
{
    var queryOptions = new MazeGeneratorQueryOptions {
  width = 15,
  height = 15,
  difficulty = "medium"
};
    var response = await apiClient.ExecuteAsync(queryOptions);
    Console.WriteLine(Newtonsoft.Json.JsonConvert.SerializeObject(response, Newtonsoft.Json.Formatting.Indented));
}
// HttpClient is automatically disposed here
```

---

## Example Response

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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2025 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
