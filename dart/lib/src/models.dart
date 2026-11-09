/// Response models for the Maze Generator API.

/// API Response wrapper.
class MazeResponse {
  final String status;
  final dynamic error;
  final MazeData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  MazeResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory MazeResponse.fromJson(Map<String, dynamic> json) => MazeResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? MazeData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Maze Generator API.

class MazeData {
  num? width;
  num? height;
  String? difficulty;
  MazeDataStart? start;
  MazeDataEnd? end;
  List<MazeDataGridItem>? grid;
  String? html;
  MazeDataImage? image;
  MazeDataSolutionimage? solutionImage;

  MazeData({
    this.width,
    this.height,
    this.difficulty,
    this.start,
    this.end,
    this.grid,
    this.html,
    this.image,
    this.solutionImage,
  });

  factory MazeData.fromJson(Map<String, dynamic> json) => MazeData(
      width: json['width'],
      height: json['height'],
      difficulty: json['difficulty'],
      start: json['start'] != null ? MazeDataStart.fromJson(json['start']) : null,
      end: json['end'] != null ? MazeDataEnd.fromJson(json['end']) : null,
      grid: (json['grid'] as List?)?.map((e) => MazeDataGridItem.fromJson(e)).toList(),
      html: json['html'],
      image: json['image'] != null ? MazeDataImage.fromJson(json['image']) : null,
      solutionImage: json['solutionImage'] != null ? MazeDataSolutionimage.fromJson(json['solutionImage']) : null,
    );
}

class MazeDataStart {
  num? x;
  num? y;

  MazeDataStart({
    this.x,
    this.y,
  });

  factory MazeDataStart.fromJson(Map<String, dynamic> json) => MazeDataStart(
      x: json['x'],
      y: json['y'],
    );
}

class MazeDataEnd {
  num? x;
  num? y;

  MazeDataEnd({
    this.x,
    this.y,
  });

  factory MazeDataEnd.fromJson(Map<String, dynamic> json) => MazeDataEnd(
      x: json['x'],
      y: json['y'],
    );
}

class MazeDataGridItem {
  num? 0;
  num? 1;
  num? 2;
  num? 3;
  num? 4;
  num? 5;
  num? 6;
  num? 7;
  num? 8;
  num? 9;
  num? 10;
  num? 11;
  num? 12;
  num? 13;
  num? 14;
  num? 15;
  num? 16;
  num? 17;
  num? 18;
  num? 19;
  num? 20;
  num? 21;
  num? 22;
  num? 23;
  num? 24;
  num? 25;
  num? 26;
  num? 27;
  num? 28;
  num? 29;
  num? 30;

  MazeDataGridItem({
    this.0,
    this.1,
    this.2,
    this.3,
    this.4,
    this.5,
    this.6,
    this.7,
    this.8,
    this.9,
    this.10,
    this.11,
    this.12,
    this.13,
    this.14,
    this.15,
    this.16,
    this.17,
    this.18,
    this.19,
    this.20,
    this.21,
    this.22,
    this.23,
    this.24,
    this.25,
    this.26,
    this.27,
    this.28,
    this.29,
    this.30,
  });

  factory MazeDataGridItem.fromJson(Map<String, dynamic> json) => MazeDataGridItem(
      0: json['0'],
      1: json['1'],
      2: json['2'],
      3: json['3'],
      4: json['4'],
      5: json['5'],
      6: json['6'],
      7: json['7'],
      8: json['8'],
      9: json['9'],
      10: json['10'],
      11: json['11'],
      12: json['12'],
      13: json['13'],
      14: json['14'],
      15: json['15'],
      16: json['16'],
      17: json['17'],
      18: json['18'],
      19: json['19'],
      20: json['20'],
      21: json['21'],
      22: json['22'],
      23: json['23'],
      24: json['24'],
      25: json['25'],
      26: json['26'],
      27: json['27'],
      28: json['28'],
      29: json['29'],
      30: json['30'],
    );
}

class MazeDataImage {
  String? imageName;
  String? format;
  String? downloadURL;
  num? expires;

  MazeDataImage({
    this.imageName,
    this.format,
    this.downloadURL,
    this.expires,
  });

  factory MazeDataImage.fromJson(Map<String, dynamic> json) => MazeDataImage(
      imageName: json['imageName'],
      format: json['format'],
      downloadURL: json['downloadURL'],
      expires: json['expires'],
    );
}

class MazeDataSolutionimage {
  String? imageName;
  String? format;
  String? downloadURL;
  num? expires;

  MazeDataSolutionimage({
    this.imageName,
    this.format,
    this.downloadURL,
    this.expires,
  });

  factory MazeDataSolutionimage.fromJson(Map<String, dynamic> json) => MazeDataSolutionimage(
      imageName: json['imageName'],
      format: json['format'],
      downloadURL: json['downloadURL'],
      expires: json['expires'],
    );
}

class MazeRequest {
  int? width;
  int? height;
  String? difficulty;
  bool? image;
  bool? solutionImage;

  MazeRequest({
    this.width,
    this.height,
    this.difficulty,
    this.image,
    this.solutionImage,
  });

  Map<String, dynamic> toJson() => {
      if (width != null) 'width': width,
      if (height != null) 'height': height,
      if (difficulty != null) 'difficulty': difficulty,
      if (image != null) 'image': image,
      if (solutionImage != null) 'solutionImage': solutionImage,
    };
}
