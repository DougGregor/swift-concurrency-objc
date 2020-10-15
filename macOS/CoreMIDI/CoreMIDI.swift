
@available(macOS 10.15, *)
let MIDINetworkBonjourServiceType: String
@available(macOS 10.15, *)
let MIDINetworkNotificationContactsDidChange: String
@available(macOS 10.15, *)
let MIDINetworkNotificationSessionDidChange: String
enum MIDINetworkConnectionPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case noOne
  case hostsInContactList
  case anyone
}
@available(macOS 10.15, *)
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
@available(macOS 10.15, *)
class MIDINetworkConnection : NSObject {
  convenience init(host: MIDINetworkHost)
  var host: MIDINetworkHost { get }
}
@available(macOS 10.15, *)
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
typealias MIDIChannelNumber = UInt8
let MIDIChannelsWholePort: MIDIChannelNumber
struct MIDICIDeviceIdentification {
  var manufacturer: (UInt8, UInt8, UInt8)
  var family: (UInt8, UInt8)
  var modelNumber: (UInt8, UInt8)
  var revisionLevel: (UInt8, UInt8, UInt8, UInt8)
  var reserved: (UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(manufacturer: (UInt8, UInt8, UInt8), family: (UInt8, UInt8), modelNumber: (UInt8, UInt8), revisionLevel: (UInt8, UInt8, UInt8, UInt8), reserved: (UInt8, UInt8, UInt8, UInt8, UInt8))
}
typealias MIDICIInitiatiorMUID = NSNumber
@available(macOS 11.0, *)
class MIDICIDeviceInfo : NSObject, NSSecureCoding {
  var manufacturerID: Data { get }
  var family: Data { get }
  var modelNumber: Data { get }
  var revisionLevel: Data { get }
  var midiDestination: MIDIEndpointRef { get }
  init(destination midiDestination: MIDIEntityRef, manufacturer: Data, family: Data, model modelNumber: Data, revision revisionLevel: Data)
}
@available(macOS 10.14, *)
class MIDICIProfile : NSObject, NSSecureCoding {
  var name: String { get }
  var profileID: Data { get }
  @available(macOS 11.0, *)
  init(data: Data)
  init(data: Data, name inName: String)
}
@available(macOS 10.14, *)
class MIDICIProfileState : NSObject, NSSecureCoding {
  var midiChannel: MIDIChannelNumber { get }
  var enabledProfiles: [MIDICIProfile] { get }
  var disabledProfiles: [MIDICIProfile] { get }
  @available(macOS 11.0, *)
  init(channel midiChannelNum: MIDIChannelNumber, enabledProfiles enabled: [MIDICIProfile], disabledProfiles disabled: [MIDICIProfile])
  @available(macOS, introduced: 10.14, deprecated: 100000)
  init(enabledProfiles enabled: [MIDICIProfile], disabledProfiles disabled: [MIDICIProfile])
}
@available(macOS 11.0, *)
class MIDICIDiscoveredNode : NSObject, NSSecureCoding {
  var destination: MIDIEntityRef { get }
  var deviceInfo: MIDICIDeviceInfo { get }
  var supportsProfiles: Bool { get }
  var supportsProperties: Bool { get }
  var maximumSysExSize: NSNumber { get }
}
typealias MIDICIProfileChangedBlock = (MIDICISession, MIDIChannelNumber, MIDICIProfile, Bool) -> Void
typealias MIDICISessionDisconnectBlock = (MIDICISession, Error) -> Void
typealias MIDICIProfileSpecificDataBlock = (MIDICISession, MIDIChannelNumber, MIDICIProfile, Data) -> Void
typealias MIDICIDiscoveryResponseBlock = ([MIDICIDiscoveredNode]) -> Void
@available(macOS 10.14, *)
class MIDICISession : NSObject {
  init(discoveredNode: MIDICIDiscoveredNode, dataReadyHandler handler: @escaping () -> Void, disconnectHandler: @escaping MIDICISessionDisconnectBlock)
  var midiDestination: MIDIEntityRef { get }
  var supportsProfileCapability: Bool { get }
  var supportsPropertyCapability: Bool { get }
  var deviceInfo: MIDICIDeviceInfo { get }
  var maxSysExSize: NSNumber { get }
  var maxPropertyRequests: NSNumber { get }
  func profileState(forChannel channel: MIDIChannelNumber) -> MIDICIProfileState
  func enable(_ profile: MIDICIProfile, onChannel channel: MIDIChannelNumber) throws
  func disableProfile(_ profile: MIDICIProfile, onChannel channel: MIDIChannelNumber) throws
  @available(macOS 11.0, *)
  func send(_ profile: MIDICIProfile, onChannel channel: MIDIChannelNumber, profileData profileSpecificData: Data) -> Bool
  var profileChangedCallback: MIDICIProfileChangedBlock?
  var profileSpecificDataHandler: MIDICIProfileSpecificDataBlock?
}
@available(macOS 11.0, *)
class MIDICIDiscoveryManager : NSObject {
  class func sharedInstance() -> MIDICIDiscoveryManager
  func discover(handler completedHandler: @escaping MIDICIDiscoveryResponseBlock)
}
@available(macOS 11.0, *)
protocol MIDICIProfileResponderDelegate : NSObjectProtocol {
  func connectInitiator(_ initiatorMUID: MIDICIInitiatiorMUID, with deviceInfo: MIDICIDeviceInfo) -> Bool
  func initiatorDisconnected(_ initiatorMUID: MIDICIInitiatiorMUID)
  optional func willSetProfile(_ aProfile: MIDICIProfile, onChannel channel: MIDIChannelNumber, enabled shouldEnable: Bool) -> Bool
  optional func handleData(for aProfile: MIDICIProfile, onChannel channel: MIDIChannelNumber, data inData: Data)
}
@available(macOS 11.0, *)
class MIDICIResponder : NSObject {
  var initiators: [MIDICIInitiatiorMUID] { get }
  var profileDelegate: MIDICIProfileResponderDelegate { get }
  var deviceInfo: MIDICIDeviceInfo { get }
  init(deviceInfo: MIDICIDeviceInfo, profileDelegate delegate: MIDICIProfileResponderDelegate, profileStates profileList: [MIDICIProfileState], supportProperties propertiesSupported: Bool)
  func notify(_ aProfile: MIDICIProfile, onChannel channel: MIDIChannelNumber, isEnabled enabledState: Bool) -> Bool
  func send(_ aProfile: MIDICIProfile, onChannel channel: MIDIChannelNumber, profileData profileSpecificData: Data) -> Bool
  func start() -> Bool
  func stop()
}
@available(macOS 11.0, iOS 14.0, *)
struct UnsafeMutableMIDIEventListPointer : Sequence {
  var listSizeInBytes: Int { get }
  var lastPacket: UnsafeMutablePointer<MIDIEventPacket>? { get }
  var midiProtocol: MIDIProtocolID { get }
  init(_ p: UnsafeMutablePointer<MIDIEventList>, wordSize: Int, inProtocol: MIDIProtocolID)
  init?(_ p: UnsafeMutablePointer<MIDIEventList>?, wordSize: Int)
  var count: Int { get }
  mutating func clear()
  @discardableResult
  mutating func append(timestamp: MIDITimeStamp, words: [UInt32]) -> UnsafePointer<MIDIEventPacket>?
}

@available(macOS 11.0, iOS 14.0, *)
struct UnsafeMutableMIDIEventPacketPointer {
  init(_ p: UnsafeMutablePointer<MIDIEventPacket>)
  init?(_ p: UnsafeMutablePointer<MIDIEventPacket>?)
  var timeStamp: Int { get nonmutating set }
}

@available(macOS 11.0, iOS 14.0, *)
extension UnsafeMutableMIDIEventPacketPointer : MutableCollection, RandomAccessCollection {
}

@available(macOS 11.0, iOS 14.0, *)
extension UnsafeMutableMIDIEventPacketPointer : Sequence {
}

@available(macOS 10.15, iOS 13.0, *)
struct UnsafeMutableMIDIPacketListPointer : Sequence {
  var listSizeInBytes: Int { get }
  var lastPacket: UnsafeMutablePointer<MIDIPacket>? { get }
  init(_ p: UnsafeMutablePointer<MIDIPacketList>, byteSize: Int)
  init?(_ p: UnsafeMutablePointer<MIDIPacketList>?, byteSize: Int)
  var count: Int { get }
  mutating func clear()
  @discardableResult
  mutating func append(timestamp: MIDITimeStamp, data: [UInt8]) -> UnsafePointer<MIDIPacket>?
}

@available(macOS 10.15, iOS 13.0, *)
struct UnsafeMutableMIDIPacketPointer {
  init(_ p: UnsafeMutablePointer<MIDIPacket>)
  init?(_ p: UnsafeMutablePointer<MIDIPacket>?)
  var timeStamp: Int { get nonmutating set }
}

@available(macOS 10.15, iOS 13.0, *)
extension UnsafeMutableMIDIPacketPointer : MutableCollection, RandomAccessCollection {
}

@available(macOS 10.15, iOS 13.0, *)
extension UnsafeMutableMIDIPacketPointer : Sequence {
}

extension MIDIEventPacket {
  @available(macOS 11.0, iOS 14.0, *)
  struct WordSequence : Sequence {
    var count: Int { get }
  }
  @available(macOS 11.0, iOS 14.0, *)
  struct WordCollection : RandomAccessCollection {
    init(_ p: UnsafePointer<MIDIEventPacket>)
    init?(_ p: UnsafePointer<MIDIEventPacket>?)
  }
}

extension UnsafePointer where Pointee == MIDIEventPacket {
  @available(macOS 11.0, iOS 14.0, *)
  func sequence() -> MIDIEventPacket.WordSequence
  @available(macOS 11.0, iOS 14.0, *)
  func words() -> MIDIEventPacket.WordCollection
}

extension MIDIEventPacket {
  @available(macOS 11.0, iOS 14.0, *)
  class Builder {
    var capacity: Int { get }
    init(maximumNumberMIDIWords: Int)
    var count: Int { get }
    var timeStamp: Int
    func append(_ midiWords: UInt32...)
    func withUnsafePointer<Result>(_ body: (UnsafePointer<MIDIEventPacket>) -> Result) -> Result
    func withUnsafeMutableMIDIEventPacketPointer<Result>(_ body: (inout UnsafeMutableMIDIEventPacketPointer) -> Result) -> Result
  }
}

extension UnsafePointer where Pointee == MIDIEventList {
  @available(macOS 11.0, iOS 14.0, *)
  func unsafeSequence() -> MIDIEventList.UnsafeSequence
}

extension MIDIEventList {
  @available(macOS 11.0, iOS 14.0, *)
  static func sizeInBytes(pktList: UnsafePointer<MIDIEventList>) -> Int
  @available(macOS 11.0, iOS 14.0, *)
  struct UnsafeSequence : Sequence {
    var count: Int { get }
  }
}

extension MIDIEventList {
  @available(macOS 11.0, iOS 14.0, *)
  class Builder {
    init(inProtocol: MIDIProtocolID, wordSize: Int)
    @discardableResult
    func append(timestamp: MIDITimeStamp, words: [UInt32]) -> UnsafePointer<MIDIEventPacket>?
    func clear()
    var count: Int { get }
    func withUnsafePointer<Result>(_ body: (UnsafePointer<MIDIEventList>) -> Result) -> Result
    func withUnsafeMutableMIDIEventListPointer<Result>(_ body: (inout UnsafeMutableMIDIEventListPointer) -> Result) -> Result
  }
}

extension MIDIPacket {
  @available(macOS 10.15, iOS 13.0, *)
  struct ByteSequence : Sequence {
    var count: Int { get }
  }
  @available(macOS 10.15, iOS 13.0, *)
  struct ByteCollection : RandomAccessCollection {
    init(_ p: UnsafePointer<MIDIPacket>)
    init?(_ p: UnsafePointer<MIDIPacket>?)
  }
}

extension UnsafePointer where Pointee == MIDIPacket {
  @available(macOS 10.15, iOS 13.0, *)
  func sequence() -> MIDIPacket.ByteSequence
  @available(macOS 10.15, iOS 13.0, *)
  func bytes() -> MIDIPacket.ByteCollection
}

extension MIDIPacket {
  @available(macOS 10.15, iOS 13.0, *)
  class Builder {
    var capacity: Int { get }
    init(maximumNumberMIDIBytes: Int)
    var count: Int { get }
    var timeStamp: Int
    func append(_ midiBytes: UInt8...)
    func withUnsafePointer<Result>(_ body: (UnsafePointer<MIDIPacket>) -> Result) -> Result
    func withUnsafeMutableMIDIPacketPointer<Result>(_ body: (inout UnsafeMutableMIDIPacketPointer) -> Result) -> Result
  }
}

extension UnsafePointer where Pointee == MIDIPacketList {
  @available(macOS 10.15, iOS 13.0, *)
  func unsafeSequence() -> MIDIPacketList.UnsafeSequence
}

extension MIDIPacketList {
  @available(macOS 10.15, iOS 13.0, *)
  static func sizeInBytes(pktList: UnsafePointer<MIDIPacketList>) -> Int
  @available(macOS 10.15, iOS 13.0, *)
  struct UnsafeSequence : Sequence {
    var count: Int { get }
  }
}

extension MIDIPacketList {
  @available(macOS 10.15, iOS 13.0, *)
  class Builder {
    init(byteSize: Int)
    @discardableResult
    func append(timestamp: MIDITimeStamp, data: [UInt8]) -> UnsafePointer<MIDIPacket>?
    func clear()
    var count: Int { get }
    func withUnsafePointer<Result>(_ body: (UnsafePointer<MIDIPacketList>) -> Result) -> Result
    func withUnsafeMutableMIDIPacketListPointer<Result>(_ body: (inout UnsafeMutableMIDIPacketListPointer) -> Result) -> Result
  }
}

