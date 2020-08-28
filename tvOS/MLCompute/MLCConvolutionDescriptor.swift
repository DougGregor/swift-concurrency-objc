
@available(tvOS 14.0, *)
class MLCConvolutionDescriptor : NSObject, NSCopying {
  var convolutionType: MLCConvolutionType { get }
  var __kernelWidth: Int { get }
  var __kernelHeight: Int { get }
  var inputFeatureChannelCount: Int { get }
  var outputFeatureChannelCount: Int { get }
  var __strideInX: Int { get }
  var __strideInY: Int { get }
  var __dilationRateInX: Int { get }
  var __dilationRateInY: Int { get }
  var groupCount: Int { get }
  var __paddingPolicy: __MLCPaddingPolicy { get }
  var __paddingSizeInX: Int { get }
  var __paddingSizeInY: Int { get }
  var isConvolutionTranspose: Bool { get }
  var usesDepthwiseConvolution: Bool { get }
  convenience init(__type convolutionType: MLCConvolutionType, kernelSizes: [NSNumber], inputFeatureChannelCount: Int, outputFeatureChannelCount: Int, groupCount: Int, strides: [NSNumber], dilationRates: [NSNumber], paddingPolicy: __MLCPaddingPolicy, paddingSizes: [NSNumber]?)
  convenience init(__kernelWidth kernelWidth: Int, kernelHeight: Int, inputFeatureChannelCount: Int, outputFeatureChannelCount: Int)
  convenience init(__kernelSizes kernelSizes: [NSNumber], inputFeatureChannelCount: Int, outputFeatureChannelCount: Int, strides: [NSNumber], paddingPolicy: __MLCPaddingPolicy, paddingSizes: [NSNumber]?)
  convenience init(__kernelSizes kernelSizes: [NSNumber], inputFeatureChannelCount: Int, outputFeatureChannelCount: Int, groupCount: Int, strides: [NSNumber], dilationRates: [NSNumber], paddingPolicy: __MLCPaddingPolicy, paddingSizes: [NSNumber]?)
  convenience init(transposeWithKernelWidth kernelWidth: Int, kernelHeight: Int, inputFeatureChannelCount: Int, outputFeatureChannelCount: Int)
  convenience init(__transposeWithKernelSizes kernelSizes: [NSNumber], inputFeatureChannelCount: Int, outputFeatureChannelCount: Int, strides: [NSNumber], paddingPolicy: __MLCPaddingPolicy, paddingSizes: [NSNumber]?)
  convenience init(__transposeWithKernelSizes kernelSizes: [NSNumber], inputFeatureChannelCount: Int, outputFeatureChannelCount: Int, groupCount: Int, strides: [NSNumber], dilationRates: [NSNumber], paddingPolicy: __MLCPaddingPolicy, paddingSizes: [NSNumber]?)
  convenience init(depthwiseWithKernelWidth kernelWidth: Int, kernelHeight: Int, inputFeatureChannelCount: Int, channelMultiplier: Int)
  convenience init(__depthwiseWithKernelSizes kernelSizes: [NSNumber], inputFeatureChannelCount: Int, channelMultiplier: Int, strides: [NSNumber], paddingPolicy: __MLCPaddingPolicy, paddingSizes: [NSNumber]?)
  convenience init(__depthwiseWithKernelSizes kernelSizes: [NSNumber], inputFeatureChannelCount: Int, channelMultiplier: Int, strides: [NSNumber], dilationRates: [NSNumber], paddingPolicy: __MLCPaddingPolicy, paddingSizes: [NSNumber]?)
}

@available(macOS 11.0, iOS 14, tvOS 14, *)
extension MLCConvolutionDescriptor {
  @inlinable var kernelSizes: (height: Int, width: Int) { get }
  @inlinable var strides: (y: Int, x: Int) { get }
  @inlinable var dilationRates: (y: Int, x: Int) { get }
  @inlinable var paddingPolicy: MLCPaddingPolicy { get }
  @inlinable convenience init(type: MLCConvolutionType = .standard, kernelSizes: (height: Int, width: Int), inputFeatureChannelCount: Int, outputFeatureChannelCount: Int, groupCount: Int = 1, strides: (y: Int, x: Int) = (1, 1), dilationRates: (y: Int, x: Int) = (1, 1), paddingPolicy: MLCPaddingPolicy = .same)
}
