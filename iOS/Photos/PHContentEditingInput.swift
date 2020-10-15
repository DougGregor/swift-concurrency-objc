
@available(iOS 8, *)
class PHContentEditingInput : NSObject {
  @available(iOS 8, *)
  var mediaType: PHAssetMediaType { get }
  @available(iOS 8, *)
  var mediaSubtypes: PHAssetMediaSubtype { get }
  @available(iOS 8, *)
  var creationDate: Date? { get }
  @available(iOS 8, *)
  @NSCopying var location: CLLocation? { get }
  @available(iOS 8, *)
  var uniformTypeIdentifier: String? { get }
  @available(iOS 11, *)
  var playbackStyle: PHAsset.PlaybackStyle { get }
  @available(iOS 8, *)
  var adjustmentData: PHAdjustmentData? { get }
  @available(iOS 8, *)
  var fullSizeImageURL: URL? { get }
  @available(iOS 8, *)
  var fullSizeImageOrientation: Int32 { get }
  @available(iOS, introduced: 8, deprecated: 9)
  var avAsset: AVAsset? { get }
  @available(iOS 9, *)
  var audiovisualAsset: AVAsset? { get }
  @available(iOS 10, *)
  var livePhoto: PHLivePhoto? { get }
}
