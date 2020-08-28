
struct INWorkoutNameIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension INWorkoutNameIdentifier {
  @available(watchOS 3.2, *)
  static let run: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let sit: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let steps: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let stand: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let move: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let walk: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let yoga: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let dance: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let crosstraining: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let elliptical: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let rower: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let cycle: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let stairs: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let other: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let indoorrun: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let indoorcycle: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let indoorwalk: INWorkoutNameIdentifier
  @available(watchOS 3.2, *)
  static let exercise: INWorkoutNameIdentifier
  @available(watchOS 5.0, *)
  static let hike: INWorkoutNameIdentifier
  @available(watchOS 5.0, *)
  static let highIntensityIntervalTraining: INWorkoutNameIdentifier
  @available(watchOS 5.0, *)
  static let swim: INWorkoutNameIdentifier
}
