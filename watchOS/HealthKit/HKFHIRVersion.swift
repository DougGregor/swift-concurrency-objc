
@available(watchOS 7.0, *)
class HKFHIRVersion : NSObject, NSCopying, NSSecureCoding {
  var majorVersion: Int { get }
  var minorVersion: Int { get }
  var patchVersion: Int { get }
  var fhirRelease: HKFHIRRelease { get }
  var stringRepresentation: String { get }
  convenience init(fromVersionString versionString: String) throws
  class func primaryDSTU2() -> Self
  class func primaryR4() -> Self
}
