
let kIMKCommandMenuItemName: String
let kIMKCommandClientName: String
extension NSObject {
  class func inputText(_ string: String!, key keyCode: Int, modifiers flags: Int, client sender: Any!) -> Bool
  func inputText(_ string: String!, key keyCode: Int, modifiers flags: Int, client sender: Any!) -> Bool
  class func inputText(_ string: String!, client sender: Any!) -> Bool
  func inputText(_ string: String!, client sender: Any!) -> Bool
  class func handle(_ event: NSEvent!, client sender: Any!) -> Bool
  func handle(_ event: NSEvent!, client sender: Any!) -> Bool
  class func didCommand(by aSelector: Selector!, client sender: Any!) -> Bool
  func didCommand(by aSelector: Selector!, client sender: Any!) -> Bool
  class func composedString(_ sender: Any!) -> Any!
  func composedString(_ sender: Any!) -> Any!
  class func originalString(_ sender: Any!) -> NSAttributedString!
  func originalString(_ sender: Any!) -> NSAttributedString!
  class func commitComposition(_ sender: Any!)
  func commitComposition(_ sender: Any!)
  class func candidates(_ sender: Any!) -> [Any]!
  func candidates(_ sender: Any!) -> [Any]!
}
protocol IMKStateSetting {
  func activateServer(_ sender: Any!)
  func deactivateServer(_ sender: Any!)
  func value(forTag tag: Int, client sender: Any!) -> Any!
  func setValue(_ value: Any!, forTag tag: Int, client sender: Any!)
  func modes(_ sender: Any!) -> [AnyHashable : Any]!
  func recognizedEvents(_ sender: Any!) -> Int
  func showPreferences(_ sender: Any!)
}
protocol IMKMouseHandling {
  func mouseDown(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, continueTracking keepTracking: UnsafeMutablePointer<ObjCBool>!, client sender: Any!) -> Bool
  func mouseUp(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: Any!) -> Bool
  func mouseMoved(onCharacterIndex index: Int, coordinate point: NSPoint, withModifier flags: Int, client sender: Any!) -> Bool
}
class IMKInputController : NSObject, IMKStateSetting, IMKMouseHandling {
  init!(server: IMKServer!, delegate: Any!, client inputClient: Any!)
  func updateComposition()
  func cancelComposition()
  func compositionAttributes(at range: NSRange) -> NSMutableDictionary!
  func selectionRange() -> NSRange
  func replacementRange() -> NSRange
  func mark(forStyle style: Int, at range: NSRange) -> [AnyHashable : Any]!
  func doCommand(by aSelector: Selector!, command infoDictionary: [AnyHashable : Any]!)
  func hidePalettes()
  func menu() -> NSMenu!
  func delegate() -> Any!
  func setDelegate(_ newDelegate: Any!)
  func server() -> IMKServer!
  func client() -> (IMKTextInput & NSObjectProtocol)!
  @available(macOS 10.7, *)
  func inputControllerWillClose()
  func annotationSelected(_ annotationString: NSAttributedString!, forCandidate candidateString: NSAttributedString!)
  func candidateSelectionChanged(_ candidateString: NSAttributedString!)
  func candidateSelected(_ candidateString: NSAttributedString!)
}
