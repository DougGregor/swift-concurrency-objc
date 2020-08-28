
struct INWorkoutNameIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension INWorkoutNameIdentifier {
  @available(tvOS 10.2, *)
  static let run: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let sit: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let steps: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let stand: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let move: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let walk: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let yoga: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let dance: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let crosstraining: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let elliptical: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let rower: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let cycle: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let stairs: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let other: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let indoorrun: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let indoorcycle: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let indoorwalk: INWorkoutNameIdentifier
  @available(tvOS 10.2, *)
  static let exercise: INWorkoutNameIdentifier
  @available(tvOS 12.0, *)
  static let hike: INWorkoutNameIdentifier
  @available(tvOS 12.0, *)
  static let highIntensityIntervalTraining: INWorkoutNameIdentifier
  @available(tvOS 12.0, *)
  static let swim: INWorkoutNameIdentifier
}
