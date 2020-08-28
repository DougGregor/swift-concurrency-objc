
class NSProxy : NSObjectProtocol {
  class func alloc() -> Self
  class func `class`() -> AnyClass
  class func forwardInvocation(_ invocation: NSInvocation)
  func forwardInvocation(_ invocation: NSInvocation)
  class func dealloc()
  func dealloc()
  class func finalize()
  func finalize()
  class func responds(to aSelector: Selector) -> Bool
}
