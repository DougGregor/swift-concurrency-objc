
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
@available(macOS 10.11, *)
func SFSafariServicesAvailable(_ version: SFSafariServicesVersion = SFSafariServicesVersion.version10_0) -> Bool

