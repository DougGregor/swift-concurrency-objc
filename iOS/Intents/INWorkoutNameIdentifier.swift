
struct INWorkoutNameIdentifier : _ObjectiveCBridgeable, Hashable, Equatable, _SwiftNewtypeWrapper, RawRepresentable {
  init(rawValue: String)
  var _rawValue: NSString
  var rawValue: String { get }
}
extension INWorkoutNameIdentifier {
  @available(iOS 10.2, *)
  static let run: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let sit: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let steps: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let stand: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let move: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let walk: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let yoga: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let dance: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let crosstraining: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let elliptical: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let rower: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let cycle: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let stairs: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let other: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let indoorrun: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let indoorcycle: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let indoorwalk: INWorkoutNameIdentifier
  @available(iOS 10.2, *)
  static let exercise: INWorkoutNameIdentifier
  @available(iOS 12.0, *)
  static let hike: INWorkoutNameIdentifier
  @available(iOS 12.0, *)
  static let highIntensityIntervalTraining: INWorkoutNameIdentifier
  @available(iOS 12.0, *)
  static let swim: INWorkoutNameIdentifier
}
