
@available(macOS 11.0, *)
class MLCLayer : NSObject {
  var layerID: Int { get }
  var label: String
  var isDebuggingEnabled: Bool
  class func supportsDataType(_ dataType: MLCDataType, on device: MLCDevice) -> Bool
}
