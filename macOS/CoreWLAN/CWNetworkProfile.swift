
@available(macOS 10.7, *)
class CWNetworkProfile : NSObject, NSCopying, NSMutableCopying, NSSecureCoding {
  @available(macOS 10.7, *)
  var ssid: String? { get }
  @available(macOS 10.7, *)
  var ssidData: Data? { get }
  @available(macOS 10.7, *)
  var security: CWSecurity { get }
  @available(macOS 10.7, *)
  init(networkProfile: CWNetworkProfile)
  @available(macOS 10.7, *)
  func isEqual(to networkProfile: CWNetworkProfile) -> Bool
}
@available(macOS 10.7, *)
class CWMutableNetworkProfile : CWNetworkProfile {
}
