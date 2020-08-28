
struct OSALanguageFeatures : OptionSet {
  init(rawValue: UInt)
  let rawValue: UInt
  static var supportsCompiling: OSALanguageFeatures { get }
  static var supportsGetSource: OSALanguageFeatures { get }
  static var supportsAECoercion: OSALanguageFeatures { get }
  static var supportsAESending: OSALanguageFeatures { get }
  static var supportsRecording: OSALanguageFeatures { get }
  static var supportsConvenience: OSALanguageFeatures { get }
  static var supportsDialects: OSALanguageFeatures { get }
  static var supportsEventHandling: OSALanguageFeatures { get }
}
class OSALanguage : NSObject {
  class func availableLanguages() -> [OSALanguage]
  /*not inherited*/ init?(forName name: String)
  @available(macOS 10.6, *)
  /*not inherited*/ init?(forScriptDataDescriptor descriptor: NSAppleEventDescriptor)
  class func `default`() -> OSALanguage?
  class func setDefault(_ defaultLanguage: OSALanguage)
  init(component: Component)
  @available(macOS 10.6, *)
  func sharedLanguageInstance() -> OSALanguageInstance
  var componentInstance: ComponentInstance { get }
  var name: String? { get }
  var info: String? { get }
  var version: String? { get }
  var type: OSType { get }
  var subType: OSType { get }
  var manufacturer: OSType { get }
  var features: OSALanguageFeatures { get }
  @available(macOS 10.6, *)
  var isThreadSafe: Bool { get }
}
