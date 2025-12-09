using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.MazeGenerator
{
    /// <summary>
    /// Query options for the Maze Generator API
    /// </summary>
    public class MazeGeneratorQueryOptions
    {
        /// <summary>
        /// Maze width (5-50)
        /// Example: 15
        /// </summary>
        [JsonProperty("width")]
        public string Width { get; set; }

        /// <summary>
        /// Maze height (5-50)
        /// Example: 15
        /// </summary>
        [JsonProperty("height")]
        public string Height { get; set; }

        /// <summary>
        /// Difficulty: easy, medium, hard
        /// Example: medium
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }
    }
}
