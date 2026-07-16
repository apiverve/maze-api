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
        public int? Width { get; set; }

        /// <summary>
        /// Maze height
        /// </summary>
        [JsonProperty("height")]
        public int? Height { get; set; }

        /// <summary>
        /// Difficulty level
        /// </summary>
        [JsonProperty("difficulty")]
        public string Difficulty { get; set; }

        /// <summary>
        /// Set to true to generate a downloadable maze image
        /// </summary>
        [JsonProperty("image")]
        public bool? Image { get; set; }

        /// <summary>
        /// Set to true to generate a downloadable solution image
        /// </summary>
        [JsonProperty("solutionImage")]
        public bool? SolutionImage { get; set; }
    }
}
