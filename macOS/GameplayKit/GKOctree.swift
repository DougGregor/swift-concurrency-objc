
@available(macOS 10.12, *)
class GKOctreeNode : NSObject {
  var box: GKBox { get }
}
@available(macOS 10.12, *)
class GKOctree<ElementType> : NSObject where ElementType : NSObject {
  init(boundingBox box: GKBox, minimumCellSize minCellSize: Float)
  func add(_ element: ElementType, at point: vector_float3) -> GKOctreeNode
  func add(_ element: ElementType, in box: GKBox) -> GKOctreeNode
  func elements(at point: vector_float3) -> [ElementType]
  func elements(in box: GKBox) -> [ElementType]
  func remove(_ element: ElementType) -> Bool
  func remove(_ element: ElementType, using node: GKOctreeNode) -> Bool
}
