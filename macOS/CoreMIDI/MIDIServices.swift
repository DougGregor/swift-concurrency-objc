
var kMIDIInvalidClient: OSStatus { get }
var kMIDIInvalidPort: OSStatus { get }
var kMIDIWrongEndpointType: OSStatus { get }
var kMIDINoConnection: OSStatus { get }
var kMIDIUnknownEndpoint: OSStatus { get }
var kMIDIUnknownProperty: OSStatus { get }
var kMIDIWrongPropertyType: OSStatus { get }
var kMIDINoCurrentSetup: OSStatus { get }
var kMIDIMessageSendErr: OSStatus { get }
var kMIDIServerStartErr: OSStatus { get }
var kMIDISetupFormatErr: OSStatus { get }
var kMIDIWrongThread: OSStatus { get }
var kMIDIObjectNotFound: OSStatus { get }
var kMIDIIDNotUnique: OSStatus { get }
var kMIDINotPermitted: OSStatus { get }
var kMIDIUnknownError: OSStatus { get }
typealias MIDIObjectRef = UInt32
typealias MIDIClientRef = MIDIObjectRef
typealias MIDIPortRef = MIDIObjectRef
typealias MIDIDeviceRef = MIDIObjectRef
typealias MIDIEntityRef = MIDIObjectRef
typealias MIDIEndpointRef = MIDIObjectRef
typealias MIDITimeStamp = UInt64
enum MIDIObjectType : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case other
  case device
  case entity
  case source
  case destination
  case externalDevice
  case externalEntity
  case externalSource
  case externalDestination
}
let kMIDIObjectType_ExternalMask: MIDIObjectType
typealias MIDIUniqueID = Int32
var kMIDIInvalidUniqueID: MIDIUniqueID { get }
enum MIDIProtocolID : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case _1_0
  case _2_0
}
typealias MIDINotifyProc = @convention(c) (UnsafePointer<MIDINotification>, UnsafeMutableRawPointer?) -> Void
typealias MIDINotifyBlock = (UnsafePointer<MIDINotification>) -> Void
typealias MIDIReceiveBlock = (UnsafePointer<MIDIEventList>, UnsafeMutableRawPointer?) -> Void
typealias MIDIReadProc = @convention(c) (UnsafePointer<MIDIPacketList>, UnsafeMutableRawPointer?, UnsafeMutableRawPointer?) -> Void
typealias MIDIReadBlock = (UnsafePointer<MIDIPacketList>, UnsafeMutableRawPointer?) -> Void
typealias MIDICompletionProc = @convention(c) (UnsafeMutablePointer<MIDISysexSendRequest>) -> Void
struct MIDIEventPacket {
  var timeStamp: MIDITimeStamp
  var wordCount: UInt32
  var words: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32)
  init()
  init(timeStamp: MIDITimeStamp, wordCount: UInt32, words: (UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32, UInt32))
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
struct MIDIEventList {
  var `protocol`: MIDIProtocolID
  var numPackets: UInt32
  var packet: (MIDIEventPacket)
  init()
  init(protocol: MIDIProtocolID, numPackets: UInt32, packet: (MIDIEventPacket))
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
struct MIDIPacket {
  var timeStamp: MIDITimeStamp
  var length: UInt16
  var data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
  init()
  init(timeStamp: MIDITimeStamp, length: UInt16, data: (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8))
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
struct MIDIPacketList {
  var numPackets: UInt32
  var packet: (MIDIPacket)
  init()
  init(numPackets: UInt32, packet: (MIDIPacket))
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
struct MIDISysexSendRequest {
  var destination: MIDIEndpointRef
  var data: UnsafePointer<UInt8>
  var bytesToSend: UInt32
  var complete: DarwinBoolean
  var reserved: (UInt8, UInt8, UInt8)
  var completionProc: MIDICompletionProc
  var completionRefCon: UnsafeMutableRawPointer?
  init(destination: MIDIEndpointRef, data: UnsafePointer<UInt8>, bytesToSend: UInt32, complete: DarwinBoolean, reserved: (UInt8, UInt8, UInt8), completionProc: MIDICompletionProc, completionRefCon: UnsafeMutableRawPointer?)
}
enum MIDINotificationMessageID : Int32 {
  init?(rawValue: Int32)
  var rawValue: Int32 { get }
  case msgSetupChanged
  case msgObjectAdded
  case msgObjectRemoved
  case msgPropertyChanged
  case msgThruConnectionsChanged
  case msgSerialPortOwnerChanged
  case msgIOError
}
struct MIDINotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32)
}
struct MIDIObjectAddRemoveNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var parent: MIDIObjectRef
  var parentType: MIDIObjectType
  var child: MIDIObjectRef
  var childType: MIDIObjectType
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32, parent: MIDIObjectRef, parentType: MIDIObjectType, child: MIDIObjectRef, childType: MIDIObjectType)
}
struct MIDIObjectPropertyChangeNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var object: MIDIObjectRef
  var objectType: MIDIObjectType
  var propertyName: Unmanaged<CFString>
  init(messageID: MIDINotificationMessageID, messageSize: UInt32, object: MIDIObjectRef, objectType: MIDIObjectType, propertyName: Unmanaged<CFString>)
}
struct MIDIIOErrorNotification {
  var messageID: MIDINotificationMessageID
  var messageSize: UInt32
  var driverDevice: MIDIDeviceRef
  var errorCode: OSStatus
  init()
  init(messageID: MIDINotificationMessageID, messageSize: UInt32, driverDevice: MIDIDeviceRef, errorCode: OSStatus)
}
@available(macOS 10.0, *)
let kMIDIPropertyName: CFString
@available(macOS 10.0, *)
let kMIDIPropertyManufacturer: CFString
@available(macOS 10.0, *)
let kMIDIPropertyModel: CFString
@available(macOS 10.0, *)
let kMIDIPropertyUniqueID: CFString
@available(macOS 10.0, *)
let kMIDIPropertyDeviceID: CFString
@available(macOS 10.0, *)
let kMIDIPropertyReceiveChannels: CFString
@available(macOS 10.2, *)
let kMIDIPropertyTransmitChannels: CFString
@available(macOS 10.0, *)
let kMIDIPropertyMaxSysExSpeed: CFString
@available(macOS 10.0, *)
let kMIDIPropertyAdvanceScheduleTimeMuSec: CFString
@available(macOS 10.1, *)
let kMIDIPropertyIsEmbeddedEntity: CFString
@available(macOS 10.2, *)
let kMIDIPropertyIsBroadcast: CFString
@available(macOS 10.2, *)
let kMIDIPropertySingleRealtimeEntity: CFString
@available(macOS 10.1, *)
let kMIDIPropertyConnectionUniqueID: CFString
@available(macOS 10.1, *)
let kMIDIPropertyOffline: CFString
@available(macOS 10.2, *)
let kMIDIPropertyPrivate: CFString
@available(macOS 10.1, *)
let kMIDIPropertyDriverOwner: CFString
@available(macOS, introduced: 10.2, deprecated: 10.15, renamed: "kMIDIPropertyNameConfigurationDictionary")
let kMIDIPropertyNameConfiguration: CFString
@available(macOS 10.15, *)
let kMIDIPropertyNameConfigurationDictionary: CFString
@available(macOS 10.2, *)
let kMIDIPropertyImage: CFString
@available(macOS 10.2, *)
let kMIDIPropertyDriverVersion: CFString
@available(macOS 10.2, *)
let kMIDIPropertySupportsGeneralMIDI: CFString
@available(macOS 10.2, *)
let kMIDIPropertySupportsMMC: CFString
@available(macOS 10.0, *)
let kMIDIPropertyCanRoute: CFString
@available(macOS 10.2, *)
let kMIDIPropertyReceivesClock: CFString
@available(macOS 10.2, *)
let kMIDIPropertyReceivesMTC: CFString
@available(macOS 10.2, *)
let kMIDIPropertyReceivesNotes: CFString
@available(macOS 10.2, *)
let kMIDIPropertyReceivesProgramChanges: CFString
@available(macOS 10.2, *)
let kMIDIPropertyReceivesBankSelectMSB: CFString
@available(macOS 10.2, *)
let kMIDIPropertyReceivesBankSelectLSB: CFString
@available(macOS 10.2, *)
let kMIDIPropertyTransmitsClock: CFString
@available(macOS 10.2, *)
let kMIDIPropertyTransmitsMTC: CFString
@available(macOS 10.2, *)
let kMIDIPropertyTransmitsNotes: CFString
@available(macOS 10.2, *)
let kMIDIPropertyTransmitsProgramChanges: CFString
@available(macOS 10.2, *)
let kMIDIPropertyTransmitsBankSelectMSB: CFString
@available(macOS 10.2, *)
let kMIDIPropertyTransmitsBankSelectLSB: CFString
@available(macOS 10.2, *)
let kMIDIPropertyPanDisruptsStereo: CFString
@available(macOS 10.2, *)
let kMIDIPropertyIsSampler: CFString
@available(macOS 10.2, *)
let kMIDIPropertyIsDrumMachine: CFString
@available(macOS 10.2, *)
let kMIDIPropertyIsMixer: CFString
@available(macOS 10.2, *)
let kMIDIPropertyIsEffectUnit: CFString
@available(macOS 10.2, *)
let kMIDIPropertyMaxReceiveChannels: CFString
@available(macOS 10.2, *)
let kMIDIPropertyMaxTransmitChannels: CFString
@available(macOS 10.3, *)
let kMIDIPropertyDriverDeviceEditorApp: CFString
@available(macOS 10.4, *)
let kMIDIPropertySupportsShowControl: CFString
@available(macOS 10.4, *)
let kMIDIPropertyDisplayName: CFString
@available(macOS 11.0, *)
let kMIDIPropertyProtocolID: CFString
@available(macOS 10.0, *)
func MIDIClientCreate(_ name: CFString, _ notifyProc: MIDINotifyProc?, _ notifyRefCon: UnsafeMutableRawPointer?, _ outClient: UnsafeMutablePointer<MIDIClientRef>) -> OSStatus
@available(macOS 10.11, *)
func MIDIClientCreateWithBlock(_ name: CFString, _ outClient: UnsafeMutablePointer<MIDIClientRef>, _ notifyBlock: MIDINotifyBlock?) -> OSStatus
@available(macOS 10.0, *)
func MIDIClientDispose(_ client: MIDIClientRef) -> OSStatus
@available(macOS 11.0, *)
func MIDIInputPortCreateWithProtocol(_ client: MIDIClientRef, _ portName: CFString, _ protocol: MIDIProtocolID, _ outPort: UnsafeMutablePointer<MIDIPortRef>, _ receiveBlock: @escaping MIDIReceiveBlock) -> OSStatus
@available(macOS, introduced: 10.0, deprecated: 100000, renamed: "MIDIInputPortCreateWithProtocol(_:_:_:_:_:)")
func MIDIInputPortCreate(_ client: MIDIClientRef, _ portName: CFString, _ readProc: MIDIReadProc, _ refCon: UnsafeMutableRawPointer?, _ outPort: UnsafeMutablePointer<MIDIPortRef>) -> OSStatus
@available(macOS, introduced: 10.11, deprecated: 100000, renamed: "MIDIInputPortCreateWithProtocol(_:_:_:_:_:)")
func MIDIInputPortCreateWithBlock(_ client: MIDIClientRef, _ portName: CFString, _ outPort: UnsafeMutablePointer<MIDIPortRef>, _ readBlock: @escaping MIDIReadBlock) -> OSStatus
@available(macOS 10.0, *)
func MIDIOutputPortCreate(_ client: MIDIClientRef, _ portName: CFString, _ outPort: UnsafeMutablePointer<MIDIPortRef>) -> OSStatus
@available(macOS 10.0, *)
func MIDIPortDispose(_ port: MIDIPortRef) -> OSStatus
@available(macOS 10.0, *)
func MIDIPortConnectSource(_ port: MIDIPortRef, _ source: MIDIEndpointRef, _ connRefCon: UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.0, *)
func MIDIPortDisconnectSource(_ port: MIDIPortRef, _ source: MIDIEndpointRef) -> OSStatus
@available(macOS 10.0, *)
func MIDIGetNumberOfDevices() -> Int
@available(macOS 10.0, *)
func MIDIGetDevice(_ deviceIndex0: Int) -> MIDIDeviceRef
@available(macOS 10.0, *)
func MIDIDeviceGetNumberOfEntities(_ device: MIDIDeviceRef) -> Int
@available(macOS 10.0, *)
func MIDIDeviceGetEntity(_ device: MIDIDeviceRef, _ entityIndex0: Int) -> MIDIEntityRef
@available(macOS 10.0, *)
func MIDIEntityGetNumberOfSources(_ entity: MIDIEntityRef) -> Int
@available(macOS 10.0, *)
func MIDIEntityGetSource(_ entity: MIDIEntityRef, _ sourceIndex0: Int) -> MIDIEndpointRef
@available(macOS 10.0, *)
func MIDIEntityGetNumberOfDestinations(_ entity: MIDIEntityRef) -> Int
@available(macOS 10.0, *)
func MIDIEntityGetDestination(_ entity: MIDIEntityRef, _ destIndex0: Int) -> MIDIEndpointRef
@available(macOS 10.2, *)
func MIDIEntityGetDevice(_ inEntity: MIDIEntityRef, _ outDevice: UnsafeMutablePointer<MIDIDeviceRef>?) -> OSStatus
@available(macOS 10.0, *)
func MIDIGetNumberOfSources() -> Int
@available(macOS 10.0, *)
func MIDIGetSource(_ sourceIndex0: Int) -> MIDIEndpointRef
@available(macOS 10.0, *)
func MIDIGetNumberOfDestinations() -> Int
@available(macOS 10.0, *)
func MIDIGetDestination(_ destIndex0: Int) -> MIDIEndpointRef
@available(macOS 10.2, *)
func MIDIEndpointGetEntity(_ inEndpoint: MIDIEndpointRef, _ outEntity: UnsafeMutablePointer<MIDIEntityRef>?) -> OSStatus
@available(macOS 11.0, *)
func MIDIDestinationCreateWithProtocol(_ client: MIDIClientRef, _ name: CFString, _ protocol: MIDIProtocolID, _ outDest: UnsafeMutablePointer<MIDIEndpointRef>, _ readBlock: @escaping MIDIReceiveBlock) -> OSStatus
@available(macOS, introduced: 10.0, deprecated: 100000, renamed: "MIDIDestinationCreateWithProtocol(_:_:_:_:_:)")
func MIDIDestinationCreate(_ client: MIDIClientRef, _ name: CFString, _ readProc: MIDIReadProc, _ refCon: UnsafeMutableRawPointer?, _ outDest: UnsafeMutablePointer<MIDIEndpointRef>) -> OSStatus
@available(macOS, introduced: 10.11, deprecated: 100000, renamed: "MIDIDestinationCreateWithProtocol(_:_:_:_:_:)")
func MIDIDestinationCreateWithBlock(_ client: MIDIClientRef, _ name: CFString, _ outDest: UnsafeMutablePointer<MIDIEndpointRef>, _ readBlock: @escaping MIDIReadBlock) -> OSStatus
@available(macOS 11.0, *)
func MIDISourceCreateWithProtocol(_ client: MIDIClientRef, _ name: CFString, _ protocol: MIDIProtocolID, _ outSrc: UnsafeMutablePointer<MIDIEndpointRef>) -> OSStatus
@available(macOS, introduced: 10.0, deprecated: 100000, renamed: "MIDISourceCreateWithProtocol(_:_:_:_:)")
func MIDISourceCreate(_ client: MIDIClientRef, _ name: CFString, _ outSrc: UnsafeMutablePointer<MIDIEndpointRef>) -> OSStatus
@available(macOS 10.0, *)
func MIDIEndpointDispose(_ endpt: MIDIEndpointRef) -> OSStatus
@available(macOS 10.1, *)
func MIDIGetNumberOfExternalDevices() -> Int
@available(macOS 10.1, *)
func MIDIGetExternalDevice(_ deviceIndex0: Int) -> MIDIDeviceRef
@available(macOS 10.0, *)
func MIDIObjectGetIntegerProperty(_ obj: MIDIObjectRef, _ propertyID: CFString, _ outValue: UnsafeMutablePointer<Int32>) -> OSStatus
@available(macOS 10.0, *)
func MIDIObjectSetIntegerProperty(_ obj: MIDIObjectRef, _ propertyID: CFString, _ value: Int32) -> OSStatus
@available(macOS 10.0, *)
func MIDIObjectGetStringProperty(_ obj: MIDIObjectRef, _ propertyID: CFString, _ str: UnsafeMutablePointer<Unmanaged<CFString>?>) -> OSStatus
@available(macOS 10.0, *)
func MIDIObjectSetStringProperty(_ obj: MIDIObjectRef, _ propertyID: CFString, _ str: CFString) -> OSStatus
@available(macOS 10.0, *)
func MIDIObjectGetDataProperty(_ obj: MIDIObjectRef, _ propertyID: CFString, _ outData: UnsafeMutablePointer<Unmanaged<CFData>?>) -> OSStatus
@available(macOS 10.0, *)
func MIDIObjectSetDataProperty(_ obj: MIDIObjectRef, _ propertyID: CFString, _ data: CFData) -> OSStatus
@available(macOS 10.2, *)
func MIDIObjectGetDictionaryProperty(_ obj: MIDIObjectRef, _ propertyID: CFString, _ outDict: UnsafeMutablePointer<Unmanaged<CFDictionary>?>) -> OSStatus
@available(macOS 10.2, *)
func MIDIObjectSetDictionaryProperty(_ obj: MIDIObjectRef, _ propertyID: CFString, _ dict: CFDictionary) -> OSStatus
@available(macOS 10.1, *)
func MIDIObjectGetProperties(_ obj: MIDIObjectRef, _ outProperties: UnsafeMutablePointer<Unmanaged<CFPropertyList>?>, _ deep: Bool) -> OSStatus
@available(macOS 10.2, *)
func MIDIObjectRemoveProperty(_ obj: MIDIObjectRef, _ propertyID: CFString) -> OSStatus
@available(macOS 10.2, *)
func MIDIObjectFindByUniqueID(_ inUniqueID: MIDIUniqueID, _ outObject: UnsafeMutablePointer<MIDIObjectRef>?, _ outObjectType: UnsafeMutablePointer<MIDIObjectType>?) -> OSStatus
@available(macOS 11.0, *)
func MIDISendEventList(_ port: MIDIPortRef, _ dest: MIDIEndpointRef, _ evtlist: UnsafePointer<MIDIEventList>) -> OSStatus
@available(macOS, introduced: 10.0, deprecated: 100000, renamed: "MIDISendEventList(_:_:_:)")
func MIDISend(_ port: MIDIPortRef, _ dest: MIDIEndpointRef, _ pktlist: UnsafePointer<MIDIPacketList>) -> OSStatus
@available(macOS 10.0, *)
func MIDISendSysex(_ request: UnsafeMutablePointer<MIDISysexSendRequest>) -> OSStatus
@available(macOS 11.0, *)
func MIDIReceivedEventList(_ src: MIDIEndpointRef, _ evtlist: UnsafePointer<MIDIEventList>) -> OSStatus
@available(macOS, introduced: 10.0, deprecated: 100000, renamed: "MIDIReceivedEventList(_:_:)")
func MIDIReceived(_ src: MIDIEndpointRef, _ pktlist: UnsafePointer<MIDIPacketList>) -> OSStatus
@available(macOS 10.1, *)
func MIDIFlushOutput(_ dest: MIDIEndpointRef) -> OSStatus
@available(macOS 10.1, *)
func MIDIRestart() -> OSStatus
func MIDIEventPacketNext(_ pkt: UnsafePointer<MIDIEventPacket>) -> UnsafeMutablePointer<MIDIEventPacket>
@available(macOS 11.0, *)
func MIDIEventListInit(_ evtlist: UnsafeMutablePointer<MIDIEventList>, _ protocol: MIDIProtocolID) -> UnsafeMutablePointer<MIDIEventPacket>
@available(macOS 11.0, *)
func MIDIEventListAdd(_ evtlist: UnsafeMutablePointer<MIDIEventList>, _ listSize: Int, _ curPacket: UnsafeMutablePointer<MIDIEventPacket>, _ time: MIDITimeStamp, _ wordCount: Int, _ words: UnsafePointer<UInt32>) -> UnsafeMutablePointer<MIDIEventPacket>
func MIDIPacketNext(_ pkt: UnsafePointer<MIDIPacket>) -> UnsafeMutablePointer<MIDIPacket>
@available(macOS, introduced: 10.0, deprecated: 100000, renamed: "MIDIEventListInit(_:_:)")
func MIDIPacketListInit(_ pktlist: UnsafeMutablePointer<MIDIPacketList>) -> UnsafeMutablePointer<MIDIPacket>
@available(macOS, introduced: 10.0, deprecated: 100000, renamed: "MIDIEventListAdd(_:_:_:_:_:_:)")
func MIDIPacketListAdd(_ pktlist: UnsafeMutablePointer<MIDIPacketList>, _ listSize: Int, _ curPacket: UnsafeMutablePointer<MIDIPacket>, _ time: MIDITimeStamp, _ nData: Int, _ data: UnsafePointer<UInt8>) -> UnsafeMutablePointer<MIDIPacket>
