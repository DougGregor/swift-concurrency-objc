
@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension NSManagedObject : ObservableObject {
}

extension CocoaError.Code {
  static var managedObjectValidation: CocoaError.Code { get }
  static var validationMultipleErrors: CocoaError.Code { get }
  static var validationMissingMandatoryProperty: CocoaError.Code { get }
  static var validationRelationshipLacksMinimumCount: CocoaError.Code { get }
  static var validationRelationshipExceedsMaximumCount: CocoaError.Code { get }
  static var validationRelationshipDeniedDelete: CocoaError.Code { get }
  static var validationNumberTooLarge: CocoaError.Code { get }
  static var validationNumberTooSmall: CocoaError.Code { get }
  static var validationDateTooLate: CocoaError.Code { get }
  static var validationDateTooSoon: CocoaError.Code { get }
  static var validationInvalidDate: CocoaError.Code { get }
  static var validationStringTooLong: CocoaError.Code { get }
  static var validationStringTooShort: CocoaError.Code { get }
  static var validationStringPatternMatching: CocoaError.Code { get }
  static var managedObjectContextLocking: CocoaError.Code { get }
  static var persistentStoreCoordinatorLocking: CocoaError.Code { get }
  static var managedObjectReferentialIntegrity: CocoaError.Code { get }
  static var managedObjectExternalRelationship: CocoaError.Code { get }
  static var managedObjectMerge: CocoaError.Code { get }
  static var managedObjectConstraintMerge: CocoaError.Code { get }
  static var persistentStoreInvalidType: CocoaError.Code { get }
  static var persistentStoreTypeMismatch: CocoaError.Code { get }
  static var persistentStoreIncompatibleSchema: CocoaError.Code { get }
  static var persistentStoreSave: CocoaError.Code { get }
  static var persistentStoreIncompleteSave: CocoaError.Code { get }
  static var persistentStoreSaveConflicts: CocoaError.Code { get }
  static var coreData: CocoaError.Code { get }
  static var persistentStoreOperation: CocoaError.Code { get }
  static var persistentStoreOpen: CocoaError.Code { get }
  static var persistentStoreTimeout: CocoaError.Code { get }
  static var persistentStoreUnsupportedRequestType: CocoaError.Code { get }
  static var persistentStoreIncompatibleVersionHash: CocoaError.Code { get }
  static var migration: CocoaError.Code { get }
  static var migrationCancelled: CocoaError.Code { get }
  static var migrationMissingSourceModel: CocoaError.Code { get }
  static var migrationMissingMappingModel: CocoaError.Code { get }
  static var migrationManagerSourceStore: CocoaError.Code { get }
  static var migrationManagerDestinationStore: CocoaError.Code { get }
  static var entityMigrationPolicy: CocoaError.Code { get }
  static var sqlite: CocoaError.Code { get }
  static var inferredMappingModel: CocoaError.Code { get }
  static var externalRecordImport: CocoaError.Code { get }
}

extension CocoaError.Code {
  @available(*, deprecated, renamed: "managedObjectValidation")
  static var managedObjectValidationError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationMultipleErrors")
  static var validationMultipleErrorsError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationMissingMandatoryProperty")
  static var validationMissingMandatoryPropertyError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationRelationshipLacksMinimumCount")
  static var validationRelationshipLacksMinimumCountError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationRelationshipExceedsMaximumCount")
  static var validationRelationshipExceedsMaximumCountError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationRelationshipDeniedDelete")
  static var validationRelationshipDeniedDeleteError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationNumberTooLarge")
  static var validationNumberTooLargeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationNumberTooSmall")
  static var validationNumberTooSmallError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationDateTooLate")
  static var validationDateTooLateError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationDateTooSoon")
  static var validationDateTooSoonError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationInvalidDate")
  static var validationInvalidDateError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationStringTooLong")
  static var validationStringTooLongError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationStringTooShort")
  static var validationStringTooShortError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationStringPatternMatching")
  static var validationStringPatternMatchingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "managedObjectContextLocking")
  static var managedObjectContextLockingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreCoordinatorLocking")
  static var persistentStoreCoordinatorLockingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "managedObjectReferentialIntegrity")
  static var managedObjectReferentialIntegrityError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "managedObjectExternalRelationship")
  static var managedObjectExternalRelationshipError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "managedObjectMerge")
  static var managedObjectMergeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "managedObjectConstraintMerge")
  static var managedObjectConstraintMergeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreInvalidType")
  static var persistentStoreInvalidTypeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreTypeMismatch")
  static var persistentStoreTypeMismatchError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreIncompatibleSchema")
  static var persistentStoreIncompatibleSchemaError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreSave")
  static var persistentStoreSaveError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreIncompleteSave")
  static var persistentStoreIncompleteSaveError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreSaveConflicts")
  static var persistentStoreSaveConflictsError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "coreData")
  static var coreDataError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreOperation")
  static var persistentStoreOperationError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreOpen")
  static var persistentStoreOpenError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreTimeout")
  static var persistentStoreTimeoutError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreUnsupportedRequestType")
  static var persistentStoreUnsupportedRequestTypeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreIncompatibleVersionHash")
  static var persistentStoreIncompatibleVersionHashError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "migration")
  static var migrationError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "migrationCancelled")
  static var migrationCancelledError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "migrationMissingSourceModel")
  static var migrationMissingSourceModelError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "migrationMissingMappingModel")
  static var migrationMissingMappingModelError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "migrationManagerSourceStore")
  static var migrationManagerSourceStoreError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "migrationManagerDestinationStore")
  static var migrationManagerDestinationStoreError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "entityMigrationPolicy")
  static var entityMigrationPolicyError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "sqlite")
  static var sqliteError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "inferredMappingModel")
  static var inferredMappingModelError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "externalRecordImport")
  static var externalRecordImportError: CocoaError.Code { get }
}

extension CocoaError {
  static var managedObjectValidation: CocoaError.Code { get }
  static var validationMultipleErrors: CocoaError.Code { get }
  static var validationMissingMandatoryProperty: CocoaError.Code { get }
  static var validationRelationshipLacksMinimumCount: CocoaError.Code { get }
  static var validationRelationshipExceedsMaximumCount: CocoaError.Code { get }
  static var validationRelationshipDeniedDelete: CocoaError.Code { get }
  static var validationNumberTooLarge: CocoaError.Code { get }
  static var validationNumberTooSmall: CocoaError.Code { get }
  static var validationDateTooLate: CocoaError.Code { get }
  static var validationDateTooSoon: CocoaError.Code { get }
  static var validationInvalidDate: CocoaError.Code { get }
  static var validationStringTooLong: CocoaError.Code { get }
  static var validationStringTooShort: CocoaError.Code { get }
  static var validationStringPatternMatching: CocoaError.Code { get }
  static var managedObjectContextLocking: CocoaError.Code { get }
  static var persistentStoreCoordinatorLocking: CocoaError.Code { get }
  static var managedObjectReferentialIntegrity: CocoaError.Code { get }
  static var managedObjectExternalRelationship: CocoaError.Code { get }
  static var managedObjectMerge: CocoaError.Code { get }
  static var managedObjectConstraintMerge: CocoaError.Code { get }
  static var persistentStoreInvalidType: CocoaError.Code { get }
  static var persistentStoreTypeMismatch: CocoaError.Code { get }
  static var persistentStoreIncompatibleSchema: CocoaError.Code { get }
  static var persistentStoreSave: CocoaError.Code { get }
  static var persistentStoreIncompleteSave: CocoaError.Code { get }
  static var persistentStoreSaveConflicts: CocoaError.Code { get }
  static var coreData: CocoaError.Code { get }
  static var persistentStoreOperation: CocoaError.Code { get }
  static var persistentStoreOpen: CocoaError.Code { get }
  static var persistentStoreTimeout: CocoaError.Code { get }
  static var persistentStoreUnsupportedRequestType: CocoaError.Code { get }
  static var persistentStoreIncompatibleVersionHash: CocoaError.Code { get }
  static var migration: CocoaError.Code { get }
  static var migrationCancelled: CocoaError.Code { get }
  static var migrationMissingSourceModel: CocoaError.Code { get }
  static var migrationMissingMappingModel: CocoaError.Code { get }
  static var migrationManagerSourceStore: CocoaError.Code { get }
  static var migrationManagerDestinationStore: CocoaError.Code { get }
  static var entityMigrationPolicy: CocoaError.Code { get }
  static var sqlite: CocoaError.Code { get }
  static var inferredMappingModel: CocoaError.Code { get }
  static var externalRecordImport: CocoaError.Code { get }
}

extension CocoaError {
  @available(*, deprecated, renamed: "managedObjectValidation")
  static var managedObjectValidationError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationMultipleErrors")
  static var validationMultipleErrorsError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationMissingMandatoryProperty")
  static var validationMissingMandatoryPropertyError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationRelationshipLacksMinimumCount")
  static var validationRelationshipLacksMinimumCountError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationRelationshipExceedsMaximumCount")
  static var validationRelationshipExceedsMaximumCountError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationRelationshipDeniedDelete")
  static var validationRelationshipDeniedDeleteError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationNumberTooLarge")
  static var validationNumberTooLargeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationNumberTooSmall")
  static var validationNumberTooSmallError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationDateTooLate")
  static var validationDateTooLateError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationDateTooSoon")
  static var validationDateTooSoonError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationInvalidDate")
  static var validationInvalidDateError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationStringTooLong")
  static var validationStringTooLongError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationStringTooShort")
  static var validationStringTooShortError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "validationStringPatternMatching")
  static var validationStringPatternMatchingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "managedObjectContextLocking")
  static var managedObjectContextLockingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreCoordinatorLocking")
  static var persistentStoreCoordinatorLockingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "managedObjectReferentialIntegrity")
  static var managedObjectReferentialIntegrityError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "managedObjectExternalRelationship")
  static var managedObjectExternalRelationshipError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "managedObjectMerge")
  static var managedObjectMergeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "managedObjectConstraintMerge")
  static var managedObjectConstraintMergeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreInvalidType")
  static var persistentStoreInvalidTypeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreTypeMismatch")
  static var persistentStoreTypeMismatchError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreIncompatibleSchema")
  static var persistentStoreIncompatibleSchemaError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreSave")
  static var persistentStoreSaveError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreIncompleteSave")
  static var persistentStoreIncompleteSaveError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreSaveConflicts")
  static var persistentStoreSaveConflictsError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "coreData")
  static var coreDataError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreOperation")
  static var persistentStoreOperationError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreOpen")
  static var persistentStoreOpenError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreTimeout")
  static var persistentStoreTimeoutError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreUnsupportedRequestType")
  static var persistentStoreUnsupportedRequestTypeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "persistentStoreIncompatibleVersionHash")
  static var persistentStoreIncompatibleVersionHashError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "migration")
  static var migrationError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "migrationCancelled")
  static var migrationCancelledError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "migrationMissingSourceModel")
  static var migrationMissingSourceModelError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "migrationMissingMappingModel")
  static var migrationMissingMappingModelError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "migrationManagerSourceStore")
  static var migrationManagerSourceStoreError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "migrationManagerDestinationStore")
  static var migrationManagerDestinationStoreError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "entityMigrationPolicy")
  static var entityMigrationPolicyError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "sqlite")
  static var sqliteError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "inferredMappingModel")
  static var inferredMappingModelError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "externalRecordImport")
  static var externalRecordImportError: CocoaError.Code { get }
}

extension CocoaError {
  var validationObject: Any? { get }
  var validationKey: String? { get }
  var validationPredicate: NSPredicate? { get }
  var validationValue: Any? { get }
  var affectedStores: [AnyObject]? { get }
  var affectedObjects: [AnyObject]? { get }
  var persistentStoreSaveConflicts: [NSMergeConflict]? { get }
}

extension CocoaError {
}

extension NSManagedObjectContext {
  func fetch<T>(_ request: NSFetchRequest<T>) throws -> [T] where T : NSFetchRequestResult
  func count<T>(for request: NSFetchRequest<T>) throws -> Int where T : NSFetchRequestResult
}

@available(iOS 14.0, *)
extension NSManagedObjectContext {
  static let willSaveObjectsNotification: Notification.Name
  static let didSaveObjectsNotification: Notification.Name
  static let didChangeObjectsNotification: Notification.Name
  static let didSaveObjectIDsNotification: Notification.Name
  static let didMergeChangesObjectIDsNotification: Notification.Name
  enum NotificationKey : String {
    case queryGeneration
    case invalidatedAllObjects
    case insertedObjects
    case updatedObjects
    case deletedObjects
    case refreshedObjects
    case invalidatedObjects
    case insertedObjectIDs
    case updatedObjectIDs
    case deletedObjectIDs
    case refreshedObjectIDs
    case invalidatedObjectIDs
  }
}

