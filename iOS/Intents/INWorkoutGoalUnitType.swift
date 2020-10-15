
@available(iOS 10.0, *)
enum INWorkoutGoalUnitType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case inch
  case meter
  case foot
  case mile
  case yard
  case second
  case minute
  case hour
  case joule
  case kiloCalorie
}
