
@available(iOS 4.0, *)
class AVVideoComposition : NSObject, NSCopying, NSMutableCopying {
  @available(iOS 6.0, *)
  /*not inherited*/ init(propertiesOf asset: AVAsset)
  @available(iOS 7.0, *)
  var customVideoCompositorClass: AVVideoCompositing.Type? { get }
  var frameDuration: CMTime { get }
  @available(iOS 11.0, *)
  var sourceTrackIDForFrameTiming: CMPersistentTrackID { get }
  var renderSize: CGSize { get }
  @available(iOS 4.0, *)
  var renderScale: Float { get }
  var instructions: [AVVideoCompositionInstructionProtocol] { get }
  var animationTool: AVVideoCompositionCoreAnimationTool? { get }
}
extension AVVideoComposition {
  @available(iOS 10.0, *)
  var colorPrimaries: String? { get }
  @available(iOS 10.0, *)
  var colorYCbCrMatrix: String? { get }
  @available(iOS 10.0, *)
  var colorTransferFunction: String? { get }
}
extension AVVideoComposition {
  @available(iOS 9.0, *)
  /*not inherited*/ init(asset: AVAsset, applyingCIFiltersWithHandler applier: @escaping (AVAsynchronousCIImageFilteringRequest) -> Void)
}
@available(iOS 4.0, *)
class AVMutableVideoComposition : AVVideoComposition {
  @available(iOS 13.0, *)
  /*not inherited*/ init(propertiesOf asset: AVAsset, prototypeInstruction: AVVideoCompositionInstruction)
}
extension AVMutableVideoComposition {
}
extension AVMutableVideoComposition {
}
@available(iOS 4.0, *)
class AVVideoCompositionInstruction : NSObject, NSSecureCoding, NSCopying, NSMutableCopying, AVVideoCompositionInstructionProtocol {
  var backgroundColor: CGColor? { get }
  var layerInstructions: [AVVideoCompositionLayerInstruction] { get }
}
@available(iOS 4.0, *)
class AVMutableVideoCompositionInstruction : AVVideoCompositionInstruction {
}
@available(iOS 4.0, *)
class AVVideoCompositionLayerInstruction : NSObject, NSSecureCoding, NSCopying, NSMutableCopying {
  var trackID: CMPersistentTrackID { get }
  func getTransformRamp(for time: CMTime, start startTransform: UnsafeMutablePointer<CGAffineTransform>?, end endTransform: UnsafeMutablePointer<CGAffineTransform>?, timeRange: UnsafeMutablePointer<CMTimeRange>?) -> Bool
  func getOpacityRamp(for time: CMTime, startOpacity: UnsafeMutablePointer<Float>?, endOpacity: UnsafeMutablePointer<Float>?, timeRange: UnsafeMutablePointer<CMTimeRange>?) -> Bool
  @available(iOS 7.0, *)
  func getCropRectangleRamp(for time: CMTime, startCropRectangle: UnsafeMutablePointer<CGRect>?, endCropRectangle: UnsafeMutablePointer<CGRect>?, timeRange: UnsafeMutablePointer<CMTimeRange>?) -> Bool
}
@available(iOS 4.0, *)
class AVMutableVideoCompositionLayerInstruction : AVVideoCompositionLayerInstruction {
  convenience init(assetTrack track: AVAssetTrack)
  func setTransformRamp(fromStart startTransform: CGAffineTransform, toEnd endTransform: CGAffineTransform, timeRange: CMTimeRange)
  func setTransform(_ transform: CGAffineTransform, at time: CMTime)
  func setOpacityRamp(fromStartOpacity startOpacity: Float, toEndOpacity endOpacity: Float, timeRange: CMTimeRange)
  func setOpacity(_ opacity: Float, at time: CMTime)
  @available(iOS 7.0, *)
  func setCropRectangleRamp(fromStartCropRectangle startCropRectangle: CGRect, toEndCropRectangle endCropRectangle: CGRect, timeRange: CMTimeRange)
  @available(iOS 7.0, *)
  func setCropRectangle(_ cropRectangle: CGRect, at time: CMTime)
}
@available(iOS 4.0, *)
class AVVideoCompositionCoreAnimationTool : NSObject {
  convenience init(additionalLayer layer: CALayer, asTrackID trackID: CMPersistentTrackID)
  convenience init(postProcessingAsVideoLayer videoLayer: CALayer, in animationLayer: CALayer)
  @available(iOS 7.0, *)
  convenience init(postProcessingAsVideoLayers videoLayers: [CALayer], in animationLayer: CALayer)
}
extension AVAsset {
  func unusedTrackID() -> CMPersistentTrackID
}
extension AVVideoComposition {
  @available(iOS 5.0, *)
  func isValid(for asset: AVAsset?, timeRange: CMTimeRange, validationDelegate: AVVideoCompositionValidationHandling?) -> Bool
}
protocol AVVideoCompositionValidationHandling : NSObjectProtocol {
  @available(iOS 5.0, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidValueForKey key: String) -> Bool
  @available(iOS 5.0, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingEmptyTimeRange timeRange: CMTimeRange) -> Bool
  @available(iOS 5.0, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTimeRangeIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol) -> Bool
  @available(iOS 5.0, *)
  optional func videoComposition(_ videoComposition: AVVideoComposition, shouldContinueValidatingAfterFindingInvalidTrackIDIn videoCompositionInstruction: AVVideoCompositionInstructionProtocol, layerInstruction: AVVideoCompositionLayerInstruction, asset: AVAsset) -> Bool
}
