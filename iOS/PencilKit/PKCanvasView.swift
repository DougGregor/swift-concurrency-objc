
@available(iOS 13.0, *)
protocol PKCanvasViewDelegate : UIScrollViewDelegate {
  optional func canvasViewDrawingDidChange(_ canvasView: PKCanvasView)
  optional func canvasViewDidFinishRendering(_ canvasView: PKCanvasView)
  optional func canvasViewDidBeginUsingTool(_ canvasView: PKCanvasView)
  optional func canvasViewDidEndUsingTool(_ canvasView: PKCanvasView)
}
enum PKCanvasViewDrawingPolicy : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case `default`
  case anyInput
  case pencilOnly
}
@available(iOS 13.0, *)
class PKCanvasView : UIScrollView, PKToolPickerObserver {
  var drawing: PKDrawing
  @NSCopying var __tool: __PKTool
  var isRulerActive: Bool
  var drawingGestureRecognizer: UIGestureRecognizer { get }
  @available(iOS, introduced: 13.0, deprecated: 14.0, message: "Use 'drawingPolicy' property.")
  var allowsFingerDrawing: Bool
  @available(iOS 14.0, *)
  var drawingPolicy: PKCanvasViewDrawingPolicy
}

@available(iOS 13.0, *)
extension PKCanvasView {
  var tool: PKTool
}
