
extension TKTokenDriver {
  @available(tvOS 14.0, *)
  class Configuration : NSObject {
    class var driverConfigurations: [TKTokenDriver.ClassID : TKTokenDriver.Configuration] { get }
    var classID: TKTokenDriver.ClassID { get }
    var tokenConfigurations: [TKToken.InstanceID : TKToken.Configuration] { get }
    func addTokenConfiguration(for instanceID: TKToken.InstanceID) -> TKToken.Configuration
    func removeTokenConfiguration(for instanceID: TKToken.InstanceID)
  }
}
extension TKToken {
  @available(tvOS 14.0, *)
  class Configuration : NSObject {
    var instanceID: TKToken.InstanceID { get }
    var configurationData: Data?
    var keychainItems: [TKTokenKeychainItem]
    func key(for objectID: TKToken.ObjectID) throws -> TKTokenKeychainKey
    func certificate(for objectID: TKToken.ObjectID) throws -> TKTokenKeychainCertificate
  }
}
