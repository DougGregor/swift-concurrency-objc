
@available(macOS 10.13, *)
class NSAccessibilityCustomAction : NSObject {
  init(name: String, handler: (() -> Bool)? = nil)
  init(name: String, target: NSObjectProtocol, selector: Selector)
  var name: String
  var handler: (() -> Bool)?
  weak var target: @sil_weak NSObjectProtocol?
  var selector: Selector?
}
