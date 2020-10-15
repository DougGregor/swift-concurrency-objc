
typealias NSTextInputSourceIdentifier = String
@available(macOS 10.6, *)
class NSTextInputContext : NSObject {
  class var current: NSTextInputContext? { get }
  init(client: NSTextInputClient)
  var client: NSTextInputClient { get }
  var acceptsGlyphInfo: Bool
  var allowedInputSourceLocales: [String]?
  func activate()
  func deactivate()
  func handleEvent(_ event: NSEvent) -> Bool
  func discardMarkedText()
  func invalidateCharacterCoordinates()
  var keyboardInputSources: [NSTextInputSourceIdentifier]? { get }
  var selectedKeyboardInputSource: NSTextInputSourceIdentifier?
  class func localizedName(forInputSource inputSourceIdentifier: NSTextInputSourceIdentifier) -> String?
}
extension NSTextInputContext {
  @available(macOS 10.6, *)
  class let keyboardSelectionDidChangeNotification: NSNotification.Name
}
