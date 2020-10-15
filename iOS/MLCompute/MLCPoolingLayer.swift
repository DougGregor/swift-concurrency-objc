
@available(iOS 14.0, *)
class MLCPoolingLayer : MLCLayer {
  @NSCopying var descriptor: MLCPoolingDescriptor { get }
  convenience init(descriptor: MLCPoolingDescriptor)
}
