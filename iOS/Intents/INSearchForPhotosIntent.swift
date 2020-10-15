
@available(iOS 10.0, *)
class INSearchForPhotosIntent : INIntent {
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
@available(iOS 10.0, *)
protocol INSearchForPhotosIntentHandling : NSObjectProtocol {
  func handle(intent: INSearchForPhotosIntent, completion: @escaping (INSearchForPhotosIntentResponse) -> Void)
  optional func confirm(intent: INSearchForPhotosIntent, completion: @escaping (INSearchForPhotosIntentResponse) -> Void)
  optional func resolveDateCreated(for intent: INSearchForPhotosIntent, with completion: @escaping (INDateComponentsRangeResolutionResult) -> Void)
  optional func resolveLocationCreated(for intent: INSearchForPhotosIntent, with completion: @escaping (INPlacemarkResolutionResult) -> Void)
  optional func resolveAlbumName(for intent: INSearchForPhotosIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  @available(iOS 11.0, *)
  optional func resolveSearchTerms(for intent: INSearchForPhotosIntent, with completion: @escaping ([INStringResolutionResult]) -> Void)
  optional func resolvePeopleInPhoto(for intent: INSearchForPhotosIntent, with completion: @escaping ([INPersonResolutionResult]) -> Void)
}
