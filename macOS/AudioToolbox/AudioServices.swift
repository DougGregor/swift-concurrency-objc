
var kAudioServicesNoError: OSStatus { get }
var kAudioServicesUnsupportedPropertyError: OSStatus { get }
var kAudioServicesBadPropertySizeError: OSStatus { get }
var kAudioServicesBadSpecifierSizeError: OSStatus { get }
var kAudioServicesSystemSoundUnspecifiedError: OSStatus { get }
var kAudioServicesSystemSoundClientTimedOutError: OSStatus { get }
var kAudioServicesSystemSoundExceededMaximumDurationError: OSStatus { get }
typealias SystemSoundID = UInt32
typealias AudioServicesPropertyID = UInt32
typealias AudioServicesSystemSoundCompletionProc = @convention(c) (SystemSoundID, UnsafeMutableRawPointer?) -> Void
var kSystemSoundID_UserPreferredAlert: SystemSoundID { get }
var kSystemSoundID_FlashScreen: SystemSoundID { get }
var kUserPreferredAlert: SystemSoundID { get }
var kSystemSoundID_Vibrate: SystemSoundID { get }
var kAudioServicesPropertyIsUISound: AudioServicesPropertyID { get }
var kAudioServicesPropertyCompletePlaybackIfAppDies: AudioServicesPropertyID { get }
@available(macOS 10.5, *)
func AudioServicesCreateSystemSoundID(_ inFileURL: CFURL, _ outSystemSoundID: UnsafeMutablePointer<SystemSoundID>) -> OSStatus
@available(macOS 10.5, *)
func AudioServicesDisposeSystemSoundID(_ inSystemSoundID: SystemSoundID) -> OSStatus
@available(macOS 10.11, *)
func AudioServicesPlayAlertSoundWithCompletion(_ inSystemSoundID: SystemSoundID, _ inCompletionBlock: (() -> Void)?)
@available(macOS 10.11, *)
func AudioServicesPlaySystemSoundWithCompletion(_ inSystemSoundID: SystemSoundID, _ inCompletionBlock: (() -> Void)?)
@available(macOS 10.5, *)
func AudioServicesGetPropertyInfo(_ inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafeRawPointer?, _ outPropertyDataSize: UnsafeMutablePointer<UInt32>?, _ outWritable: UnsafeMutablePointer<DarwinBoolean>?) -> OSStatus
@available(macOS 10.5, *)
func AudioServicesGetProperty(_ inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafeRawPointer?, _ ioPropertyDataSize: UnsafeMutablePointer<UInt32>, _ outPropertyData: UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.5, *)
func AudioServicesSetProperty(_ inPropertyID: AudioServicesPropertyID, _ inSpecifierSize: UInt32, _ inSpecifier: UnsafeRawPointer?, _ inPropertyDataSize: UInt32, _ inPropertyData: UnsafeRawPointer) -> OSStatus
@available(macOS 10.5, *)
func AudioServicesPlayAlertSound(_ inSystemSoundID: SystemSoundID)
@available(macOS 10.5, *)
func AudioServicesPlaySystemSound(_ inSystemSoundID: SystemSoundID)
@available(macOS 10.5, *)
func AudioServicesAddSystemSoundCompletion(_ inSystemSoundID: SystemSoundID, _ inRunLoop: CFRunLoop?, _ inRunLoopMode: CFString?, _ inCompletionRoutine: AudioServicesSystemSoundCompletionProc, _ inClientData: UnsafeMutableRawPointer?) -> OSStatus
@available(macOS 10.5, *)
func AudioServicesRemoveSystemSoundCompletion(_ inSystemSoundID: SystemSoundID)
