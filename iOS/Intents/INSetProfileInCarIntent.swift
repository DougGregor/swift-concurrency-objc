
@available(iOS 10.0, *)
class INSetProfileInCarIntent : INIntent {
  @available(iOS 12.0, *)
  init(__profileNumber profileNumber: NSNumber?, profileName: String?, defaultProfile: NSNumber?, carName: INSpeakableString?)
  @NSCopying var __profileNumber: NSNumber? { get }
  @available(iOS 10.2, *)
  var profileName: String? { get }
  @NSCopying var __defaultProfile: NSNumber? { get }
  @available(iOS 12.0, *)
  @NSCopying var carName: INSpeakableString? { get }
}

@available(macOS 10.15, iOS 10.0, *)
@available(macOS, unavailable)
@available(tvOS, unavailable)
@nonobjc extension INSetProfileInCarIntent {
  @available(iOS 12.0, *)
  convenience init(profileNumber: Int? = nil, profileName: String? = nil, isDefaultProfile: Bool? = nil, carName: INSpeakableString? = nil)
  @available(iOS, introduced: 11.0, obsoleted: 12.0)
  convenience init(profileNumber: Int? = nil, profileName: String? = nil, isDefaultProfile: Bool? = nil)
  @available(iOS, deprecated: 11.0, renamed: "init(profileNumber:profileName:isDefaultProfile:)")
  convenience init(defaultProfile: Int?)
  @available(iOS, deprecated: 11.0, renamed: "init(profileNumber:profileName:isDefaultProfile:)")
  convenience init(profileLabel: String?)
  @available(iOS, deprecated: 11.0, renamed: "init(profileNumber:profileName:isDefaultProfile:)")
  convenience init(profileLabel: String?, defaultProfile: Int?)
  @available(iOS, deprecated: 11.0, renamed: "init(profileNumber:profileName:isDefaultProfile:)")
  convenience init(profileLabel: String?, isDefaultProfile: Bool?)
  @available(iOS, deprecated: 11.0, renamed: "init(profileNumber:profileName:isDefaultProfile:)")
  convenience init(profileName: String?, defaultProfile: Int?)
  @available(iOS, deprecated: 11.0, renamed: "init(profileNumber:profileName:isDefaultProfile:)")
  convenience init(profileNumber: Int?, defaultProfile: Int?)
  @available(iOS, deprecated: 11.0, renamed: "init(profileNumber:profileName:isDefaultProfile:)")
  convenience init(profileNumber: Int?, profileLabel: String?)
  @available(iOS, deprecated: 11.0, renamed: "init(profileNumber:profileName:isDefaultProfile:)")
  convenience init(profileNumber: Int?, profileLabel: String?, defaultProfile: Int?)
  @available(iOS, deprecated: 11.0, renamed: "init(profileNumber:profileName:isDefaultProfile:)")
  convenience init(profileNumber: Int?, profileLabel: String?, isDefaultProfile: Bool?)
  @available(iOS, deprecated: 11.0, renamed: "init(profileNumber:profileName:isDefaultProfile:)")
  convenience init(profileNumber: Int?, profileName: String?, defaultProfile: Int?)
  @available(iOS 10.0, *)
  var isDefaultProfile: Bool? { get }
  @available(iOS 10.0, *)
  final var profileNumber: Int? { get }
}
@available(iOS 10.0, *)
protocol INSetProfileInCarIntentHandling : NSObjectProtocol {
  func handle(intent: INSetProfileInCarIntent, completion: @escaping (INSetProfileInCarIntentResponse) -> Void)
  func handle(intent: INSetProfileInCarIntent) async -> INSetProfileInCarIntentResponse
  optional func confirm(intent: INSetProfileInCarIntent, completion: @escaping (INSetProfileInCarIntentResponse) -> Void)
  optional func confirm(intent: INSetProfileInCarIntent) async -> INSetProfileInCarIntentResponse
  optional func resolveProfileNumber(for intent: INSetProfileInCarIntent, with completion: @escaping (INIntegerResolutionResult) -> Void)
  @available(iOS 10.2, *)
  optional func resolveProfileName(for intent: INSetProfileInCarIntent, with completion: @escaping (INStringResolutionResult) -> Void)
  @available(iOS 12.0, *)
  optional func resolveCarName(for intent: INSetProfileInCarIntent, with completion: @escaping (INSpeakableStringResolutionResult) -> Void)
  @available(iOS, introduced: 10.0, deprecated: 11.0, message: "The property doesn't need to be resolved")
  optional func resolveDefaultProfile(forSetProfileInCar intent: INSetProfileInCarIntent, with completion: @escaping (INBooleanResolutionResult) -> Void)
}
