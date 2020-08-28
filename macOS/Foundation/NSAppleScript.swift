
extension NSAppleScript {
  @available(macOS 10.2, *)
  class let errorMessage: String
  @available(macOS 10.2, *)
  class let errorNumber: String
  @available(macOS 10.2, *)
  class let errorAppName: String
  @available(macOS 10.2, *)
  class let errorBriefMessage: String
  @available(macOS 10.2, *)
  class let errorRange: String
}
class NSAppleScript : NSObject, NSCopying {
  init?(contentsOf url: URL, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>?)
  init?(source: String)
  var source: String? { get }
  var isCompiled: Bool { get }
  func compileAndReturnError(_ errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> Bool
  func executeAndReturnError(_ errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> NSAppleEventDescriptor
  func executeAppleEvent(_ event: NSAppleEventDescriptor, error errorInfo: AutoreleasingUnsafeMutablePointer<NSDictionary?>?) -> NSAppleEventDescriptor
}
