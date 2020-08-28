
@available(watchOS 3.2, *)
class INPreferences : NSObject {
  @available(watchOS 6.0, *)
  class func siriAuthorizationStatus() -> INSiriAuthorizationStatus
  @available(watchOS 6.0, *)
  class func requestSiriAuthorization(_ handler: @escaping (INSiriAuthorizationStatus) -> Void)
  class func siriLanguageCode() -> String
}
