
@available(tvOS 10.0, *)
class INStartPhotoPlaybackIntent : INIntent {
  init(dateCreated: INDateComponentsRange?, locationCreated: CLPlacemark?, albumName: String?, searchTerms: [String]?, includedAttributes: INPhotoAttributeOptions = [], excludedAttributes: INPhotoAttributeOptions = [], peopleInPhoto: [INPerson]?)
  @NSCopying var dateCreated: INDateComponentsRange? { get }
  @NSCopying var locationCreated: CLPlacemark? { get }
  var albumName: String? { get }
  var searchTerms: [String]? { get }
  var searchTermsOperator: INConditionalOperator { get }
  var includedAttributes: INPhotoAttributeOptions { get }
  var excludedAttributes: INPhotoAttributeOptions { get }
  var peopleInPhoto: [INPerson]? { get }
  var peopleInPhotoOperator: INConditionalOperator { get }
}
@available(tvOS 10.0, *)
protocol INStartPhotoPlaybackIntentHandling : NSObjectProtocol {
  func handle(intent: INStartPhotoPlaybackIntent, completion: @escaping (INStartPhotoPlaybackIntentResponse) -> Void)
  func handle(intent: INStartPhotoPlaybackIntent) async -> INStartPhotoPlaybackIntentResponse
  optional func confirm(intent: INStartPhotoPlaybackIntent, completion: @escaping (INStartPhotoPlaybackIntentResponse) -> Void)
  optional func confirm(intent: INStartPhotoPlaybackIntent) async -> INStartPhotoPlaybackIntentResponse
  optional func resolveDateCreated(for intent: INStartPhotoPlaybackIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
  optional func resolveDateCreated(for intent: INStartPhotoPlaybackIntent) async -> INDateComponentsRangeResolutionResult
  optional func resolveLocationCreated(for intent: INStartPhotoPlaybackIntent, with completion: @escaping (INPlacemarkResolutionResult) -> Void)
  optional func resolveLocationCreated(for intent: INStartPhotoPlaybackIntent) async -> INPlacemarkResolutionResult
  optional func resolveAlbumName(for intent: INStartPhotoPlaybackIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  optional func resolveAlbumName(for intent: INStartPhotoPlaybackIntent) async -> INStringResolutionResult
  optional func resolvePeopleInPhoto(for intent: INStartPhotoPlaybackIntent, with completion: @escaping ([INPersonResolutionResult]) -> Void)
  optional func resolvePeopleInPhoto(for intent: INStartPhotoPlaybackIntent) async -> [INPersonResolutionResult]
}
