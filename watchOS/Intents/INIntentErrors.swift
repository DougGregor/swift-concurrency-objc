
@available(watchOS 3.2, *)
let INIntentErrorDomain: String
@available(watchOS 3.2, *)
struct INIntentError : _BridgedStoredNSError {
  let _nsError: NSError
  init(_nsError: NSError)
  static var errorDomain: String { get }
  static var interactionOperationNotSupported: INIntentError.Code { get }
  static var donatingInteraction: INIntentError.Code { get }
  static var deletingAllInteractions: INIntentError.Code { get }
  static var deletingInteractionWithIdentifiers: INIntentError.Code { get }
  static var deletingInteractionWithGroupIdentifier: INIntentError.Code { get }
  static var intentSupportedByMultipleExtension: INIntentError.Code { get }
  static var restrictedIntentsNotSupportedByExtension: INIntentError.Code { get }
  static var noHandlerProvidedForIntent: INIntentError.Code { get }
  static var invalidIntentName: INIntentError.Code { get }
  static var noAppAvailable: INIntentError.Code { get }
  static var requestTimedOut: INIntentError.Code { get }
  static var missingInformation: INIntentError.Code { get }
  static var invalidUserVocabularyFileLocation: INIntentError.Code { get }
  static var extensionLaunchingTimeout: INIntentError.Code { get }
  static var extensionBringUpFailed: INIntentError.Code { get }
  static var imageGeneric: INIntentError.Code { get }
  static var imageNoServiceAvailable: INIntentError.Code { get }
  static var imageStorageFailed: INIntentError.Code { get }
  static var imageLoadingFailed: INIntentError.Code { get }
  static var imageRetrievalFailed: INIntentError.Code { get }
  static var imageProxyLoop: INIntentError.Code { get }
  static var imageProxyInvalid: INIntentError.Code { get }
  static var imageProxyTimeout: INIntentError.Code { get }
  static var imageServiceFailure: INIntentError.Code { get }
  static var imageScalingFailed: INIntentError.Code { get }
  static var permissionDenied: INIntentError.Code { get }
  static var voiceShortcutCreationFailed: INIntentError.Code { get }
  static var voiceShortcutGetFailed: INIntentError.Code { get }
  static var voiceShortcutDeleteFailed: INIntentError.Code { get }
  static var encodingGeneric: INIntentError.Code { get }
  static var encodingFailed: INIntentError.Code { get }
  static var decodingGeneric: INIntentError.Code { get }
}
