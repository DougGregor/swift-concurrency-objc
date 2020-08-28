
@available(watchOS 3.2, *)
enum INWorkoutLocationType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case outdoor
  case indoor
}
