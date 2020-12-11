
extension NSPasteboard.PasteboardType {
}
extension NSSound {
  typealias Name = String
  typealias PlaybackDeviceIdentifier = String
}
class NSSound : NSObject, NSCopying, NSSecureCoding, NSPasteboardReading, NSPasteboardWriting {
  /*not inherited*/ init?(named name: NSSound.Name)
  init?(contentsOf url: URL, byReference byRef: Bool)
  init?(contentsOfFile path: String, byReference byRef: Bool)
  init?(data: Data)
  func setName(_ string: NSSound.Name?) -> Bool
  var name: NSSound.Name? { get }
  class func canInit(with pasteboard: NSPasteboard) -> Bool
  @available(macOS 10.5, *)
  class var soundUnfilteredTypes: [String] { get }
  init?(pasteboard: NSPasteboard)
  func write(to pasteboard: NSPasteboard)
  func play() -> Bool
  func pause() -> Bool
  func resume() -> Bool
  func stop() -> Bool
  var isPlaying: Bool { get }
  weak var delegate: @sil_weak NSSoundDelegate?
  @available(macOS 10.5, *)
  var duration: TimeInterval { get }
  @available(macOS 10.5, *)
  var volume: Float
  @available(macOS 10.5, *)
  var currentTime: TimeInterval
  @available(macOS 10.5, *)
  var loops: Bool
  @available(macOS 10.5, *)
  var playbackDeviceIdentifier: NSSound.PlaybackDeviceIdentifier?
}

extension NSSound {
  @available(swift 4)
  static func beep()
}
extension NSSound {
}
protocol NSSoundDelegate : NSObjectProtocol {
  optional func sound(_ sound: NSSound, didFinishPlaying flag: Bool)
}
extension Bundle {
  func path(forSoundResource name: NSSound.Name) -> String?
}
