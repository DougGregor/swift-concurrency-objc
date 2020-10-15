
class NSCustomImageRep : NSImageRep {
  @available(macOS 10.8, *)
  init(size: NSSize, flipped drawingHandlerShouldBeCalledWithFlippedContext: Bool, drawingHandler: @escaping (NSRect) -> Bool)
  @available(macOS 10.8, *)
  var drawingHandler: ((NSRect) -> Bool)? { get }
  init(draw selector: Selector, delegate: Any)
  var drawSelector: Selector? { get }
  weak var delegate: @sil_weak AnyObject? { get }
}
