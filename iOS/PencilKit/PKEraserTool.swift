
@available(iOS 13.0, *)
enum __PKEraserType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case vector
  case bitmap
}
@available(iOS 13.0, *)
class PKEraserToolReference : __PKTool {
  var eraserType: __PKEraserType { get }
  init(eraserType: __PKEraserType)
}
