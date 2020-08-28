
@available(macOS 10.15, *)
enum __PKEraserType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case vector
  case bitmap
}
@available(macOS 10.15, *)
class PKEraserToolReference : __PKTool {
  var eraserType: __PKEraserType { get }
  init(eraserType: __PKEraserType)
}
