
@available(macOS 10.7, *)
class AVVideoComposition : NSObject, NSCopying, NSMutableCopying {
  @available(macOS 10.9, *)
  /*not inherited*/ init(propertiesOf asset: AVAsset)
  @available(macOS 10.9, *)
  var customVideoCompositorClass: AVVideoCompositing.Type? { get }
  var frameDuration: CMTime { get }
  @available(macOS 10.13, *)
  var sourceTrackIDForFrameTiming: CMPersistentTrackID { get }
  var renderSize: CGSize { get }
  @available(macOS 10.14, *)
  var renderScale: Float { get }
  var instructions: [AVVideoCompositionInstructionProtocol] { get }
  var animationTool: AVVideoCompositionCoreAnimationTool? { get }
}
extension AVVideoComposition {
  @available(macOS 10.12, *)
  var colorPrimaries: String? { get }
  @available(macOS 10.12, *)
  var colorYCbCrMatrix: String? { get }
  @available(macOS 10.12, *)
  var colorTransferFunction: String? { get }
}
extension AVVideoComposition {
  @available(macOS 10.11, *)
  /*not inherited*/ init(asset: AVAsset, applyingCIFiltersWithHandler applier: @escaping (AVAsynchronousCIImageFilteringRequest) -> Void)
}
@available(macOS 10.7, *)
class AVMutableVideoComposition : AVVideoComposition {
  @available(macOS 10.15, *)
  /*not inherited*/ init(propertiesOf asset: AVAsset, prototypeInstruction: AVVideoCompositionInstruction)
}
extension AVMutableVideoComposition {
}
extension AVMutableVideoComposition {
}
@available(macOS 10.7, *)
class AVVideoCompositionInstruction : NSObject, NSSecureCoding, NSCopying, NSMutableCopying, AVVideoCompositionInstructionProtocol {
  var backgroundColor: CGColor? { get }
  var layerInstructions: [AVVideoCompositionLayerInstruction] { get }
}
@available(macOS 10.7, *)
class AVMutableVideoCompositionInstruction : AVVideoCompositionInstruction {
}
@available(macOS 10.7, *)
class AVVideoCompositionLayerInstruction : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  func getTransformRamp(for time: CMTime, start startTransform: UnsafeMutablePointer<CGAffineTransform>?, end endTransform: UnsafeMutablePointer<CGAffineTransform>?, timeRange: UnsafeMutablePointer<CMTimeRange>?) -> Bool
  func getOpacityRamp(for time: CMTime, startOpacity: UnsafeMutablePointer<Float>?, endOpacity: UnsafeMutablePointer<Float>?, timeRange: UnsafeMutablePointer<CMTimeRange>?) -> Bool
  @available(macOS 10.9, *)
  func getCropRectangleRamp(for time: CMTime, startCropRectangle: UnsafeMutablePointer<CGRect>?, endCropRectangle: UnsafeMutablePointer<CGRect>?, timeRange: UnsafeMutablePointer<CMTimeRange>?) -> Bool
}
@available(macOS 10.7, *)
class AVMutableVideoCompositionLayerInstruction : AVVideoCompositionLayerInstruction {
  convenience init(assetTrack track: AVAssetTrack)
  func setTransformRamp(fromStart startTransform: CGAffineTransform, toEnd endTransform: CGAffineTransform, timeRange: CMTimeRange)
  func setTransform(_ transform: CGAffineTransform, at time: CMTime)
  func setOpacityRamp(fromStartOpacity startOpacity: Float, toEndOpacity endOpacity: Float, timeRange: CMTimeRange)
  func setOpacity(_ opacity: Float, at time: CMTime)
  @available(macOS 10.9, *)
  func setCropRectangleRamp(fromStartCropRectangle startCropRectangle: CGRect, toEndCropRectangle endCropRectangle: CGRect, timeRange: CMTimeRange)
  @available(macOS 10.9, *)
  func setCropRectangle(_ cropRectangle: CGRect, at time: CMTime)
}
@available(macOS 10.7, *)
class AVVideoCompositionCoreAnimationTool : NSObject {
  convenience init(additionalLayer layer: CALayer, asTrackID trackID: CMPersistentTrackID)
  convenience init(postProcessingAsVideoLayer videoLayer: CALayer, in animationLayer: CALayer)
  @available(macOS 10.9, *)
  convenience init(postProcessingAsVideoLayers videoLayers: [CALayer], in animationLayer: CALayer)
}
extension AVAsset {
  func unusedTrackID() -> CMPersistentTrackID
}
extension AVVideoComposition {
  @available(macOS 10.8, *)
  func isValid(for asset: AVAsset?, timeRange: CMTimeRange, validationDelegate: AVVideoCompositionValidationHandling?) -> Bool
}
protocol AVVideoCompositionValidationHandling : NSObjectProtocol {
  @available(macOS 10.8, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidValueForKey key: String) -> Bool
  @available(macOS 10.8, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingEmptyTimeRange timeRange: CMTimeRange) -> Bool
  @available(macOS 10.8, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTimeRangeIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol) -> Bool
  @available(macOS 10.8, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTrackIDIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol, layerInstruction: AVVideoCompositionLayerInstruction, asset: AVAsset) -> Bool
}
