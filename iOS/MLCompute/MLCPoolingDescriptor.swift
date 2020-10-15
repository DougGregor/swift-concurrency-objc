
@available(iOS 14.0, *)
class MLCPoolingDescriptor : NSObject, NSCopying {
  var __poolingType: __MLCPoolingType { get }
  var __kernelWidth: Int { get }
  var __kernelHeight: Int { get }
  var __strideInX: Int { get }
  var __strideInY: Int { get }
  var __dilationRateInX: Int { get }
  var __dilationRateInY: Int { get }
  var __paddingPolicy: __MLCPaddingPolicy { get }
  var __paddingSizeInX: Int { get }
  var __paddingSizeInY: Int { get }
  var __countIncludesPadding: Bool { get }
  convenience init(__type poolingType: __MLCPoolingType, kernelSize: Int, stride: Int)
  convenience init(__maxPoolingWithKernelSizes kernelSizes: [NSNumber], strides: [NSNumber], paddingPolicy: __MLCPaddingPolicy, paddingSizes: [NSNumber]?)
  convenience init(__maxPoolingWithKernelSizes kernelSizes: [NSNumber], strides: [NSNumber], dilationRates: [NSNumber], paddingPolicy: __MLCPaddingPolicy, paddingSizes: [NSNumber]?)
  convenience init(__averagePoolingWithKernelSizes kernelSizes: [NSNumber], strides: [NSNumber], paddingPolicy: __MLCPaddingPolicy, paddingSizes: [NSNumber]?, countIncludesPadding: Bool)
  convenience init(__averagePoolingWithKernelSizes kernelSizes: [NSNumber], strides: [NSNumber], dilationRates: [NSNumber], paddingPolicy: __MLCPaddingPolicy, paddingSizes: [NSNumber]?, countIncludesPadding: Bool)
  convenience init(__l2NormPoolingWithKernelSizes kernelSizes: [NSNumber], strides: [NSNumber], paddingPolicy: __MLCPaddingPolicy, paddingSizes: [NSNumber]?)
  convenience init(__l2NormPoolingWithKernelSizes kernelSizes: [NSNumber], strides: [NSNumber], dilationRates: [NSNumber], paddingPolicy: __MLCPaddingPolicy, paddingSizes: [NSNumber]?)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCPoolingDescriptor {
  @inlinable var poolingType: MLCPoolingType { get }
  @inlinable var kernelSizes: (height: Int, width: Int) { get }
  @inlinable var strides: (y: Int, x: Int) { get }
  @inlinable var dilationRates: (y: Int, x: Int) { get }
  @inlinable var paddingPolicy: MLCPaddingPolicy { get }
  @inlinable convenience init(type: MLCPoolingType, kernelSizes: (height: Int, width: Int), strides: (y: Int, x: Int) = (y: 1, x: 1), dilationRates: (y: Int, x: Int) = (y: 1, x: 1), paddingPolicy: MLCPaddingPolicy = .same)
}
