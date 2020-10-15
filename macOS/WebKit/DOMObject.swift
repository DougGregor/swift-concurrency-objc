
typealias DOMTimeStamp = UInt64
@available(macOS, introduced: 10.4, deprecated: 10.14)
class DOMObject : WebScriptObject, NSCopying {
}
extension DOMObject {
  @available(macOS 10.4, *)
  var sheet: DOMStyleSheet! { get }
}
