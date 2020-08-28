
@available(tvOS 10.1, *)
let AVKitMetadataIdentifierExternalContentIdentifier: String
@available(tvOS 10.1, *)
let AVKitMetadataIdentifierExternalUserProfileIdentifier: String
@available(tvOS 11.0, *)
let AVKitMetadataIdentifierServiceIdentifier: String
@available(tvOS 10.1, *)
let AVKitMetadataIdentifierPlaybackProgress: String
@available(tvOS 11.0, *)
let AVKitMetadataIdentifierExactStartDate: String
@available(tvOS 11.0, *)
let AVKitMetadataIdentifierApproximateStartDate: String
@available(tvOS 11.0, *)
let AVKitMetadataIdentifierExactEndDate: String
@available(tvOS 11.0, *)
let AVKitMetadataIdentifierApproximateEndDate: String
extension AVPlayerItem {
  var navigationMarkerGroups: [AVNavigationMarkersGroup]
  var externalMetadata: [AVMetadataItem]
  var interstitialTimeRanges: [AVInterstitialTimeRange]
}
extension AVPlayerItem {
  @available(tvOS 13.0, *)
  func requestPlaybackRestrictionsAuthorization(_ completion: @escaping (Bool, Error?) -> Void)
  @available(tvOS 13.0, *)
  func cancelPlaybackRestrictionsAuthorizationRequest()
}
extension AVPlayerItem {
}
