
@available(tvOS 14.0, *)
class MXDiagnostic : NSObject, NSSecureCoding {
  var metaData: MXMetaData { get }
  var applicationVersion: String { get }
  func jsonRepresentation() -> Data
  func dictionaryRepresentation() -> [AnyHashable : Any]
}
