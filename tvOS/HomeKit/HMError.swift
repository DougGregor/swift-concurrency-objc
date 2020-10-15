
@available(tvOS 8.0, *)
let HMErrorDomain: String
@available(tvOS 10.0, *)
struct HMError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  @available(tvOS 11.2, *)
  static var unexpectedError: HMError.Code { get }
  static var alreadyExists: HMError.Code { get }
  static var notFound: HMError.Code { get }
  static var invalidParameter: HMError.Code { get }
  static var accessoryNotReachable: HMError.Code { get }
  static var readOnlyCharacteristic: HMError.Code { get }
  static var writeOnlyCharacteristic: HMError.Code { get }
  static var notificationNotSupported: HMError.Code { get }
  static var operationTimedOut: HMError.Code { get }
  static var accessoryPoweredOff: HMError.Code { get }
  static var accessDenied: HMError.Code { get }
  static var objectAssociatedToAnotherHome: HMError.Code { get }
  static var objectNotAssociatedToAnyHome: HMError.Code { get }
  static var objectAlreadyAssociatedToHome: HMError.Code { get }
  static var accessoryIsBusy: HMError.Code { get }
  static var operationInProgress: HMError.Code { get }
  static var accessoryOutOfResources: HMError.Code { get }
  static var insufficientPrivileges: HMError.Code { get }
  static var accessoryPairingFailed: HMError.Code { get }
  static var invalidDataFormatSpecified: HMError.Code { get }
  static var nilParameter: HMError.Code { get }
  static var unconfiguredParameter: HMError.Code { get }
  static var invalidClass: HMError.Code { get }
  static var operationCancelled: HMError.Code { get }
  static var roomForHomeCannotBeInZone: HMError.Code { get }
  static var noActionsInActionSet: HMError.Code { get }
  static var noRegisteredActionSets: HMError.Code { get }
  static var missingParameter: HMError.Code { get }
  static var fireDateInPast: HMError.Code { get }
  static var roomForHomeCannotBeUpdated: HMError.Code { get }
  static var actionInAnotherActionSet: HMError.Code { get }
  static var objectWithSimilarNameExistsInHome: HMError.Code { get }
  static var homeWithSimilarNameExists: HMError.Code { get }
  static var renameWithSimilarName: HMError.Code { get }
  static var cannotRemoveNonBridgeAccessory: HMError.Code { get }
  static var nameContainsProhibitedCharacters: HMError.Code { get }
  static var nameDoesNotStartWithValidCharacters: HMError.Code { get }
  static var userIDNotEmailAddress: HMError.Code { get }
  static var userDeclinedAddingUser: HMError.Code { get }
  static var userDeclinedRemovingUser: HMError.Code { get }
  static var userDeclinedInvite: HMError.Code { get }
  static var userManagementFailed: HMError.Code { get }
  static var recurrenceTooSmall: HMError.Code { get }
  static var invalidValueType: HMError.Code { get }
  static var valueLowerThanMinimum: HMError.Code { get }
  static var valueHigherThanMaximum: HMError.Code { get }
  static var stringLongerThanMaximum: HMError.Code { get }
  static var homeAccessNotAuthorized: HMError.Code { get }
  static var operationNotSupported: HMError.Code { get }
  static var maximumObjectLimitReached: HMError.Code { get }
  static var accessorySentInvalidResponse: HMError.Code { get }
  static var stringShorterThanMinimum: HMError.Code { get }
  static var genericError: HMError.Code { get }
  static var securityFailure: HMError.Code { get }
  static var communicationFailure: HMError.Code { get }
  static var messageAuthenticationFailed: HMError.Code { get }
  static var invalidMessageSize: HMError.Code { get }
  static var accessoryDiscoveryFailed: HMError.Code { get }
  static var clientRequestError: HMError.Code { get }
  static var accessoryResponseError: HMError.Code { get }
  static var nameDoesNotEndWithValidCharacters: HMError.Code { get }
  static var accessoryIsBlocked: HMError.Code { get }
  static var invalidAssociatedServiceType: HMError.Code { get }
  static var actionSetExecutionFailed: HMError.Code { get }
  static var actionSetExecutionPartialSuccess: HMError.Code { get }
  static var actionSetExecutionInProgress: HMError.Code { get }
  static var accessoryOutOfCompliance: HMError.Code { get }
  static var dataResetFailure: HMError.Code { get }
  static var notificationAlreadyEnabled: HMError.Code { get }
  static var recurrenceMustBeOnSpecifiedBoundaries: HMError.Code { get }
  static var dateMustBeOnSpecifiedBoundaries: HMError.Code { get }
  static var cannotActivateTriggerTooFarInFuture: HMError.Code { get }
  static var recurrenceTooLarge: HMError.Code { get }
  static var readWritePartialSuccess: HMError.Code { get }
  static var readWriteFailure: HMError.Code { get }
  static var notSignedIntoiCloud: HMError.Code { get }
  static var keychainSyncNotEnabled: HMError.Code { get }
  static var cloudDataSyncInProgress: HMError.Code { get }
  static var networkUnavailable: HMError.Code { get }
  static var addAccessoryFailed: HMError.Code { get }
  static var missingEntitlement: HMError.Code { get }
  static var cannotUnblockNonBridgeAccessory: HMError.Code { get }
  static var deviceLocked: HMError.Code { get }
  @available(tvOS 9.0, *)
  static var cannotRemoveBuiltinActionSet: HMError.Code { get }
  @available(tvOS 9.0, *)
  static var locationForHomeDisabled: HMError.Code { get }
  @available(tvOS 9.0, *)
  static var notAuthorizedForLocationServices: HMError.Code { get }
  @available(tvOS 9.3, *)
  static var referToUserManual: HMError.Code { get }
  @available(tvOS 10.0, *)
  static var invalidOrMissingAuthorizationData: HMError.Code { get }
  @available(tvOS 10.0, *)
  static var bridgedAccessoryNotReachable: HMError.Code { get }
  @available(tvOS 10.0, *)
  static var notAuthorizedForMicrophoneAccess: HMError.Code { get }
  @available(tvOS 10.2, *)
  static var incompatibleNetwork: HMError.Code { get }
  @available(tvOS 11.0, *)
  static var noHomeHub: HMError.Code { get }
  @available(tvOS 11.0, *)
  static var noCompatibleHomeHub: HMError.Code { get }
  @available(tvOS 11.3, *)
  static var incompatibleAccessory: HMError.Code { get }
  @available(tvOS, introduced: 11.0, deprecated: 11.0, renamed: "HMError.noCompatibleHomeHub")
  static var incompatibleHomeHub: HMError.Code { get }
  @available(tvOS 12.0, *)
  static var objectWithSimilarNameExists: HMError.Code { get }
  @available(tvOS 13.0, *)
  static var ownershipFailure: HMError.Code { get }
  @available(tvOS 13.0, *)
  static var maximumAccessoriesOfTypeInHome: HMError.Code { get }
  @available(tvOS 13.0, *)
  static var wiFiCredentialGenerationFailed: HMError.Code { get }
  @available(tvOS 14.0, *)
  static var enterpriseNetworkNotSupported: HMError.Code { get }
  @available(tvOS 14.0, *)
  static var timedOutWaitingForAccessory: HMError.Code { get }
  @available(tvOS 14.0, *)
  static var accessoryCommunicationFailure: HMError.Code { get }
  @available(tvOS 14.0, *)
  static var failedToJoinNetwork: HMError.Code { get }
}
