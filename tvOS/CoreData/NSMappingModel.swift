
@available(tvOS 3.0, *)
class NSMappingModel : NSObject {
  /*not inherited*/ init?(from bundles: [Bundle]?, forSourceModel sourceModel: NSManagedObjectModel?, destinationModel: NSManagedObjectModel?)
  @available(tvOS 3.0, *)
  class func inferredMappingModel(forSourceModel sourceModel: NSManagedObjectModel, destinationModel: NSManagedObjectModel) throws -> NSMappingModel
  init?(contentsOf url: URL?)
  var entityMappings: [NSEntityMapping]!
  var entityMappingsByName: [String : NSEntityMapping] { get }
}
