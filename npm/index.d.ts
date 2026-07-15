declare module '@apiverve/maze' {
  export interface mazeOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface mazeResponse {
    status: string;
    error: string | null;
    data: MazeGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface MazeGeneratorData {
      width:         number | null;
      height:        number | null;
      difficulty:    null | string;
      start:         End;
      end:           End;
      grid:          Array<(number | null)[]>;
      html:          null | string;
      image:         Image;
      solutionImage: Image;
  }
  
  interface End {
      x: number | null;
      y: number | null;
  }
  
  interface Image {
      imageName:   null | string;
      format:      null | string;
      downloadURL: null | string;
      expires:     number | null;
  }

  export default class mazeWrapper {
    constructor(options: mazeOptions);

    execute(callback: (error: any, data: mazeResponse | null) => void): Promise<mazeResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: mazeResponse | null) => void): Promise<mazeResponse>;
    execute(query?: Record<string, any>): Promise<mazeResponse>;
  }
}
