
@available(iOS 4.2, *)
let MIDINetworkBonjourServiceType: String
@available(iOS 4.2, *)
let MIDINetworkNotificationContactsDidChange: String
@available(iOS 4.2, *)
let MIDINetworkNotificationSessionDidChange: String
enum MIDINetworkConnectionPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case noOne
  case hostsInContactList
  case anyone
}
@available(iOS 4.2, *)
class MIDINetworkHost : NSObject {
  convenience init(name: String, address: String, port: Int)
  convenience init(name: String, netService: NetService)
  convenience init(name: String, netServiceName: String, netServiceDomain: String)
  func hasSameAddress(as other: MIDINetworkHost) -> Bool
  var name: String { get }
  var address: String { get }
  var port: Int { get }
  var netServiceName: String? { get }
  var netServiceDomain: String? { get }
}
@available(iOS 4.2, *)
class MIDINetworkConnection : NSObject {
  convenience init(host: MIDINetworkHost)
  var host: MIDINetworkHost { get }
}
@available(iOS 4.2, *)
class MIDINetworkSession : NSObject {
  class func `default`() -> MIDINetworkSession
  var isEnabled: Bool
  var networkPort: Int { get }
  var networkName: String { get }
  var localName: String { get }
  var connectionPolicy: MIDINetworkConnectionPolicy
  func contacts() -> Set<MIDINetworkHost>
  func addContact(_ contact: MIDINetworkHost) -> Bool
  func removeContact(_ contact: MIDINetworkHost) -> Bool
  func connections() -> Set<MIDINetworkConnection>
  func addConnection(_ connection: MIDINetworkConnection) -> Bool
  func removeConnection(_ connection: MIDINetworkConnection) -> Bool
  func sourceEndpoint() -> MIDIEndpointRef
  func destinationEndpoint() -> MIDIEndpointRef
}
