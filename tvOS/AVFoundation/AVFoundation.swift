
@available(watchOS 6.0, *)
extension AVError {
  @available(watchOS 6.0, *)
  var time: CMTime? { get }
  @available(watchOS 6.0, *)
  var fileSize: Int64? { get }
  @available(watchOS 6.0, *)
  var processID: Int? { get }
  @available(watchOS 6.0, *)
  var recordingSuccessfullyFinished: Bool? { get }
  @available(swift 4.2)
  @available(watchOS 6.0, *)
  var mediaType: AVMediaType? { get }
  @available(watchOS 6.0, *)
  var mediaSubtypes: [Int]? { get }
  @available(swift 4.2)
  @available(macOS 10.10, iOS 8.0, tvOS 9.0, watchOS 6.0, *)
  var presentationTimeStamp: CMTime? { get }
  @available(swift 4.2)
  @available(macOS 10.10, iOS 8.0, tvOS 9.0, watchOS 6.0, *)
  var persistentTrackID: CMPersistentTrackID? { get }
  @available(swift 4.2)
  @available(macOS 10.10, iOS 8.0, tvOS 9.0, watchOS 6.0, *)
  var fileType: AVFileType? { get }
}

@available(iOS 7.0, watchOS 2.0, tvOS 9.0, *)
@available(macOS, unavailable)
extension AVAudioSession.Location {
  @available(macOS, unavailable)
  @available(iOS, deprecated, introduced: 7.0, renamed: "AVAudioSession.Orientation.top")
  @available(watchOS, deprecated, introduced: 2.0, renamed: "AVAudioSession.Orientation.top")
  @available(tvOS, deprecated, introduced: 9.0, renamed: "AVAudioSession.Orientation.top")
  @_alwaysEmitIntoClient static var orientationTop: AVAudioSession.Location { get }
  @available(macOS, unavailable)
  @available(iOS, deprecated, introduced: 7.0, renamed: "AVAudioSession.Orientation.bottom")
  @available(watchOS, deprecated, introduced: 2.0, renamed: "AVAudioSession.Orientation.bottom")
  @available(tvOS, deprecated, introduced: 9.0, renamed: "AVAudioSession.Orientation.bottom")
  @_alwaysEmitIntoClient static var orientationBottom: AVAudioSession.Location { get }
  @available(macOS, unavailable)
  @available(iOS, deprecated, introduced: 7.0, renamed: "AVAudioSession.Orientation.front")
  @available(watchOS, deprecated, introduced: 2.0, renamed: "AVAudioSession.Orientation.front")
  @available(tvOS, deprecated, introduced: 9.0, renamed: "AVAudioSession.Orientation.front")
  @_alwaysEmitIntoClient static var orientationFront: AVAudioSession.Location { get }
  @available(macOS, unavailable)
  @available(iOS, deprecated, introduced: 7.0, renamed: "AVAudioSession.Orientation.back")
  @available(watchOS, deprecated, introduced: 2.0, renamed: "AVAudioSession.Orientation.back")
  @available(tvOS, deprecated, introduced: 9.0, renamed: "AVAudioSession.Orientation.back")
  @_alwaysEmitIntoClient static var orientationBack: AVAudioSession.Location { get }
  @available(macOS, unavailable)
  @available(iOS, deprecated, introduced: 7.0, renamed: "AVAudioSession.Orientation.left")
  @available(watchOS, deprecated, introduced: 2.0, renamed: "AVAudioSession.Orientation.left")
  @available(tvOS, deprecated, introduced: 9.0, renamed: "AVAudioSession.Orientation.left")
  @_alwaysEmitIntoClient static var orientationLeft: AVAudioSession.Location { get }
  @available(macOS, unavailable)
  @available(iOS, deprecated, introduced: 7.0, renamed: "AVAudioSession.Orientation.right")
  @available(watchOS, deprecated, introduced: 2.0, renamed: "AVAudioSession.Orientation.right")
  @available(tvOS, deprecated, introduced: 9.0, renamed: "AVAudioSession.Orientation.right")
  @_alwaysEmitIntoClient static var orientationRight: AVAudioSession.Location { get }
}

@available(iOS 7.0, watchOS 2.0, tvOS 9.0, *)
@available(macOS, unavailable)
extension AVAudioSession.Location {
  @available(macOS, unavailable)
  @available(iOS, deprecated, introduced: 7.0, renamed: "AVAudioSession.PolarPattern.cardioid")
  @available(watchOS, deprecated, introduced: 2.0, renamed: "AVAudioSession.PolarPattern.cardioid")
  @available(tvOS, deprecated, introduced: 9.0, renamed: "AVAudioSession.PolarPattern.cardioid")
  @_alwaysEmitIntoClient static var polarPatternCardioid: AVAudioSession.Location { get }
  @available(macOS, unavailable)
  @available(iOS, deprecated, introduced: 7.0, renamed: "AVAudioSession.PolarPattern.omnidirectional")
  @available(watchOS, deprecated, introduced: 2.0, renamed: "AVAudioSession.PolarPattern.omnidirectional")
  @available(tvOS, deprecated, introduced: 9.0, renamed: "AVAudioSession.PolarPattern.omnidirectional")
  @_alwaysEmitIntoClient static var polarPatternOmnidirectional: AVAudioSession.Location { get }
  @available(macOS, unavailable)
  @available(iOS, deprecated, introduced: 7.0, renamed: "AVAudioSession.PolarPattern.subcardioid")
  @available(watchOS, deprecated, introduced: 2.0, renamed: "AVAudioSession.PolarPattern.subcardioid")
  @available(tvOS, deprecated, introduced: 9.0, renamed: "AVAudioSession.PolarPattern.subcardioid")
  @_alwaysEmitIntoClient static var polarPatternSubcardioid: AVAudioSession.Location { get }
}

@available(watchOS 6.0, *)
extension CMTime : _ObjectiveCBridgeable {
}

@available(watchOS 6.0, *)
extension CMTimeRange : _ObjectiveCBridgeable {
}

@available(watchOS 6.0, *)
extension CMTimeMapping : _ObjectiveCBridgeable {
}

