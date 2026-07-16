MazeGenerator API
============

Maze Generator creates random mazes using recursive backtracking algorithm with customizable size and difficulty.

![Build Status](https://img.shields.io/badge/build-passing-green)
![Code Climate](https://img.shields.io/badge/maintainability-B-purple)
![Prod Ready](https://img.shields.io/badge/production-ready-blue)

This is a .NET Wrapper for the [MazeGenerator API](https://apiverve.com/marketplace/maze?utm_source=nuget&utm_medium=readme)

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
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=nuget&utm_medium=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```csharp
using System;
using APIVerve.API.MazeGenerator;

class Program
{
    static async Task Main(string[] args)
    {
        // Initialize the API client
        var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MazeGeneratorQueryOptions {
    Width = 15,
    Height = 15,
    Difficulty = "medium",
    Image = true,
    SolutionImage = true
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

The MazeGenerator API documentation is found here: [https://docs.apiverve.com/ref/maze](https://docs.apiverve.com/ref/maze?utm_source=nuget&utm_medium=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

###### Authentication
MazeGenerator API uses API Key-based authentication. When you create an instance of the API client, you can pass your API Key as a parameter.

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
using APIVerve.API.MazeGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MazeGeneratorQueryOptions {
    Width = 15,
    Height = 15,
    Difficulty = "medium",
    Image = true,
    SolutionImage = true
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
using APIVerve.API.MazeGenerator;

public class Example
{
    public static void Main(string[] args)
    {
        var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MazeGeneratorQueryOptions {
    Width = 15,
    Height = 15,
    Difficulty = "medium",
    Image = true,
    SolutionImage = true
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
using APIVerve.API.MazeGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]");

        var queryOptions = new MazeGeneratorQueryOptions {
    Width = 15,
    Height = 15,
    Difficulty = "medium",
    Image = true,
    SolutionImage = true
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
using APIVerve.API.MazeGenerator;

public class Example
{
    public static async Task Main(string[] args)
    {
        var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]");

        // Configure retry behavior (max 3 retries)
        apiClient.SetMaxRetries(3);        // Retry up to 3 times (default: 0, max: 3)
        apiClient.SetRetryDelay(2000);     // Wait 2 seconds between retries

        var queryOptions = new MazeGeneratorQueryOptions {
    Width = 15,
    Height = 15,
    Difficulty = "medium",
    Image = true,
    SolutionImage = true
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
    Width = 15,
    Height = 15,
    Difficulty = "medium",
    Image = true,
    SolutionImage = true
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
    Width = 15,
    Height = 15,
    Difficulty = "medium",
    Image = true,
    SolutionImage = true
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
    Width = 15,
    Height = 15,
    Difficulty = "medium",
    Image = true,
    SolutionImage = true
};

var response = await apiClient.ExecuteAsync(queryOptions);
```

### Dispose Pattern

The API client implements `IDisposable` for proper resource cleanup:

```csharp
var queryOptions = new MazeGeneratorQueryOptions {
    Width = 15,
    Height = 15,
    Difficulty = "medium",
    Image = true,
    SolutionImage = true
};

using (var apiClient = new MazeGeneratorAPIClient("[YOUR_API_KEY]"))
{
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

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=nuget&utm_medium=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=nuget&utm_medium=readme) and all legal documents and agreements.

---

## License
Licensed under the The MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
