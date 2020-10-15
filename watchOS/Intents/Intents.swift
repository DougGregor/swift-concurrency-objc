
var IntentsVersionNumber: Double
@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
enum INMediaDestination : ReferenceConvertible {
  case library
  case playlist(String)
}

@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaDestination {
  var playlistName: String? { get }
}

@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaDestination : CustomStringConvertible {
}

@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaDestination : CustomDebugStringConvertible {
}

@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaDestination : Hashable {
}

@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaDestination : Equatable {
}

@available(macOS 10.15.4, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaDestination : _ObjectiveCBridgeable {
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
enum INShortcut : ReferenceConvertible {
  case intent(INIntent)
  case userActivity(NSUserActivity)
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut {
  init?(intent: INIntent)
  init(userActivity: NSUserActivity)
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut {
  var intent: INIntent? { get }
  var userActivity: NSUserActivity? { get }
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut : CustomStringConvertible {
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut : CustomDebugStringConvertible {
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut : Hashable {
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut : Equatable {
}

@available(iOS 12.0, macOS 11.0, watchOS 5.0, *)
@available(tvOS, unavailable)
extension INShortcut : _ObjectiveCBridgeable {
}

protocol _INIntentSetImageKeyPath {
}

extension _INIntentSetImageKeyPath {
  @available(iOS 12.0, watchOS 5.0, *)
  func setImage<Value>(_ image: INImage?, forParameterNamed parameterName: KeyPath<Self, Value>)
  @available(iOS 12.0, watchOS 5.0, *)
  func image<Value>(forParameterNamed parameterName: KeyPath<Self, Value>) -> INImage?
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaSearch {
  @nonobjc convenience init(mediaType: INMediaItemType = .unknown, sortOrder: INMediaSortOrder = .unknown, mediaName: String? = nil, artistName: String? = nil, albumName: String? = nil, genreNames: [String]? = nil, moodNames: [String]? = nil, releaseDate: INDateComponentsRange? = nil, reference: INMediaReference = .unknown, mediaIdentifier: String? = nil)
}

@available(macOS 10.15, iOS 10.3, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INSetCarLockStatusIntent {
  @nonobjc convenience init(locked: Bool?, carName: INSpeakableString?)
  @nonobjc final var locked: Bool? { get }
}

@available(macOS 10.15, iOS 10.0, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INRequestRideIntent {
  @nonobjc convenience init(pickupLocation: CLPlacemark? = nil, dropOffLocation: CLPlacemark? = nil, rideOptionName: INSpeakableString? = nil, partySize: Int? = nil, paymentMethod: INPaymentMethod? = nil, scheduledPickupTime: INDateComponentsRange? = nil)
  @nonobjc final var partySize: Int? { get }
}

@available(macOS 10.15, iOS 11.0, watchOS 4.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INNotebookItemTypeResolutionResult {
  @nonobjc static func disambiguation(with notebookItemTypesToDisambiguate: [INNotebookItemType]) -> Self
}

@available(macOS 10.15, iOS 10.0, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INRideOption {
  @available(swift 4.0)
  @available(iOS 10.0, watchOS 3.2, *)
  @nonobjc var usesMeteredFare: Bool?
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INIntegerResolutionResult {
  @nonobjc static func confirmationRequired(with valueToConfirm: Int?) -> Self
}

@available(macOS 10.15, iOS 12.0, watchOS 5.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INPlayMediaIntent {
  @available(iOS, introduced: 12.0, obsoleted: 13.0)
  @available(watchOS, introduced: 5.0, obsoleted: 6.0)
  @available(tvOS, unavailable)
  @nonobjc convenience init(mediaItems: [INMediaItem]? = nil, mediaContainer: INMediaItem? = nil, playShuffled: Bool? = nil, playbackRepeatMode: INPlaybackRepeatMode = .unknown, resumePlayback: Bool? = nil)
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
  @nonobjc convenience init(mediaItems: [INMediaItem]? = nil, mediaContainer: INMediaItem? = nil, playShuffled: Bool? = nil, playbackRepeatMode: INPlaybackRepeatMode = .unknown, resumePlayback: Bool? = nil, playbackQueueLocation: INPlaybackQueueLocation = .unknown, playbackSpeed: Double? = nil, mediaSearch: INMediaSearch? = nil)
  @nonobjc final var playShuffled: Bool? { get }
  @nonobjc final var resumePlayback: Bool? { get }
  @available(iOS 13.0, watchOS 6.0, *)
  @nonobjc final var playbackSpeed: Double? { get }
}

@available(macOS 10.15, iOS 10.0, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INSearchCallHistoryIntent {
  @available(iOS 11.0, watchOS 4.0, *)
  @nonobjc convenience init(dateCreated: INDateComponentsRange? = nil, recipient: INPerson? = nil, callCapabilities: INCallCapabilityOptions, callTypes: INCallRecordTypeOptions, unseen: Bool? = nil)
  @available(iOS 11.0, watchOS 4.0, *)
  @nonobjc final var unseen: Bool? { get }
}

extension NSString {
  @available(iOS 12.0, macOS 10.14, watchOS 5.0, tvOS 14.0, *)
  class func deferredLocalizedIntentsString(with format: String, _ args: CVarArg...) -> NSString
  @available(iOS 12.0, macOS 10.14, watchOS 5.0, *)
  class func deferredLocalizedIntentsString(with format: String, table: String, _ args: CVarArg...) -> NSString
  @available(iOS 12.0, macOS 10.14, watchOS 5.0, *)
  class func deferredLocalizedIntentsString(with format: String, table: String, arguments: CVaListPointer) -> NSString
}

@available(macOS 10.15, iOS 11.0, watchOS 4.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INCallRecord {
  @available(iOS 13.0, watchOS 6.0, *)
  @nonobjc convenience init(identifier: String, dateCreated: Date? = nil, caller: INPerson? = nil, callRecordType: INCallRecordType = .unknown, callCapability: INCallCapability = .unknown, callDuration: Double? = nil, unseen: Bool? = nil, numberOfCalls: Int? = nil)
  @available(iOS, obsoleted: 13.0)
  @available(watchOS, obsoleted: 6.0)
  @nonobjc convenience init(identifier: String, dateCreated: Date? = nil, caller: INPerson? = nil, callRecordType: INCallRecordType, callCapability: INCallCapability, callDuration: Double? = nil, unseen: Bool? = nil)
  @nonobjc final var callDuration: Double? { get }
  @nonobjc final var unseen: Bool? { get }
  @available(iOS 13.0, watchOS 6.0, *)
  @nonobjc final var numberOfCalls: Int? { get }
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INDoubleResolutionResult {
  @nonobjc static func confirmationRequired(with valueToConfirm: Double?) -> Self
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 14.0, *)
@available(macOS, unavailable)
extension INMediaUserContext {
  @available(iOS 13.0, watchOS 6.0, tvOS 14.0, *)
  @nonobjc final var numberOfLibraryItems: Int?
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INIntent : _INIntentSetImageKeyPath {
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INDeleteTasksIntent {
  @nonobjc convenience init(taskList: INTaskList? = nil, tasks: [INTask]? = nil, all: Bool? = nil)
  @nonobjc final var all: Bool? { get }
}

@available(macOS 10.15, iOS 10.3, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INGetCarPowerLevelStatusIntentResponse {
  @nonobjc final var fuelPercentRemaining: Float?
  @nonobjc final var chargePercentRemaining: Float?
  @available(iOS 12.0, watchOS 5.0, *)
  @nonobjc final var charging: Bool?
  @available(iOS 12.0, watchOS 5.0, *)
  @nonobjc final var minutesToFull: Int?
}

@available(macOS 10.15, iOS 10.0, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INSearchForPhotosIntentResponse {
  @nonobjc final var searchResultsCount: Int?
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INSnoozeTasksIntent {
  @nonobjc convenience init(tasks: [INTask]? = nil, nextTriggerTime: INDateComponentsRange? = nil, all: Bool? = nil)
  @nonobjc final var all: Bool? { get }
}

@available(macOS 10.15, iOS 10.0, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INStartWorkoutIntent {
  @nonobjc convenience init(workoutName: INSpeakableString? = nil, goalValue: Double? = nil, workoutGoalUnitType: INWorkoutGoalUnitType = .unknown, workoutLocationType: INWorkoutLocationType = .unknown, isOpenEnded: Bool? = nil)
  @nonobjc final var goalValue: Double? { get }
  @nonobjc final var isOpenEnded: Bool? { get }
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INRestaurantReservation {
  @nonobjc convenience init(itemReference: INSpeakableString, reservationNumber: String? = nil, bookingTime: Date? = nil, reservationStatus: INReservationStatus = .unknown, reservationHolderName: String? = nil, actions: [INReservationAction]? = nil, reservationDuration: INDateComponentsRange, partySize: Int? = nil, restaurantLocation: CLPlacemark)
  @available(macOS 11.0, iOS 14.0, watchOS 7.0, *)
  @nonobjc convenience init(itemReference: INSpeakableString, reservationNumber: String? = nil, bookingTime: Date? = nil, reservationStatus: INReservationStatus = .unknown, reservationHolderName: String? = nil, actions: [INReservationAction]? = nil, url: URL? = nil, reservationDuration: INDateComponentsRange, partySize: Int? = nil, restaurantLocation: CLPlacemark)
  @nonobjc final var partySize: Int? { get }
}

@available(iOS 10.0, macOS 11.0, watchOS 3.2, tvOS 14.0, *)
extension INBooleanResolutionResult {
  @nonobjc static func confirmationRequired(with valueToConfirm: Bool?) -> Self
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INLodgingReservation {
  @nonobjc convenience init(itemReference: INSpeakableString, reservationNumber: String? = nil, bookingTime: Date? = nil, reservationStatus: INReservationStatus = .unknown, reservationHolderName: String? = nil, actions: [INReservationAction]? = nil, lodgingBusinessLocation: CLPlacemark, reservationDuration: INDateComponentsRange, numberOfAdults: Int? = nil, numberOfChildren: Int? = nil)
  @available(macOS 11.0, iOS 14.0, watchOS 7.0, *)
  @nonobjc convenience init(itemReference: INSpeakableString, reservationNumber: String? = nil, bookingTime: Date? = nil, reservationStatus: INReservationStatus = .unknown, reservationHolderName: String? = nil, actions: [INReservationAction]? = nil, url: URL? = nil, lodgingBusinessLocation: CLPlacemark, reservationDuration: INDateComponentsRange, numberOfAdults: Int? = nil, numberOfChildren: Int? = nil)
  @nonobjc final var numberOfAdults: Int? { get }
  @nonobjc final var numberOfChildren: Int? { get }
}

@available(macOS 10.15, iOS 10.3, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INGetCarLockStatusIntentResponse {
  @nonobjc final var locked: Bool?
}

@available(macOS 10.15, iOS 10.0, watchOS 3.2, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
extension INStartPhotoPlaybackIntentResponse {
  @nonobjc final var searchResultsCount: Int?
}

