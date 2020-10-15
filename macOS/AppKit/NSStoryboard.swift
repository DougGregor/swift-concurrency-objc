
extension NSStoryboard {
  typealias Name = String
  typealias SceneIdentifier = String
}
typealias __NSStoryboardControllerCreator = (NSCoder) -> Any?
@available(macOS 10.10, *)
class NSStoryboard : NSObject {
  @available(macOS 10.13, *)
  class var main: NSStoryboard? { get }
  convenience init(name: NSStoryboard.Name, bundle storyboardBundleOrNil: Bundle?)
  func instantiateInitialController() -> Any?
  @available(macOS 10.15, *)
  func __instantiateInitialController(creator block: ((NSCoder) -> Any?)? = nil) -> Any?
  func instantiateController(withIdentifier identifier: NSStoryboard.SceneIdentifier) -> Any
  @available(macOS 10.15, *)
  func __instantiateController(withIdentifier identifier: NSStoryboard.SceneIdentifier, creator block: ((NSCoder) -> Any?)? = nil) -> Any
}

@available(macOS 10.10, *)
extension NSStoryboard {
  @available(macOS 10.15, *)
  func instantiateInitialController<Controller>(creator: ((NSCoder) -> Controller?)? = nil) -> Controller? where Controller : NSViewController
  @available(macOS 10.15, *)
  func instantiateInitialController<Controller>(creator: ((NSCoder) -> Controller?)? = nil) -> Controller? where Controller : NSWindowController
  @available(macOS 10.15, *)
  func instantiateController<Controller>(identifier: NSStoryboard.SceneIdentifier, creator: ((NSCoder) -> Controller?)? = nil) -> Controller where Controller : NSViewController
  @available(macOS 10.15, *)
  func instantiateController<Controller>(identifier: NSStoryboard.SceneIdentifier, creator: ((NSCoder) -> Controller?)? = nil) -> Controller where Controller : NSWindowController
}
