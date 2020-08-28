
@available(tvOS 13, *)
class PHCloudIdentifier : NSObject, NSSecureCoding {
  @available(tvOS 13, *)
  class var notFound: PHCloudIdentifier { get }
  @available(tvOS 13, *)
  var stringValue: String { get }
  @available(tvOS 13, *)
  init(stringValue: String)
}
@available(tvOS 13, *)
extension PHPhotoLibrary {
  @available(tvOS 13, *)
  func localIdentifiers(for cloudIdentifiers: [PHCloudIdentifier]) -> [String]
  @available(tvOS 13, *)
  func cloudIdentifiers(forLocalIdentifiers localIdentifiers: [String]) -> [PHCloudIdentifier]
}
@available(tvOS 13, *)
let PHLocalIdentifierNotFound: String
