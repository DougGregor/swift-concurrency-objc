
@available(iOS 10.0, *)
enum INCarAirCirculationMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case unknown
  case freshAir
  case recirculateAir
}
