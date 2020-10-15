
@available(tvOS 14.0, *)
class MPSGraphShapedType : NSObject, NSCopying {
  var shape: [NSNumber]?
  var dataType: MPSDataType
  init(shape: [NSNumber]?, dataType: MPSDataType)
  func isEqual(to object: MPSGraphShapedType?) -> Bool
}
enum MPSGraphTensorNamedDataLayout : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(tvOS 14.0, *)
  case NCHW
  @available(tvOS 14.0, *)
  case NHWC
  @available(tvOS 14.0, *)
  case OIHW
  @available(tvOS 14.0, *)
  case HWIO
  @available(tvOS 14.0, *)
  case CHW
  @available(tvOS 14.0, *)
  case HWC
  @available(tvOS 14.0, *)
  case HW
}
enum MPSGraphPaddingStyle : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  @available(tvOS 14.0, *)
  case explicit
  @available(tvOS 14.0, *)
  case TF_VALID
  @available(tvOS 14.0, *)
  case TF_SAME
}
enum MPSGraphPaddingMode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  @available(tvOS 14.0, *)
  case constant
  @available(tvOS 14.0, *)
  case reflect
  @available(tvOS 14.0, *)
  case symmetric
}
