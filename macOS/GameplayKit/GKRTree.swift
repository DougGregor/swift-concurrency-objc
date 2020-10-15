
enum GKRTreeSplitStrategy : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case halve
  case linear
  case quadratic
  case reduceOverlap
}
@available(macOS 10.12, *)
class GKRTree<ElementType> : NSObject where ElementType : NSObject {
  var queryReserve: Int
  init(maxNumberOfChildren: Int)
  func addElement(_ element: ElementType, boundingRectMin: vector_float2, boundingRectMax: vector_float2, splitStrategy: GKRTreeSplitStrategy)
  func removeElement(_ element: ElementType, boundingRectMin: vector_float2, boundingRectMax: vector_float2)
  func elements(inBoundingRectMin rectMin: vector_float2, rectMax: vector_float2) -> [ElementType]
}
