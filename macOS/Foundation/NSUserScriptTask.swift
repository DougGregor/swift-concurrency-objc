
@available(macOS 10.8, *)
class NSUserScriptTask : NSObject {
  init(url: URL) throws
  var scriptURL: URL { get }
  func execute(completionHandler handler: NSUserScriptTask.CompletionHandler? = nil)
  func executeAsync() async throws
}
extension NSUserScriptTask {
  typealias CompletionHandler = (Error?) -> Void
}
@available(macOS 10.8, *)
class NSUserUnixTask : NSUserScriptTask {
  var standardInput: FileHandle?
  var standardOutput: FileHandle?
  var standardError: FileHandle?
  func execute(withArguments arguments: [String]?, completionHandler handler: NSUserUnixTask.CompletionHandler? = nil)
  func executeAsync(withArguments arguments: [String]?) async throws
}
extension NSUserUnixTask {
  typealias CompletionHandler = (Error?) -> Void
}
@available(macOS 10.8, *)
class NSUserAppleScriptTask : NSUserScriptTask {
  func execute(withAppleEvent event: NSAppleEventDescriptor?, completionHandler handler: NSUserAppleScriptTask.CompletionHandler? = nil)
  func executeAsync(withAppleEvent event: NSAppleEventDescriptor?) async throws -> NSAppleEventDescriptor
}
extension NSUserAppleScriptTask {
  typealias CompletionHandler = (NSAppleEventDescriptor?, Error?) -> Void
}
@available(macOS 10.8, *)
class NSUserAutomatorTask : NSUserScriptTask {
  var variables: [String : Any]?
  func execute(withInput input: NSSecureCoding?, completionHandler handler: NSUserAutomatorTask.CompletionHandler? = nil)
  func executeAsync(withInput input: NSSecureCoding?) async throws -> Any
}
extension NSUserAutomatorTask {
  typealias CompletionHandler = (Any?, Error?) -> Void
}
