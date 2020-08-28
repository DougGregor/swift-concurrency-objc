
@available(macOS 10.15, *)
class MLMetricKey : MLKey {
  class var lossValue: MLMetricKey { get }
  class var epochIndex: MLMetricKey { get }
  class var miniBatchIndex: MLMetricKey { get }
}
