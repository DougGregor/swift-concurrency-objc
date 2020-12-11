
typealias AUAudioObjectID = UInt32
typealias AUAudioUnitStatus = OSStatus
typealias AUEventSampleTime = Int64
var AUEventSampleTimeImmediate: AUEventSampleTime { get }
typealias AUAudioFrameCount = UInt32
typealias AUAudioChannelCount = UInt32
enum AUAudioUnitBusType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case input
  case output
}
typealias AURenderPullInputBlock = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int, UnsafeMutablePointer<AudioBufferList>) -> AUAudioUnitStatus
typealias AURenderBlock = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int, UnsafeMutablePointer<AudioBufferList>, AURenderPullInputBlock?) -> AUAudioUnitStatus
typealias AURenderObserver = (AudioUnitRenderActionFlags, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int) -> Void
typealias AUScheduleParameterBlock = (AUEventSampleTime, AUAudioFrameCount, AUParameterAddress, AUValue) -> Void
typealias AUScheduleMIDIEventBlock = (AUEventSampleTime, UInt8, Int, UnsafePointer<UInt8>) -> Void
typealias AUMIDIOutputEventBlock = (AUEventSampleTime, UInt8, Int, UnsafePointer<UInt8>) -> OSStatus
typealias AUHostMusicalContextBlock = (UnsafeMutablePointer<Double>?, UnsafeMutablePointer<Double>?, UnsafeMutablePointer<Int>?, UnsafeMutablePointer<Double>?, UnsafeMutablePointer<Int>?, UnsafeMutablePointer<Double>?) -> Bool
typealias AUMIDICIProfileChangedBlock = (UInt8, MIDIChannelNumber, MIDICIProfile, Bool) -> Void
struct AUHostTransportStateFlags : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var changed: AUHostTransportStateFlags { get }
  static var moving: AUHostTransportStateFlags { get }
  static var recording: AUHostTransportStateFlags { get }
  static var cycling: AUHostTransportStateFlags { get }
}
typealias AUHostTransportStateBlock = (UnsafeMutablePointer<AUHostTransportStateFlags>?, UnsafeMutablePointer<Double>?, UnsafeMutablePointer<Double>?, UnsafeMutablePointer<Double>?) -> Bool
@available(macOS 10.11, *)
class AUAudioUnit : NSObject {
  init(componentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions = []) throws
  convenience init(componentDescription: AudioComponentDescription) throws
  class func instantiate(with componentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions = [], completionHandler: @escaping (AUAudioUnit?, Error?) -> Void)
  class func instantiate(with componentDescription: AudioComponentDescription, options: AudioComponentInstantiationOptions = []) async throws -> AUAudioUnit
  var componentDescription: AudioComponentDescription { get }
  var component: AudioComponent { get }
  var componentName: String? { get }
  var audioUnitName: String? { get }
  var manufacturerName: String? { get }
  @available(macOS 10.13, *)
  var audioUnitShortName: String? { get }
  var componentVersion: UInt32 { get }
  func allocateRenderResources() throws
  func deallocateRenderResources()
  var renderResourcesAllocated: Bool { get }
  func reset()
  var inputBusses: AUAudioUnitBusArray { get }
  var outputBusses: AUAudioUnitBusArray { get }
  var renderBlock: AURenderBlock { get }
  var scheduleParameterBlock: AUScheduleParameterBlock { get }
  func token(byAddingRenderObserver observer: @escaping AURenderObserver) -> Int
  func removeRenderObserver(_ token: Int)
  var maximumFramesToRender: AUAudioFrameCount
  var parameterTree: AUParameterTree?
  func parametersForOverview(withCount count: Int) -> [NSNumber]
  var allParameterValues: Bool { get }
  var isMusicDeviceOrEffect: Bool { get }
  var virtualMIDICableCount: Int { get }
  var scheduleMIDIEventBlock: AUScheduleMIDIEventBlock? { get }
  @available(macOS 10.13, *)
  var midiOutputNames: [String] { get }
  @available(macOS 10.13, *)
  var providesUserInterface: Bool { get }
  @available(macOS 10.13, *)
  var midiOutputEventBlock: AUMIDIOutputEventBlock?
  var fullState: [String : Any]?
  var fullStateForDocument: [String : Any]?
  var factoryPresets: [AUAudioUnitPreset]? { get }
  @available(macOS 10.15, *)
  var userPresets: [AUAudioUnitPreset] { get }
  @available(macOS 10.15, *)
  func saveUserPreset(_ userPreset: AUAudioUnitPreset) throws
  @available(macOS 10.15, *)
  func deleteUserPreset(_ userPreset: AUAudioUnitPreset) throws
  @available(macOS 10.15, *)
  func presetState(for userPreset: AUAudioUnitPreset) throws -> [String : Any]
  @available(macOS 10.15, *)
  var supportsUserPresets: Bool { get }
  @available(macOS 10.15, *)
  var isLoadedInProcess: Bool { get }
  var currentPreset: AUAudioUnitPreset?
  var latency: TimeInterval { get }
  var tailTime: TimeInterval { get }
  var renderQuality: Int
  var shouldBypassEffect: Bool
  var canProcessInPlace: Bool { get }
  var isRenderingOffline: Bool
  var channelCapabilities: [NSNumber]? { get }
  var musicalContextBlock: AUHostMusicalContextBlock?
  var transportStateBlock: AUHostTransportStateBlock?
  var contextName: String?
  @available(macOS 10.12, *)
  var supportsMPE: Bool { get }
  @available(macOS 10.12, *)
  var channelMap: [NSNumber]?
  @available(macOS 10.14, *)
  func profileState(forCable cable: UInt8, channel: MIDIChannelNumber) -> MIDICIProfileState
  @available(macOS 10.14, *)
  func enable(_ profile: MIDICIProfile, cable: UInt8, onChannel channel: MIDIChannelNumber) throws
  @available(macOS 10.14, *)
  func disableProfile(_ profile: MIDICIProfile, cable: UInt8, onChannel channel: MIDIChannelNumber) throws
  @available(macOS 10.14, *)
  var profileChangedBlock: AUMIDICIProfileChangedBlock?
}
typealias AUInputHandler = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int) -> Void
extension AUAudioUnit {
  var canPerformInput: Bool { get }
  var canPerformOutput: Bool { get }
  var isInputEnabled: Bool
  var isOutputEnabled: Bool
  var outputProvider: AURenderPullInputBlock?
  var inputHandler: AUInputHandler?
  var deviceID: AUAudioObjectID { get }
  func setDeviceID(_ deviceID: AUAudioObjectID) throws
  @available(macOS 10.13, *)
  var deviceInputLatency: TimeInterval { get }
  @available(macOS 10.13, *)
  var deviceOutputLatency: TimeInterval { get }
  @available(macOS 10.13, *)
  var isRunning: Bool { get }
  func startHardware() throws
  func stopHardware()
}
@available(macOS 10.11, *)
class AUAudioUnitBusArray : NSObject, NSFastEnumeration {
  init(audioUnit owner: AUAudioUnit, busType: AUAudioUnitBusType, busses busArray: [AUAudioUnitBus])
  convenience init(audioUnit owner: AUAudioUnit, busType: AUAudioUnitBusType)
  var count: Int { get }
  subscript(index: Int) -> AUAudioUnitBus { get }
  var isCountChangeable: Bool { get }
  func setBusCount(_ count: Int) throws
  func addObserver(toAllBusses observer: NSObject, forKeyPath keyPath: String, options: NSKeyValueObservingOptions = [], context: UnsafeMutableRawPointer?)
  func removeObserver(fromAllBusses observer: NSObject, forKeyPath keyPath: String, context: UnsafeMutableRawPointer?)
  unowned(unsafe) var ownerAudioUnit: @sil_unmanaged AUAudioUnit { get }
  var busType: AUAudioUnitBusType { get }
}
@available(macOS 10.11, *)
class AUAudioUnitBus : NSObject {
  @available(macOS 10.13, *)
  var shouldAllocateBuffer: Bool
  var isEnabled: Bool
  var name: String?
  var index: Int { get }
  var busType: AUAudioUnitBusType { get }
  unowned(unsafe) var ownerAudioUnit: @sil_unmanaged AUAudioUnit { get }
  var supportedChannelLayoutTags: [NSNumber]? { get }
  var contextPresentationLatency: TimeInterval
}
@available(macOS 10.11, *)
class AUAudioUnitPreset : NSObject, NSSecureCoding {
  var number: Int
  var name: String
}
