
@available(macOS 11.0, *)
class MPSGraphShapedType : NSObject, NSCopying {
  var shape: [NSNumber]?
  var dataType: MPSDataType
  init(shape: [NSNumber]?, dataType: MPSDataType)
}
enum MPSGraphTensorNamedDataLayout : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 11.0, *)
  case NCHW
  @available(macOS 11.0, *)
  case NHWC
  @available(macOS 11.0, *)
  case OIHW
  @available(macOS 11.0, *)
  case HWIO
  @available(macOS 11.0, *)
  case CHW
  @available(macOS 11.0, *)
  case HWC
  @available(macOS 11.0, *)
  case HW
}
enum MPSGraphPaddingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(macOS 11.0, *)
  case explicit
  @available(macOS 11.0, *)
  case TF_VALID
  @available(macOS 11.0, *)
  case TF_SAME
}
enum MPSGraphPaddingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(macOS 11.0, *)
  case constant
  @available(macOS 11.0, *)
  case reflect
  @available(macOS 11.0, *)
  case symmetric
}
