declare module '@apiverve/maze' {
  export interface mazeOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface mazeResponse {
    status: string;
    error: string | null;
    data: MazeGeneratorData;
    code?: number;
  }


  interface MazeGeneratorData {
      width:         number;
      height:        number;
      difficulty:    string;
      start:         End;
      end:           End;
      grid:          Array<number[]>;
      html:          string;
      image:         Image;
      solutionImage: Image;
  }
  
  interface End {
      x: number;
      y: number;
  }
  
  interface Image {
      imageName:   string;
      format:      string;
      downloadURL: string;
      expires:     number;
  }

  export default class mazeWrapper {
    constructor(options: mazeOptions);

    execute(callback: (error: any, data: mazeResponse | null) => void): Promise<mazeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: mazeResponse | null) => void): Promise<mazeResponse>;
    execute(query?: Record<string, any>): Promise<mazeResponse>;
  }
}
