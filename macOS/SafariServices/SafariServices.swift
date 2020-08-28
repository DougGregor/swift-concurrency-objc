
enum SFSafariServicesVersion : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case version10_0
  case version10_1
  case version11_0
  case version12_0
  case version12_1
  case version13_0
}
