
@available(iOS 14.0, *)
class MLCMatMulLayer : MLCLayer {
  @NSCopying var descriptor: MLCMatMulDescriptor { get }
  convenience init?(descriptor: MLCMatMulDescriptor)
}
