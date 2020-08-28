
@available(macOS 10.11, *)
class PHContentEditingInput : NSObject {
  @available(macOS 10.11, *)
  var mediaType: PHAssetMediaType { get }
  @available(macOS 10.11, *)
  var mediaSubtypes: PHAssetMediaSubtype { get }
  @available(macOS 10.11, *)
  var creationDate: Date? { get }
  @available(macOS 10.11, *)
  @NSCopying var location: CLLocation? { get }
  @available(macOS 10.11, *)
  var uniformTypeIdentifier: String? { get }
  @available(macOS 10.13, *)
  var playbackStyle: PHAsset.PlaybackStyle { get }
  @available(macOS 10.11, *)
  var adjustmentData: PHAdjustmentData? { get }
  @available(macOS 10.11, *)
  var fullSizeImageURL: URL? { get }
  @available(macOS 10.11, *)
  var fullSizeImageOrientation: Int32 { get }
  @available(macOS 10.11, *)
  var audiovisualAsset: AVAsset? { get }
  @available(macOS 10.12, *)
  var livePhoto: PHLivePhoto? { get }
}
