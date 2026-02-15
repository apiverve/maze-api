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
        /// Maze width
        /// </summary>
        [JsonProperty("width")]
        public string Width { get; set; }

        /// <summary>
        /// Maze height
        /// </summary>
        [JsonProperty("height")]
        public string Height { get; set; }

        /// <summary>
        /// Difficulty level
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }
    }
}
