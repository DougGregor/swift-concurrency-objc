
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
class MIDICIDiscoveredNode : NSObject {
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
