
@available(tvOS 10.0, *)
class GKQuadtreeNode : NSObject {
  var quad: GKQuad { get }
}
@available(tvOS 10.0, *)
class GKQuadtree<ElementType> : NSObject where ElementType : NSObject {
  init(boundingQuad quad: GKQuad, minimumCellSize minCellSize: Float)
  func add(_ element: ElementType, at point: vector_float2) -> GKQuadtreeNode
  func add(_ element: ElementType, in quad: GKQuad) -> GKQuadtreeNode
  func elements(at point: vector_float2) -> [ElementType]
  func elements(in quad: GKQuad) -> [ElementType]
  func remove(_ element: ElementType) -> Bool
  func remove(_ data: ElementType, using node: GKQuadtreeNode) -> Bool
}
