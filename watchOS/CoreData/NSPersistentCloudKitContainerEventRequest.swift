
@available(watchOS 7.0, *)
class NSPersistentCloudKitContainerEventRequest : NSPersistentStoreRequest {
  var resultType: NSPersistentCloudKitContainerEventResult.ResultType
  class func fetchEvents(after date: Date) -> Self
  class func fetchEvents(after event: NSPersistentCloudKitContainer.Event?) -> Self
  class func fetchEvents(matchingFetch fetchRequest: NSFetchRequest<NSFetchRequestResult>) -> Self
  class func fetchForEvents() -> NSFetchRequest<NSFetchRequestResult>
}
