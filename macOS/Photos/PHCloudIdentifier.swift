
@available(macOS 10.13, *)
class PHCloudIdentifier : NSObject, NSSecureCoding {
  @available(macOS 10.13, *)
  class var notFound: PHCloudIdentifier { get }
  @available(macOS 10.13, *)
  var stringValue: String { get }
  @available(macOS 10.13, *)
  init(stringValue: String)
}
@available(macOS 10.13, *)
extension PHPhotoLibrary {
  @available(macOS 10.13, *)
  func localIdentifiers(for cloudIdentifiers: [PHCloudIdentifier]) -> [String]
  @available(macOS 10.13, *)
  func cloudIdentifiers(forLocalIdentifiers localIdentifiers: [String]) -> [PHCloudIdentifier]
}
@available(macOS 10.13, *)
let PHLocalIdentifierNotFound: String
