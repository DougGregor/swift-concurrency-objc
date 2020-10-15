
@available(tvOS 10, *)
class PHContentEditingInput : NSObject {
  @available(tvOS 10, *)
  var mediaType: PHAssetMediaType { get }
  @available(tvOS 10, *)
  var mediaSubtypes: PHAssetMediaSubtype { get }
  @available(tvOS 10, *)
  var creationDate: Date? { get }
  @available(tvOS 10, *)
  @NSCopying var location: CLLocation? { get }
  @available(tvOS 10, *)
  var uniformTypeIdentifier: String? { get }
  @available(tvOS 11, *)
  var playbackStyle: PHAsset.PlaybackStyle { get }
  @available(tvOS 10, *)
  var adjustmentData: PHAdjustmentData? { get }
  @available(tvOS 10, *)
  var fullSizeImageURL: URL? { get }
  @available(tvOS 10, *)
  var fullSizeImageOrientation: Int32 { get }
  @available(tvOS 10, *)
  var avAsset: AVAsset? { get }
  @available(tvOS 10, *)
  var audiovisualAsset: AVAsset? { get }
  @available(tvOS 10, *)
  var livePhoto: PHLivePhoto? { get }
}
