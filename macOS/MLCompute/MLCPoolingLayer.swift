
@available(macOS 11.0, *)
class MLCPoolingLayer : MLCLayer {
  @NSCopying var descriptor: MLCPoolingDescriptor { get }
  convenience init(descriptor: MLCPoolingDescriptor)
}
