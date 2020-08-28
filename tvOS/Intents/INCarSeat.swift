
@available(tvOS 10.0, *)
enum INCarSeat : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case driver
  case passenger
  case frontLeft
  case frontRight
  case front
  case rearLeft
  case rearRight
  case rear
  case thirdRowLeft
  case thirdRowRight
  case thirdRow
  case all
}
