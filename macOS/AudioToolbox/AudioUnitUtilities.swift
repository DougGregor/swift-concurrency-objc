
var kAUParameterListener_AnyParameter: AudioUnitParameterID { get }
enum AudioUnitEventType : UInt32 {
  init?(rawValue: UInt32)
  var rawValue: UInt32 { get }
  case parameterValueChange
  case beginParameterChangeGesture
  case endParameterChangeGesture
  case propertyChange
}
typealias AUParameterListenerRef = OpaquePointer
typealias AUEventListenerRef = AUParameterListenerRef
struct AudioUnitEvent {
  struct __Unnamed_union_mArgument {
    var mParameter: AudioUnitParameter
    var mProperty: AudioUnitProperty
    init(mParameter: AudioUnitParameter)
    init(mProperty: AudioUnitProperty)
    init()
  }
  var mEventType: AudioUnitEventType
  var mArgument: AudioUnitEvent.__Unnamed_union_mArgument
  init()
  init(mEventType: AudioUnitEventType, mArgument: AudioUnitEvent.__Unnamed_union_mArgument)
}
typealias AUParameterListenerBlock = (UnsafeMutableRawPointer?, UnsafePointer<AudioUnitParameter>, AudioUnitParameterValue) -> Void
typealias AUEventListenerBlock = (UnsafeMutableRawPointer?, UnsafePointer<AudioUnitEvent>, UInt64, AudioUnitParameterValue) -> Void
typealias AUParameterListenerProc = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafePointer<AudioUnitParameter>, AudioUnitParameterValue) -> Void
typealias AUEventListenerProc = @convention(c) (UnsafeMutableRawPointer?, UnsafeMutableRawPointer?, UnsafePointer<AudioUnitEvent>, UInt64, AudioUnitParameterValue) -> Void
@available(macOS 10.6, *)
func AUListenerCreateWithDispatchQueue(_ outListener: UnsafeMutablePointer<AUParameterListenerRef?>, _ inNotificationInterval: Float32, _ inDispatchQueue: DispatchQueue, _ inBlock: @escaping AUParameterListenerBlock) -> OSStatus
@available(macOS 10.2, *)
func AUListenerCreate(_ inProc: AUParameterListenerProc, _ inUserData: UnsafeMutableRawPointer, _ inRunLoop: CFRunLoop?, _ inRunLoopMode: CFString?, _ inNotificationInterval: Float32, _ outListener: UnsafeMutablePointer<AUParameterListenerRef?>) -> OSStatus
@available(macOS 10.2, *)
func AUListenerDispose(_ inListener: AUParameterListenerRef) -> OSStatus
@available(macOS 10.2, *)
func AUListenerAddParameter(_ inListener: AUParameterListenerRef, _ inObject: UnsafeMutableRawPointer?, _ inParameter: UnsafePointer<AudioUnitParameter>) -> OSStatus
@available(macOS 10.2, *)
func AUListenerRemoveParameter(_ inListener: AUParameterListenerRef, _ inObject: UnsafeMutableRawPointer?, _ inParameter: UnsafePointer<AudioUnitParameter>) -> OSStatus
@available(macOS 10.2, *)
func AUParameterSet(_ inSendingListener: AUParameterListenerRef?, _ inSendingObject: UnsafeMutableRawPointer?, _ inParameter: UnsafePointer<AudioUnitParameter>, _ inValue: AudioUnitParameterValue, _ inBufferOffsetInFrames: UInt32) -> OSStatus
@available(macOS 10.2, *)
func AUParameterListenerNotify(_ inSendingListener: AUParameterListenerRef?, _ inSendingObject: UnsafeMutableRawPointer?, _ inParameter: UnsafePointer<AudioUnitParameter>) -> OSStatus
@available(macOS 10.6, *)
func AUEventListenerCreateWithDispatchQueue(_ outListener: UnsafeMutablePointer<AUEventListenerRef?>, _ inNotificationInterval: Float32, _ inValueChangeGranularity: Float32, _ inDispatchQueue: DispatchQueue, _ inBlock: @escaping AUEventListenerBlock) -> OSStatus
@available(macOS 10.3, *)
func AUEventListenerCreate(_ inProc: AUEventListenerProc, _ inUserData: UnsafeMutableRawPointer?, _ inRunLoop: CFRunLoop?, _ inRunLoopMode: CFString?, _ inNotificationInterval: Float32, _ inValueChangeGranularity: Float32, _ outListener: UnsafeMutablePointer<AUEventListenerRef?>) -> OSStatus
@available(macOS 10.3, *)
func AUEventListenerAddEventType(_ inListener: AUEventListenerRef, _ inObject: UnsafeMutableRawPointer?, _ inEvent: UnsafePointer<AudioUnitEvent>) -> OSStatus
@available(macOS 10.3, *)
func AUEventListenerRemoveEventType(_ inListener: AUEventListenerRef, _ inObject: UnsafeMutableRawPointer?, _ inEvent: UnsafePointer<AudioUnitEvent>) -> OSStatus
@available(macOS 10.3, *)
func AUEventListenerNotify(_ inSendingListener: AUEventListenerRef?, _ inSendingObject: UnsafeMutableRawPointer?, _ inEvent: UnsafePointer<AudioUnitEvent>) -> OSStatus
@available(macOS 10.2, *)
func AUParameterValueFromLinear(_ inLinearValue: Float32, _ inParameter: UnsafePointer<AudioUnitParameter>) -> AudioUnitParameterValue
@available(macOS 10.2, *)
func AUParameterValueToLinear(_ inParameterValue: AudioUnitParameterValue, _ inParameter: UnsafePointer<AudioUnitParameter>) -> Float32
@available(macOS 10.2, *)
func AUParameterFormatValue(_ inParameterValue: Float64, _ inParameter: UnsafePointer<AudioUnitParameter>, _ inTextBuffer: UnsafeMutablePointer<CChar>, _ inDigits: UInt32) -> UnsafeMutablePointer<CChar>
