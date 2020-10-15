
class SCNTransaction : NSObject {
  class func begin()
  class func commit()
  class func flush()
  class func lock()
  class func unlock()
  class var animationDuration: CFTimeInterval
  @NSCopying class var animationTimingFunction: CAMediaTimingFunction?
  class var disableActions: Bool
  class var completionBlock: (() -> Void)?
}
