
extension NSNotification.Name {
  static let JNFRunLoopDidStart: NSNotification.Name
}
class JNFRunLoop : NSObject {
  class func javaRunLoopMode() -> String!
  class func perform(onMainThread aSelector: Selector!, on target: Any!, with arg: Any!, waitUntilDone wait: Bool)
  class func perform(onMainThreadWaiting waitUntilDone: Bool, with block: (() -> Void)!)
}
