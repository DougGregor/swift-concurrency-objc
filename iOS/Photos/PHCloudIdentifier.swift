
@available(iOS 13, *)
class PHCloudIdentifier : NSObject, NSSecureCoding {
  @available(iOS 13, *)
  class var notFound: PHCloudIdentifier { get }
  @available(iOS 13, *)
  var stringValue: String { get }
  @available(iOS 13, *)
  init(stringValue: String)
}
@available(iOS 13, *)
extension PHPhotoLibrary {
  @available(iOS 13, *)
  func localIdentifiers(for cloudIdentifiers: [PHCloudIdentifier]) -> [String]
  @available(iOS 13, *)
  func cloudIdentifiers(forLocalIdentifiers localIdentifiers: [String]) -> [PHCloudIdentifier]
}
@available(iOS 13, *)
let PHLocalIdentifierNotFound: String
