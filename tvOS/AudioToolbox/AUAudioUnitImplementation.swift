
enum AURenderEventType : UInt8 {
  init?(rawValue: UInt8)
  var rawValue: UInt8 { get }
  case parameter
  case parameterRamp
  case MIDI
  case midiSysEx
}
struct AURenderEventHeader {
  var next: UnsafeMutablePointer<AURenderEvent>?
  var eventSampleTime: AUEventSampleTime
  var eventType: AURenderEventType
  var reserved: UInt8
  init()
  init(next: UnsafeMutablePointer<AURenderEvent>?, eventSampleTime: AUEventSampleTime, eventType: AURenderEventType, reserved: UInt8)
}
struct AUParameterEvent {
  var next: UnsafeMutablePointer<AURenderEvent>?
  var eventSampleTime: AUEventSampleTime
  var eventType: AURenderEventType
  var reserved: (UInt8, UInt8, UInt8)
  var rampDurationSampleFrames: AUAudioFrameCount
  var parameterAddress: AUParameterAddress
  var value: AUValue
  init()
  init(next: UnsafeMutablePointer<AURenderEvent>?, eventSampleTime: AUEventSampleTime, eventType: AURenderEventType, reserved: (UInt8, UInt8, UInt8), rampDurationSampleFrames: AUAudioFrameCount, parameterAddress: AUParameterAddress, value: AUValue)
}
struct AUMIDIEvent {
  var next: UnsafeMutablePointer<AURenderEvent>?
  var eventSampleTime: AUEventSampleTime
  var eventType: AURenderEventType
  var reserved: UInt8
  var length: UInt16
  var cable: UInt8
  var data: (UInt8, UInt8, UInt8)
  init()
  init(next: UnsafeMutablePointer<AURenderEvent>?, eventSampleTime: AUEventSampleTime, eventType: AURenderEventType, reserved: UInt8, length: UInt16, cable: UInt8, data: (UInt8, UInt8, UInt8))
}
struct AURenderEvent {
  var head: AURenderEventHeader
  var parameter: AUParameterEvent
  var MIDI: AUMIDIEvent
  init(head: AURenderEventHeader)
  init(parameter: AUParameterEvent)
  init(MIDI: AUMIDIEvent)
  init()
}
typealias AUInternalRenderBlock = (UnsafeMutablePointer<AudioUnitRenderActionFlags>, UnsafePointer<AudioTimeStamp>, AUAudioFrameCount, Int, UnsafeMutablePointer<AudioBufferList>, UnsafePointer<AURenderEvent>?, AURenderPullInputBlock?) -> AUAudioUnitStatus
extension AUAudioUnit {
  class func registerSubclass(_ cls: AnyClass, as componentDescription: AudioComponentDescription, name: String, version: UInt32)
  var internalRenderBlock: AUInternalRenderBlock { get }
  @available(tvOS 11.0, *)
  var midiOutputBufferSizeHint: Int
  func setRenderResourcesAllocated(_ flag: Bool)
}
extension AUAudioUnitBus {
  var supportedChannelCounts: [NSNumber]?
  var maximumChannelCount: AUAudioChannelCount
}
extension AUAudioUnitBusArray {
  func replaceBusses(_ busArray: [AUAudioUnitBus])
}
extension AUParameterTree {
  class func createParameter(withIdentifier identifier: String, name: String, address: AUParameterAddress, min: AUValue, max: AUValue, unit: AudioUnitParameterUnit, unitName: String?, flags: AudioUnitParameterOptions = [], valueStrings: [String]?, dependentParameters: [NSNumber]?) -> AUParameter
  class func createGroup(withIdentifier identifier: String, name: String, children: [AUParameterNode]) -> AUParameterGroup
  class func createGroupTemplate(_ children: [AUParameterNode]) -> AUParameterGroup
  class func createGroup(fromTemplate templateGroup: AUParameterGroup, identifier: String, name: String, addressOffset: AUParameterAddress) -> AUParameterGroup
  class func createTree(withChildren children: [AUParameterNode]) -> AUParameterTree
}
typealias AUImplementorValueObserver = (AUParameter, AUValue) -> Void
typealias AUImplementorValueProvider = (AUParameter) -> AUValue
typealias AUImplementorStringFromValueCallback = (AUParameter, UnsafePointer<AUValue>?) -> String
typealias AUImplementorValueFromStringCallback = (AUParameter, String) -> AUValue
typealias AUImplementorDisplayNameWithLengthCallback = (AUParameterNode, Int) -> String
extension AUParameterNode {
  var implementorValueObserver: AUImplementorValueObserver
  var implementorValueProvider: AUImplementorValueProvider
  var implementorStringFromValueCallback: AUImplementorStringFromValueCallback
  var implementorValueFromStringCallback: AUImplementorValueFromStringCallback
  var implementorDisplayNameWithLengthCallback: AUImplementorDisplayNameWithLengthCallback
}
@available(tvOS 9.0, *)
class AUAudioUnitV2Bridge : AUAudioUnit {
}
protocol AUAudioUnitFactory : NSExtensionRequestHandling {
  @available(tvOS 9.0, *)
  func createAudioUnit(with desc: AudioComponentDescription) throws -> AUAudioUnit
}
