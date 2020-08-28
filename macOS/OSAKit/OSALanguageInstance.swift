
class OSALanguageInstance : NSObject {
  init(language: OSALanguage)
  var language: OSALanguage { get }
  var componentInstance: ComponentInstance { get }
  @available(macOS 10.10, *)
  var defaultTarget: NSAppleEventDescriptor?
  @available(macOS 10.10, *)
  func richText(from descriptor: NSAppleEventDescriptor) -> NSAttributedString?
}
