
@available(iOS 8.0, *)
enum WKUserScriptInjectionTime : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case atDocumentStart
  case atDocumentEnd
}
@available(iOS 8.0, *)
class WKUserScript : NSObject, NSCopying {
  var source: String { get }
  var injectionTime: WKUserScriptInjectionTime { get }
  var isForMainFrameOnly: Bool { get }
  init(source: String, injectionTime: WKUserScriptInjectionTime, forMainFrameOnly: Bool)
  @available(iOS 14.0, *)
  init(source: String, injectionTime: WKUserScriptInjectionTime, forMainFrameOnly: Bool, in contentWorld: WKContentWorld)
}
