
@available(macOS 10.5, *)
class SBApplication : SBObject, NSCoding {
  init?(bundleIdentifier ident: String)
  init?(url: URL)
  init?(processIdentifier pid: pid_t)
  func `class`(forScriptingClass className: String) -> AnyClass?
  var isRunning: Bool { get }
  func activate()
  var delegate: SBApplicationDelegate?
  var launchFlags: LSLaunchFlags
  var sendMode: AESendMode
  var timeout: Int
}
protocol SBApplicationDelegate {
  func eventDidFail(_ event: UnsafePointer<AppleEvent>, withError error: Error) -> Any?
}
