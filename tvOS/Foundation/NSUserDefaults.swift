
class UserDefaults : NSObject {
  class var standard: UserDefaults { get }
  class func resetStandardUserDefaults()
  @available(tvOS 9.0, *)
  init?(suiteName suitename: String?)
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Use -init instead")
  convenience init?(user username: String)
  func object(forKey defaultName: String) -> Any?
  func set(_ value: Any?, forKey defaultName: String)
  func removeObject(forKey defaultName: String)
  func string(forKey defaultName: String) -> String?
  func array(forKey defaultName: String) -> [Any]?
  func dictionary(forKey defaultName: String) -> [String : Any]?
  func data(forKey defaultName: String) -> Data?
  func stringArray(forKey defaultName: String) -> [String]?
  func integer(forKey defaultName: String) -> Int
  func float(forKey defaultName: String) -> Float
  func double(forKey defaultName: String) -> Double
  func bool(forKey defaultName: String) -> Bool
  @available(tvOS 9.0, *)
  func url(forKey defaultName: String) -> URL?
  func set(_ value: Int, forKey defaultName: String)
  func set(_ value: Float, forKey defaultName: String)
  func set(_ value: Double, forKey defaultName: String)
  func set(_ value: Bool, forKey defaultName: String)
  @available(tvOS 9.0, *)
  func set(_ url: URL?, forKey defaultName: String)
  func register(defaults registrationDictionary: [String : Any])
  func addSuite(named suiteName: String)
  func removeSuite(named suiteName: String)
  func dictionaryRepresentation() -> [String : Any]
  var volatileDomainNames: [String] { get }
  func volatileDomain(forName domainName: String) -> [String : Any]
  func setVolatileDomain(_ domain: [String : Any], forName domainName: String)
  func removeVolatileDomain(forName domainName: String)
  @available(tvOS, introduced: 9.0, deprecated: 9.0, message: "Not recommended")
  func persistentDomainNames() -> [Any]
  func persistentDomain(forName domainName: String) -> [String : Any]?
  func setPersistentDomain(_ domain: [String : Any], forName domainName: String)
  func removePersistentDomain(forName domainName: String)
  func synchronize() -> Bool
  func objectIsForced(forKey key: String) -> Bool
  func objectIsForced(forKey key: String, inDomain domain: String) -> Bool
}
extension UserDefaults {
  @available(tvOS 9.0, *)
  class let sizeLimitExceededNotification: NSNotification.Name
  @available(tvOS 9.0, *)
  class let noCloudAccountNotification: NSNotification.Name
  @available(tvOS 9.0, *)
  class let didChangeCloudAccountsNotification: NSNotification.Name
  @available(tvOS 9.0, *)
  class let completedInitialCloudSyncNotification: NSNotification.Name
  class let didChangeNotification: NSNotification.Name
  class let globalDomain: String
  class let argumentDomain: String
  class let registrationDomain: String
}
