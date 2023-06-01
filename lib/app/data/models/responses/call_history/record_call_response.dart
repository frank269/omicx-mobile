import 'dart:convert';

import 'package:collection/collection.dart';

class RecordCall {
  int? callLegId;
  List<RecordingResults?>? recordingResults;
  RecordCall({
    this.callLegId,
    this.recordingResults,
  });

  RecordCall copyWith({
    int? callLegId,
    List<RecordingResults?>? recordingResults,
  }) {
    return RecordCall(
      callLegId: callLegId ?? this.callLegId,
      recordingResults: recordingResults ?? this.recordingResults,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'callLegId': callLegId,
      'recordingResults': recordingResults?.map((x) => x).toList(),
    };
  }

  factory RecordCall.fromMap(Map<String, dynamic> map) {
    return RecordCall(
      callLegId: map['callLegId'],
      recordingResults: map['recordingResults'] == null
          ? null
          : List<RecordingResults?>.from(map['recordingResults']
              ?.map((x) => RecordingResults?.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory RecordCall.fromJson(String source) =>
      RecordCall.fromMap(json.decode(source));

  @override
  String toString() =>
      'RecordCall(callLegId: $callLegId, recordingResults: $recordingResults)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is RecordCall &&
        other.callLegId == callLegId &&
        listEquals(other.recordingResults, recordingResults);
  }

  @override
  int get hashCode => callLegId.hashCode ^ recordingResults.hashCode;
}

class RecordingResults {
  String? wavUrl;
  String? caller;
  String? called;
  int? origCause;
  int? destCause;
  String? origDeviceName;
  String? destDeviceName;
  int? origTime;
  int? connectTime;
  int? disconnectTime;
  int? duration;
  String? direction;
  String? fileStatus;
  RecordingResults({
    this.wavUrl,
    this.caller,
    this.called,
    this.origCause,
    this.destCause,
    this.origDeviceName,
    this.destDeviceName,
    this.origTime,
    this.connectTime,
    this.disconnectTime,
    this.duration,
    this.direction,
    this.fileStatus,
  });

  RecordingResults copyWith({
    String? wavUrl,
    String? caller,
    String? called,
    int? origCause,
    int? destCause,
    String? origDeviceName,
    String? destDeviceName,
    int? origTime,
    int? connectTime,
    int? disconnectTime,
    int? duration,
    String? direction,
    String? fileStatus,
  }) {
    return RecordingResults(
      wavUrl: wavUrl ?? this.wavUrl,
      caller: caller ?? this.caller,
      called: called ?? this.called,
      origCause: origCause ?? this.origCause,
      destCause: destCause ?? this.destCause,
      origDeviceName: origDeviceName ?? this.origDeviceName,
      destDeviceName: destDeviceName ?? this.destDeviceName,
      origTime: origTime ?? this.origTime,
      connectTime: connectTime ?? this.connectTime,
      disconnectTime: disconnectTime ?? this.disconnectTime,
      duration: duration ?? this.duration,
      direction: direction ?? this.direction,
      fileStatus: fileStatus ?? this.fileStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'wavUrl': wavUrl,
      'caller': caller,
      'called': called,
      'origCause': origCause,
      'destCause': destCause,
      'origDeviceName': origDeviceName,
      'destDeviceName': destDeviceName,
      'origTime': origTime,
      'connectTime': connectTime,
      'disconnectTime': disconnectTime,
      'duration': duration,
      'direction': direction,
      'fileStatus': fileStatus,
    };
  }

  factory RecordingResults.fromMap(Map<String, dynamic> map) {
    return RecordingResults(
      wavUrl: map['wavUrl'],
      caller: map['caller'],
      called: map['called'],
      origCause: map['origCause'],
      destCause: map['destCause'],
      origDeviceName: map['origDeviceName'],
      destDeviceName: map['destDeviceName'],
      origTime: map['origTime'],
      connectTime: map['connectTime'],
      disconnectTime: map['disconnectTime'],
      duration: map['duration'],
      direction: map['direction'],
      fileStatus: map['fileStatus'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RecordingResults.fromJson(String source) =>
      RecordingResults.fromMap(json.decode(source));

  @override
  String toString() {
    return 'RecordingResults(wavUrl: $wavUrl, caller: $caller, called: $called, origCause: $origCause, destCause: $destCause, origDeviceName: $origDeviceName, destDeviceName: $destDeviceName, origTime: $origTime, connectTime: $connectTime, disconnectTime: $disconnectTime, duration: $duration, direction: $direction, fileStatus: $fileStatus)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is RecordingResults &&
        other.wavUrl == wavUrl &&
        other.caller == caller &&
        other.called == called &&
        other.origCause == origCause &&
        other.destCause == destCause &&
        other.origDeviceName == origDeviceName &&
        other.destDeviceName == destDeviceName &&
        other.origTime == origTime &&
        other.connectTime == connectTime &&
        other.disconnectTime == disconnectTime &&
        other.duration == duration &&
        other.direction == direction &&
        other.fileStatus == fileStatus;
  }

  @override
  int get hashCode {
    return wavUrl.hashCode ^
        caller.hashCode ^
        called.hashCode ^
        origCause.hashCode ^
        destCause.hashCode ^
        origDeviceName.hashCode ^
        destDeviceName.hashCode ^
        origTime.hashCode ^
        connectTime.hashCode ^
        disconnectTime.hashCode ^
        duration.hashCode ^
        direction.hashCode ^
        fileStatus.hashCode;
  }
}
