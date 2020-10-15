
@available(macOS 11.0, *)
class MLCYOLOLossLayer : MLCLossLayer {
  @NSCopying var yoloLossDescriptor: MLCYOLOLossDescriptor { get }
}
