
class SFAuthorization : NSObject, NSSecureCoding {
  @available(macOS 10.10, *)
  class func authorization() -> Any!
  @available(macOS 10.10, *)
  func authorizationRef() -> AuthorizationRef!
  @available(macOS 10.10, *)
  class func authorization(with flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>!, environment: UnsafePointer<AuthorizationEnvironment>!) -> Any!
  @available(macOS 10.10, *)
  init!(flags: AuthorizationFlags, rights: UnsafePointer<AuthorizationRights>!, environment: UnsafePointer<AuthorizationEnvironment>!)
  @available(macOS 10.10, *)
  func invalidateCredentials()
  @available(macOS 10.10, *)
  func obtain(withRight rightName: AuthorizationString!, flags: AuthorizationFlags) throws
  @available(macOS 10.10, *)
  func obtain(withRights rights: UnsafePointer<AuthorizationRights>!, flags: AuthorizationFlags, environment: UnsafePointer<AuthorizationEnvironment>!, authorizedRights: UnsafeMutablePointer<UnsafeMutablePointer<AuthorizationRights>?>!) throws
}
extension SFAuthorization {
}
