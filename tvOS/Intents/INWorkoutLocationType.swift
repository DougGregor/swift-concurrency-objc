
@available(tvOS 10.0, *)
enum INWorkoutLocationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case outdoor
  case indoor
}
