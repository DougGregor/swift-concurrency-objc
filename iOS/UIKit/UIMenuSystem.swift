
@available(iOS 13.0, *)
class UIMenuSystem : NSObject {
  class var main: UIMenuSystem { get }
  class var context: UIMenuSystem { get }
  func setNeedsRebuild()
  func setNeedsRevalidate()
}
