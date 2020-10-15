
struct Calendar : Hashable, Equatable, ReferenceConvertible, _MutableBoxing {
  var _autoupdating: Bool
  enum Identifier {
    case gregorian
    case buddhist
    case chinese
    case coptic
    case ethiopicAmeteMihret
    case ethiopicAmeteAlem
    case hebrew
    case iso8601
    case indian
    case islamic
    case islamicCivil
    case japanese
    case persian
    case republicOfChina
    @available(macOS 10.10, iOS 8.0, *)
    case islamicTabular
    @available(macOS 10.10, iOS 8.0, *)
    case islamicUmmAlQura
  }
  enum Component {
    case era
    case year
    case month
    case day
    case hour
    case minute
    case second
    case weekday
    case weekdayOrdinal
    case quarter
    case weekOfMonth
    case weekOfYear
    case yearForWeekOfYear
    case nanosecond
    case calendar
    case timeZone
  }
  static var current: Calendar { get }
  static var autoupdatingCurrent: Calendar { get }
  init(identifier: __shared Calendar.Identifier)
  init(reference: __shared NSCalendar)
  init(adoptingReference reference: NSCalendar, autoupdating: Bool)
  var identifier: Calendar.Identifier { get }
  var locale: Locale?
  var timeZone: TimeZone
  var firstWeekday: Int
  var minimumDaysInFirstWeek: Int
  var eraSymbols: [String] { get }
  var longEraSymbols: [String] { get }
  var monthSymbols: [String] { get }
  var shortMonthSymbols: [String] { get }
  var veryShortMonthSymbols: [String] { get }
  var standaloneMonthSymbols: [String] { get }
  var shortStandaloneMonthSymbols: [String] { get }
  var veryShortStandaloneMonthSymbols: [String] { get }
  var weekdaySymbols: [String] { get }
  var shortWeekdaySymbols: [String] { get }
  var veryShortWeekdaySymbols: [String] { get }
  var standaloneWeekdaySymbols: [String] { get }
  var shortStandaloneWeekdaySymbols: [String] { get }
  var veryShortStandaloneWeekdaySymbols: [String] { get }
  var quarterSymbols: [String] { get }
  var shortQuarterSymbols: [String] { get }
  var standaloneQuarterSymbols: [String] { get }
  var shortStandaloneQuarterSymbols: [String] { get }
  var amSymbol: String { get }
  var pmSymbol: String { get }
  func minimumRange(of component: Calendar.Component) -> Range<Int>?
  func maximumRange(of component: Calendar.Component) -> Range<Int>?
  func range(of smaller: Calendar.Component, in larger: Calendar.Component, for date: Date) -> Range<Int>?
  func dateInterval(of component: Calendar.Component, start: inout Date, interval: inout TimeInterval, for date: Date) -> Bool
  @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
  func dateInterval(of component: Calendar.Component, for date: Date) -> DateInterval?
  func ordinality(of smaller: Calendar.Component, in larger: Calendar.Component, for date: Date) -> Int?
  func date(byAdding components: DateComponents, to date: Date, wrappingComponents: Bool = false) -> Date?
  @available(iOS 8.0, *)
  func date(byAdding component: Calendar.Component, value: Int, to date: Date, wrappingComponents: Bool = false) -> Date?
  func date(from components: DateComponents) -> Date?
  func dateComponents(_ components: Set<Calendar.Component>, from date: Date) -> DateComponents
  @available(iOS 8.0, *)
  func dateComponents(in timeZone: TimeZone, from date: Date) -> DateComponents
  func dateComponents(_ components: Set<Calendar.Component>, from start: Date, to end: Date) -> DateComponents
  @available(iOS 8.0, *)
  func dateComponents(_ components: Set<Calendar.Component>, from start: DateComponents, to end: DateComponents) -> DateComponents
  @available(iOS 8.0, *)
  func component(_ component: Calendar.Component, from date: Date) -> Int
  @available(iOS 8.0, *)
  func startOfDay(for date: Date) -> Date
  @available(iOS 8.0, *)
  func compare(_ date1: Date, to date2: Date, toGranularity component: Calendar.Component) -> ComparisonResult
  @available(iOS 8.0, *)
  func isDate(_ date1: Date, equalTo date2: Date, toGranularity component: Calendar.Component) -> Bool
  @available(iOS 8.0, *)
  func isDate(_ date1: Date, inSameDayAs date2: Date) -> Bool
  @available(iOS 8.0, *)
  func isDateInToday(_ date: Date) -> Bool
  @available(iOS 8.0, *)
  func isDateInYesterday(_ date: Date) -> Bool
  @available(iOS 8.0, *)
  func isDateInTomorrow(_ date: Date) -> Bool
  @available(iOS 8.0, *)
  func isDateInWeekend(_ date: Date) -> Bool
  @available(iOS 8.0, *)
  func dateIntervalOfWeekend(containing date: Date, start: inout Date, interval: inout TimeInterval) -> Bool
  @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
  func dateIntervalOfWeekend(containing date: Date) -> DateInterval?
  @available(iOS 8.0, *)
  func nextWeekend(startingAfter date: Date, start: inout Date, interval: inout TimeInterval, direction: Calendar.SearchDirection = .forward) -> Bool
  @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
  func nextWeekend(startingAfter date: Date, direction: Calendar.SearchDirection = .forward) -> DateInterval?
  enum SearchDirection {
    case forward
    case backward
  }
  enum RepeatedTimePolicy {
    case first
    case last
  }
  enum MatchingPolicy {
    case nextTime
    case nextTimePreservingSmallerComponents
    case previousTimePreservingSmallerComponents
    case strict
  }
  @available(iOS 8.0, *)
  func enumerateDates(startingAfter start: Date, matching components: DateComponents, matchingPolicy: Calendar.MatchingPolicy, repeatedTimePolicy: Calendar.RepeatedTimePolicy = .first, direction: Calendar.SearchDirection = .forward, using block: (Date?, Bool, inout Bool) -> Void)
  @available(iOS 8.0, *)
  func nextDate(after date: Date, matching components: DateComponents, matchingPolicy: Calendar.MatchingPolicy, repeatedTimePolicy: Calendar.RepeatedTimePolicy = .first, direction: Calendar.SearchDirection = .forward) -> Date?
  @available(iOS 8.0, *)
  func date(bySetting component: Calendar.Component, value: Int, of date: Date) -> Date?
  @available(iOS 8.0, *)
  func date(bySettingHour hour: Int, minute: Int, second: Int, of date: Date, matchingPolicy: Calendar.MatchingPolicy = .nextTime, repeatedTimePolicy: Calendar.RepeatedTimePolicy = .first, direction: Calendar.SearchDirection = .forward) -> Date?
  @available(iOS 8.0, *)
  func date(_ date: Date, matchesComponents components: DateComponents) -> Bool
  static func _toCalendarOptions(matchingPolicy: Calendar.MatchingPolicy, repeatedTimePolicy: Calendar.RepeatedTimePolicy, direction: Calendar.SearchDirection) -> NSCalendar.Options
  static func _toCalendarUnit(_ units: Set<Calendar.Component>) -> NSCalendar.Unit
  static func _toNSCalendarIdentifier(_ identifier: Calendar.Identifier) -> NSCalendar.Identifier
  static func _fromNSCalendarIdentifier(_ identifier: NSCalendar.Identifier) -> Calendar.Identifier
}

extension Calendar : CustomDebugStringConvertible, CustomStringConvertible, CustomReflectable {
  var _kindDescription: String { get }
}

extension Calendar : _ObjectiveCBridgeable {
}

extension Calendar : Codable {
  enum CodingKeys : Int, CodingKey {
    case identifier
    case locale
    case timeZone
    case firstWeekday
    case minimumDaysInFirstWeek
  }
}

struct CharacterSet : ReferenceConvertible, Equatable, Hashable, SetAlgebra {
  var _storage: __CharacterSetStorage
  init(charactersIn range: Range<Unicode.Scalar>)
  init(charactersIn range: ClosedRange<Unicode.Scalar>)
  init(charactersIn string: __shared String)
  init(bitmapRepresentation data: __shared Data)
  init?(contentsOfFile file: __shared String)
  init(_bridged characterSet: __shared NSCharacterSet)
  init(_uncopiedImmutableReference characterSet: CFCharacterSet)
  init(_uncopiedStorage: __CharacterSetStorage)
  init(_builtIn: __shared CFCharacterSetPredefinedSet)
  static var controlCharacters: CharacterSet { get }
  static var whitespaces: CharacterSet { get }
  static var whitespacesAndNewlines: CharacterSet { get }
  static var decimalDigits: CharacterSet { get }
  static var letters: CharacterSet { get }
  static var lowercaseLetters: CharacterSet { get }
  static var uppercaseLetters: CharacterSet { get }
  static var nonBaseCharacters: CharacterSet { get }
  static var alphanumerics: CharacterSet { get }
  static var decomposables: CharacterSet { get }
  static var illegalCharacters: CharacterSet { get }
  static var punctuationCharacters: CharacterSet { get }
  static var capitalizedLetters: CharacterSet { get }
  static var symbols: CharacterSet { get }
  static var newlines: CharacterSet { get }
  static var urlUserAllowed: CharacterSet { get }
  static var urlPasswordAllowed: CharacterSet { get }
  static var urlHostAllowed: CharacterSet { get }
  static var urlPathAllowed: CharacterSet { get }
  static var urlQueryAllowed: CharacterSet { get }
  static var urlFragmentAllowed: CharacterSet { get }
  @nonobjc var bitmapRepresentation: Data { get }
  @nonobjc var inverted: CharacterSet { get }
  func hasMember(inPlane plane: UInt8) -> Bool
  mutating func insert(charactersIn range: Range<Unicode.Scalar>)
  mutating func insert(charactersIn range: ClosedRange<Unicode.Scalar>)
  mutating func remove(charactersIn range: Range<Unicode.Scalar>)
  mutating func remove(charactersIn range: ClosedRange<Unicode.Scalar>)
  mutating func insert(charactersIn string: String)
  mutating func remove(charactersIn string: String)
  mutating func invert()
}

extension CharacterSet : _ObjectiveCBridgeable {
  static func _getObjectiveCType() -> Any.Type
}

extension CharacterSet : CustomStringConvertible, CustomDebugStringConvertible {
}

extension CharacterSet : Codable {
  enum CodingKeys : Int, CodingKey {
    case bitmap
  }
}

extension CharacterSet {
  func contains(_ character: Character) -> Bool
}

struct CocoaError : _BridgedStoredNSError {
}

extension CocoaError {
  var _nsUserInfo: [AnyHashable : Any] { get }
  var filePath: String? { get }
  var stringEncoding: String.Encoding? { get }
  var underlying: Error? { get }
  var url: URL? { get }
}

extension CocoaError {
  static func error(_ code: CocoaError.Code, userInfo: [AnyHashable : Any]? = nil, url: URL? = nil) -> Error
}

extension CocoaError {
  static var fileNoSuchFile: CocoaError.Code { get }
  static var fileLocking: CocoaError.Code { get }
  static var fileReadUnknown: CocoaError.Code { get }
  static var fileReadNoPermission: CocoaError.Code { get }
  static var fileReadInvalidFileName: CocoaError.Code { get }
  static var fileReadCorruptFile: CocoaError.Code { get }
  static var fileReadNoSuchFile: CocoaError.Code { get }
  static var fileReadInapplicableStringEncoding: CocoaError.Code { get }
  static var fileReadUnsupportedScheme: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var fileReadTooLarge: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var fileReadUnknownStringEncoding: CocoaError.Code { get }
  static var fileWriteUnknown: CocoaError.Code { get }
  static var fileWriteNoPermission: CocoaError.Code { get }
  static var fileWriteInvalidFileName: CocoaError.Code { get }
  @available(macOS 10.7, iOS 5.0, *)
  static var fileWriteFileExists: CocoaError.Code { get }
  static var fileWriteInapplicableStringEncoding: CocoaError.Code { get }
  static var fileWriteUnsupportedScheme: CocoaError.Code { get }
  static var fileWriteOutOfSpace: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  static var fileWriteVolumeReadOnly: CocoaError.Code { get }
  static var keyValueValidation: CocoaError.Code { get }
  static var formatting: CocoaError.Code { get }
  static var userCancelled: CocoaError.Code { get }
  @available(macOS 10.8, iOS 6.0, *)
  static var featureUnsupported: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var executableNotLoadable: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var executableArchitectureMismatch: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var executableRuntimeMismatch: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var executableLoad: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var executableLink: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  static var propertyListReadCorrupt: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  static var propertyListReadUnknownVersion: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  static var propertyListReadStream: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  static var propertyListWriteStream: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var propertyListWriteInvalid: CocoaError.Code { get }
  @available(macOS 10.8, iOS 6.0, *)
  static var xpcConnectionInterrupted: CocoaError.Code { get }
  @available(macOS 10.8, iOS 6.0, *)
  static var xpcConnectionInvalid: CocoaError.Code { get }
  @available(macOS 10.8, iOS 6.0, *)
  static var xpcConnectionReplyInvalid: CocoaError.Code { get }
  @available(macOS 10.9, iOS 7.0, *)
  static var ubiquitousFileUnavailable: CocoaError.Code { get }
  @available(macOS 10.9, iOS 7.0, *)
  static var ubiquitousFileNotUploadedDueToQuota: CocoaError.Code { get }
  @available(macOS 10.9, iOS 7.0, *)
  static var ubiquitousFileUbiquityServerNotAvailable: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var userActivityHandoffFailed: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var userActivityConnectionUnavailable: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var userActivityRemoteApplicationTimedOut: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var userActivityHandoffUserInfoTooLarge: CocoaError.Code { get }
  @available(macOS 10.11, iOS 9.0, *)
  static var coderReadCorrupt: CocoaError.Code { get }
  @available(macOS 10.11, iOS 9.0, *)
  static var coderValueNotFound: CocoaError.Code { get }
  static var coderInvalidValue: CocoaError.Code { get }
}

extension CocoaError {
  @available(*, deprecated, renamed: "fileNoSuchFile")
  static var fileNoSuchFileError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileLocking")
  static var fileLockingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadUnknown")
  static var fileReadUnknownError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadNoPermission")
  static var fileReadNoPermissionError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadInvalidFileName")
  static var fileReadInvalidFileNameError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadCorruptFile")
  static var fileReadCorruptFileError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadNoSuchFile")
  static var fileReadNoSuchFileError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadInapplicableStringEncoding")
  static var fileReadInapplicableStringEncodingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadUnsupportedScheme")
  static var fileReadUnsupportedSchemeError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "fileReadTooLarge")
  static var fileReadTooLargeError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "fileReadUnknownStringEncoding")
  static var fileReadUnknownStringEncodingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileWriteUnknown")
  static var fileWriteUnknownError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileWriteNoPermission")
  static var fileWriteNoPermissionError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileWriteInvalidFileName")
  static var fileWriteInvalidFileNameError: CocoaError.Code { get }
  @available(macOS 10.7, iOS 5.0, *)
  @available(*, deprecated, renamed: "fileWriteFileExists")
  static var fileWriteFileExistsError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileWriteInapplicableStringEncoding")
  static var fileWriteInapplicableStringEncodingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileWriteUnsupportedScheme")
  static var fileWriteUnsupportedSchemeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileWriteOutOfSpace")
  static var fileWriteOutOfSpaceError: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  @available(*, deprecated, renamed: "fileWriteVolumeReadOnly")
  static var fileWriteVolumeReadOnlyError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "keyValueValidation")
  static var keyValueValidationError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "formatting")
  static var formattingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "userCancelled")
  static var userCancelledError: CocoaError.Code { get }
  @available(macOS 10.8, iOS 6.0, *)
  @available(*, deprecated, renamed: "featureUnsupported")
  static var featureUnsupportedError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "executableNotLoadable")
  static var executableNotLoadableError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "executableArchitectureMismatch")
  static var executableArchitectureMismatchError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "executableRuntimeMismatch")
  static var executableRuntimeMismatchError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "executableLoad")
  static var executableLoadError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "executableLink")
  static var executableLinkError: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  @available(*, deprecated, renamed: "propertyListReadCorrupt")
  static var propertyListReadCorruptError: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  @available(*, deprecated, renamed: "propertyListReadUnknownVersion")
  static var propertyListReadUnknownVersionError: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  @available(*, deprecated, renamed: "propertyListReadStream")
  static var propertyListReadStreamError: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  @available(*, deprecated, renamed: "propertyListWriteStream")
  static var propertyListWriteStreamError: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  @available(*, deprecated, renamed: "propertyListWriteInvalid")
  static var propertyListWriteInvalidError: CocoaError.Code { get }
  @available(macOS 10.9, iOS 7.0, *)
  @available(*, deprecated, renamed: "ubiquitousFileUnavailable")
  static var ubiquitousFileUnavailableError: CocoaError.Code { get }
  @available(macOS 10.9, iOS 7.0, *)
  @available(*, deprecated, renamed: "ubiquitousFileNotUploadedDueToQuota")
  static var ubiquitousFileNotUploadedDueToQuotaError: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  @available(*, deprecated, renamed: "userActivityHandoffFailed")
  static var userActivityHandoffFailedError: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  @available(*, deprecated, renamed: "userActivityConnectionUnavailable")
  static var userActivityConnectionUnavailableError: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  @available(*, deprecated, renamed: "userActivityRemoteApplicationTimedOut")
  static var userActivityRemoteApplicationTimedOutError: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  @available(*, deprecated, renamed: "userActivityHandoffUserInfoTooLarge")
  static var userActivityHandoffUserInfoTooLargeError: CocoaError.Code { get }
  @available(macOS 10.11, iOS 9.0, *)
  @available(*, deprecated, renamed: "coderReadCorrupt")
  static var coderReadCorruptError: CocoaError.Code { get }
  @available(macOS 10.11, iOS 9.0, *)
  @available(*, deprecated, renamed: "coderValueNotFound")
  static var coderValueNotFoundError: CocoaError.Code { get }
}

extension CocoaError {
  @available(macOS 10.11, iOS 9.0, *)
  var isCoderError: Bool { get }
  @available(macOS 10.5, iOS 2.0, *)
  var isExecutableError: Bool { get }
  var isFileError: Bool { get }
  var isFormattingError: Bool { get }
  @available(macOS 10.6, iOS 4.0, *)
  var isPropertyListError: Bool { get }
  @available(macOS 10.9, iOS 7.0, *)
  var isUbiquitousFileError: Bool { get }
  @available(macOS 10.10, iOS 8.0, *)
  var isUserActivityError: Bool { get }
  var isValidationError: Bool { get }
  @available(macOS 10.8, iOS 6.0, *)
  var isXPCConnectionError: Bool { get }
}

extension CocoaError.Code {
  static var fileNoSuchFile: CocoaError.Code { get }
  static var fileLocking: CocoaError.Code { get }
  static var fileReadUnknown: CocoaError.Code { get }
  static var fileReadNoPermission: CocoaError.Code { get }
  static var fileReadInvalidFileName: CocoaError.Code { get }
  static var fileReadCorruptFile: CocoaError.Code { get }
  static var fileReadNoSuchFile: CocoaError.Code { get }
  static var fileReadInapplicableStringEncoding: CocoaError.Code { get }
  static var fileReadUnsupportedScheme: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var fileReadTooLarge: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var fileReadUnknownStringEncoding: CocoaError.Code { get }
  static var fileWriteUnknown: CocoaError.Code { get }
  static var fileWriteNoPermission: CocoaError.Code { get }
  static var fileWriteInvalidFileName: CocoaError.Code { get }
  @available(macOS 10.7, iOS 5.0, *)
  static var fileWriteFileExists: CocoaError.Code { get }
  static var fileWriteInapplicableStringEncoding: CocoaError.Code { get }
  static var fileWriteUnsupportedScheme: CocoaError.Code { get }
  static var fileWriteOutOfSpace: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  static var fileWriteVolumeReadOnly: CocoaError.Code { get }
  static var keyValueValidation: CocoaError.Code { get }
  static var formatting: CocoaError.Code { get }
  static var userCancelled: CocoaError.Code { get }
  @available(macOS 10.8, iOS 6.0, *)
  static var featureUnsupported: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var executableNotLoadable: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var executableArchitectureMismatch: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var executableRuntimeMismatch: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var executableLoad: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var executableLink: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  static var propertyListReadCorrupt: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  static var propertyListReadUnknownVersion: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  static var propertyListReadStream: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  static var propertyListWriteStream: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var propertyListWriteInvalid: CocoaError.Code { get }
  @available(macOS 10.8, iOS 6.0, *)
  static var xpcConnectionInterrupted: CocoaError.Code { get }
  @available(macOS 10.8, iOS 6.0, *)
  static var xpcConnectionInvalid: CocoaError.Code { get }
  @available(macOS 10.8, iOS 6.0, *)
  static var xpcConnectionReplyInvalid: CocoaError.Code { get }
  @available(macOS 10.9, iOS 7.0, *)
  static var ubiquitousFileUnavailable: CocoaError.Code { get }
  @available(macOS 10.9, iOS 7.0, *)
  static var ubiquitousFileNotUploadedDueToQuota: CocoaError.Code { get }
  @available(macOS 10.9, iOS 7.0, *)
  static var ubiquitousFileUbiquityServerNotAvailable: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var userActivityHandoffFailed: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var userActivityConnectionUnavailable: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var userActivityRemoteApplicationTimedOut: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var userActivityHandoffUserInfoTooLarge: CocoaError.Code { get }
  @available(macOS 10.11, iOS 9.0, *)
  static var coderReadCorrupt: CocoaError.Code { get }
  @available(macOS 10.11, iOS 9.0, *)
  static var coderValueNotFound: CocoaError.Code { get }
  static var coderInvalidValue: CocoaError.Code { get }
}

extension CocoaError.Code {
  @available(*, deprecated, renamed: "fileNoSuchFile")
  static var fileNoSuchFileError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileLocking")
  static var fileLockingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadUnknown")
  static var fileReadUnknownError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadNoPermission")
  static var fileReadNoPermissionError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadInvalidFileName")
  static var fileReadInvalidFileNameError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadCorruptFile")
  static var fileReadCorruptFileError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadNoSuchFile")
  static var fileReadNoSuchFileError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadInapplicableStringEncoding")
  static var fileReadInapplicableStringEncodingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileReadUnsupportedScheme")
  static var fileReadUnsupportedSchemeError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "fileReadTooLarge")
  static var fileReadTooLargeError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "fileReadUnknownStringEncoding")
  static var fileReadUnknownStringEncodingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileWriteUnknown")
  static var fileWriteUnknownError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileWriteNoPermission")
  static var fileWriteNoPermissionError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileWriteInvalidFileName")
  static var fileWriteInvalidFileNameError: CocoaError.Code { get }
  @available(macOS 10.7, iOS 5.0, *)
  @available(*, deprecated, renamed: "fileWriteFileExists")
  static var fileWriteFileExistsError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileWriteInapplicableStringEncoding")
  static var fileWriteInapplicableStringEncodingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileWriteUnsupportedScheme")
  static var fileWriteUnsupportedSchemeError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "fileWriteOutOfSpace")
  static var fileWriteOutOfSpaceError: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  @available(*, deprecated, renamed: "fileWriteVolumeReadOnly")
  static var fileWriteVolumeReadOnlyError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "keyValueValidation")
  static var keyValueValidationError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "formatting")
  static var formattingError: CocoaError.Code { get }
  @available(*, deprecated, renamed: "userCancelled")
  static var userCancelledError: CocoaError.Code { get }
  @available(macOS 10.8, iOS 6.0, *)
  @available(*, deprecated, renamed: "featureUnsupported")
  static var featureUnsupportedError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "executableNotLoadable")
  static var executableNotLoadableError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "executableArchitectureMismatch")
  static var executableArchitectureMismatchError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "executableRuntimeMismatch")
  static var executableRuntimeMismatchError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "executableLoad")
  static var executableLoadError: CocoaError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  @available(*, deprecated, renamed: "executableLink")
  static var executableLinkError: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  @available(*, deprecated, renamed: "propertyListReadCorrupt")
  static var propertyListReadCorruptError: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  @available(*, deprecated, renamed: "propertyListReadUnknownVersion")
  static var propertyListReadUnknownVersionError: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  @available(*, deprecated, renamed: "propertyListReadStream")
  static var propertyListReadStreamError: CocoaError.Code { get }
  @available(macOS 10.6, iOS 4.0, *)
  @available(*, deprecated, renamed: "propertyListWriteStream")
  static var propertyListWriteStreamError: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  @available(*, deprecated, renamed: "propertyListWriteInvalid")
  static var propertyListWriteInvalidError: CocoaError.Code { get }
  @available(macOS 10.9, iOS 7.0, *)
  @available(*, deprecated, renamed: "ubiquitousFileUnavailable")
  static var ubiquitousFileUnavailableError: CocoaError.Code { get }
  @available(macOS 10.9, iOS 7.0, *)
  @available(*, deprecated, renamed: "ubiquitousFileNotUploadedDueToQuota")
  static var ubiquitousFileNotUploadedDueToQuotaError: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  @available(*, deprecated, renamed: "userActivityHandoffFailed")
  static var userActivityHandoffFailedError: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  @available(*, deprecated, renamed: "userActivityConnectionUnavailable")
  static var userActivityConnectionUnavailableError: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  @available(*, deprecated, renamed: "userActivityRemoteApplicationTimedOut")
  static var userActivityRemoteApplicationTimedOutError: CocoaError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  @available(*, deprecated, renamed: "userActivityHandoffUserInfoTooLarge")
  static var userActivityHandoffUserInfoTooLargeError: CocoaError.Code { get }
  @available(macOS 10.11, iOS 9.0, *)
  @available(*, deprecated, renamed: "coderReadCorrupt")
  static var coderReadCorruptError: CocoaError.Code { get }
  @available(macOS 10.11, iOS 9.0, *)
  @available(*, deprecated, renamed: "coderValueNotFound")
  static var coderValueNotFoundError: CocoaError.Code { get }
}

extension CocoaError.Code {
}

protocol ContiguousBytes {
  func withUnsafeBytes<R>(_ body: (UnsafeRawBufferPointer) throws -> R) rethrows -> R
}

protocol CustomNSError : Error {
  static var errorDomain: String { get }
  var errorCode: Int { get }
  var errorUserInfo: [String : Any] { get }
}

extension CustomNSError {
  static var errorDomain: String { get }
  var errorCode: Int { get }
  var errorUserInfo: [String : Any] { get }
}

extension CustomNSError where Self : RawRepresentable, Self.RawValue : FixedWidthInteger {
  var errorCode: Int { get }
}

@frozen struct Data : ReferenceConvertible, Equatable, Hashable, RandomAccessCollection, MutableCollection, RangeReplaceableCollection, MutableDataProtocol, ContiguousBytes {
  typealias ReadingOptions = NSData.ReadingOptions
  typealias WritingOptions = NSData.WritingOptions
  typealias SearchOptions = NSData.SearchOptions
  typealias Base64EncodingOptions = NSData.Base64EncodingOptions
  typealias Base64DecodingOptions = NSData.Base64DecodingOptions
  @usableFromInline
  @frozen struct InlineData {
    @usableFromInline
    typealias Buffer = (UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8, UInt8)
    @usableFromInline
    var bytes: Data.InlineData.Buffer
    @usableFromInline
    var length: UInt8
    @inlinable static func canStore(count: Int) -> Bool
    @inlinable init(_ srcBuffer: UnsafeRawBufferPointer)
    @inlinable init(count: Int = 0)
    @inlinable init(_ slice: Data.InlineSlice, count: Int)
    @inlinable init(_ slice: Data.LargeSlice, count: Int)
    @inlinable var capacity: Int { get }
    @inlinable var count: Int
    @inlinable var startIndex: Int { get }
    @inlinable var endIndex: Int { get }
    @inlinable func withUnsafeBytes<Result>(_ apply: (UnsafeRawBufferPointer) throws -> Result) rethrows -> Result
    @inlinable mutating func withUnsafeMutableBytes<Result>(_ apply: (UnsafeMutableRawBufferPointer) throws -> Result) rethrows -> Result
    @inlinable mutating func append(byte: UInt8)
    @inlinable mutating func append(contentsOf buffer: UnsafeRawBufferPointer)
    @inlinable subscript(index: Data.Index) -> UInt8
    @inlinable mutating func resetBytes(in range: Range<Data.Index>)
    @usableFromInline
    mutating func replaceSubrange(_ subrange: Range<Data.Index>, with replacementBytes: UnsafeRawPointer?, count replacementLength: Int)
    @inlinable func copyBytes(to pointer: UnsafeMutableRawPointer, from range: Range<Int>)
    @inline(__always) func hash(into hasher: inout Hasher)
  }
  @usableFromInline
  typealias HalfInt = Int32
  @usableFromInline
  @frozen struct InlineSlice {
    @usableFromInline
    var slice: Range<Data.HalfInt>
    @usableFromInline
    var storage: __DataStorage
    @inlinable static func canStore(count: Int) -> Bool
    @inlinable init(_ buffer: UnsafeRawBufferPointer)
    @inlinable init(capacity: Int)
    @inlinable init(count: Int)
    @inlinable init(_ inline: Data.InlineData)
    @inlinable init(_ inline: Data.InlineData, range: Range<Int>)
    @inlinable init(_ large: Data.LargeSlice)
    @inlinable init(_ large: Data.LargeSlice, range: Range<Int>)
    @inlinable init(_ storage: __DataStorage, count: Int)
    @inlinable init(_ storage: __DataStorage, range: Range<Int>)
    @inlinable mutating func ensureUniqueReference()
    @inlinable var startIndex: Int { get }
    @inlinable var endIndex: Int { get }
    @inlinable var capacity: Int { get }
    @inlinable mutating func reserveCapacity(_ minimumCapacity: Int)
    @inlinable var count: Int
    @inlinable var range: Range<Int>
    @inlinable func withUnsafeBytes<Result>(_ apply: (UnsafeRawBufferPointer) throws -> Result) rethrows -> Result
    @inlinable mutating func withUnsafeMutableBytes<Result>(_ apply: (UnsafeMutableRawBufferPointer) throws -> Result) rethrows -> Result
    @inlinable mutating func append(contentsOf buffer: UnsafeRawBufferPointer)
    @inlinable subscript(index: Data.Index) -> UInt8
    @inlinable func bridgedReference() -> NSData
    @inlinable mutating func resetBytes(in range: Range<Data.Index>)
    @inlinable mutating func replaceSubrange(_ subrange: Range<Data.Index>, with bytes: UnsafeRawPointer?, count cnt: Int)
    @inlinable func copyBytes(to pointer: UnsafeMutableRawPointer, from range: Range<Int>)
    @inline(__always) func hash(into hasher: inout Hasher)
  }
  @usableFromInline
  final class RangeReference {
    @usableFromInline
    var range: Range<Int>
    @inlinable @inline(__always) var lowerBound: Int { get }
    @inlinable @inline(__always) var upperBound: Int { get }
    @inlinable @inline(__always) var count: Int { get }
    @inlinable @inline(__always) init(_ range: Range<Int>)
  }
  @usableFromInline
  @frozen struct LargeSlice {
    @usableFromInline
    var slice: Data.RangeReference
    @usableFromInline
    var storage: __DataStorage
    @inlinable init(_ buffer: UnsafeRawBufferPointer)
    @inlinable init(capacity: Int)
    @inlinable init(count: Int)
    @inlinable init(_ inline: Data.InlineData)
    @inlinable init(_ slice: Data.InlineSlice)
    @inlinable init(_ storage: __DataStorage, count: Int)
    @inlinable mutating func ensureUniqueReference()
    @inlinable var startIndex: Int { get }
    @inlinable var endIndex: Int { get }
    @inlinable var capacity: Int { get }
    @inlinable mutating func reserveCapacity(_ minimumCapacity: Int)
    @inlinable var count: Int
    @inlinable var range: Range<Int> { get }
    @inlinable func withUnsafeBytes<Result>(_ apply: (UnsafeRawBufferPointer) throws -> Result) rethrows -> Result
    @inlinable mutating func withUnsafeMutableBytes<Result>(_ apply: (UnsafeMutableRawBufferPointer) throws -> Result) rethrows -> Result
    @inlinable mutating func append(contentsOf buffer: UnsafeRawBufferPointer)
    @inlinable subscript(index: Data.Index) -> UInt8
    @inlinable func bridgedReference() -> NSData
    @inlinable mutating func resetBytes(in range: Range<Int>)
    @inlinable mutating func replaceSubrange(_ subrange: Range<Data.Index>, with bytes: UnsafeRawPointer?, count cnt: Int)
    @inlinable func copyBytes(to pointer: UnsafeMutableRawPointer, from range: Range<Int>)
    @inline(__always) func hash(into hasher: inout Hasher)
  }
  @usableFromInline
  @frozen enum _Representation {
    case empty
    case inline(Data.InlineData)
    case slice(Data.InlineSlice)
    case large(Data.LargeSlice)
    @inlinable init(_ buffer: UnsafeRawBufferPointer)
    @inlinable init(_ buffer: UnsafeRawBufferPointer, owner: AnyObject)
    @inlinable init(capacity: Int)
    @inlinable init(count: Int)
    @inlinable init(_ storage: __DataStorage, count: Int)
    @usableFromInline
    mutating func reserveCapacity(_ minimumCapacity: Int)
    @inlinable var count: Int
    @inlinable func withUnsafeBytes<Result>(_ apply: (UnsafeRawBufferPointer) throws -> Result) rethrows -> Result
    @inlinable mutating func withUnsafeMutableBytes<Result>(_ apply: (UnsafeMutableRawBufferPointer) throws -> Result) rethrows -> Result
    @inlinable func withInteriorPointerReference<T>(_ work: (NSData) throws -> T) rethrows -> T
    @usableFromInline
    func enumerateBytes(_ block: (UnsafeBufferPointer<UInt8>, Data.Index, inout Bool) -> Void)
    @inlinable mutating func append(contentsOf buffer: UnsafeRawBufferPointer)
    @inlinable mutating func resetBytes(in range: Range<Data.Index>)
    @usableFromInline
    mutating func replaceSubrange(_ subrange: Range<Data.Index>, with bytes: UnsafeRawPointer?, count cnt: Int)
    @inlinable subscript(index: Data.Index) -> UInt8
    @inlinable subscript(bounds: Range<Data.Index>) -> Data { get }
    @inlinable var startIndex: Int { get }
    @inlinable var endIndex: Int { get }
    @inlinable func bridgedReference() -> NSData
    @inlinable func copyBytes(to pointer: UnsafeMutableRawPointer, from range: Range<Int>)
    @inline(__always) func hash(into hasher: inout Hasher)
  }
  @usableFromInline
  var _representation: Data._Representation
  enum Deallocator {
    case virtualMemory
    case unmap
    case free
    case none
    case custom((UnsafeMutableRawPointer, Int) -> Void)
    @usableFromInline
    var _deallocator: ((UnsafeMutableRawPointer, Int) -> Void) { get }
  }
  @inlinable init(bytes: UnsafeRawPointer, count: Int)
  @inlinable init<SourceType>(buffer: UnsafeBufferPointer<SourceType>)
  @inlinable init<SourceType>(buffer: UnsafeMutableBufferPointer<SourceType>)
  @inlinable init(capacity: Int)
  @inlinable init(count: Int)
  @inlinable init(bytesNoCopy bytes: UnsafeMutableRawPointer, count: Int, deallocator: Data.Deallocator)
  @inlinable init(contentsOf url: __shared URL, options: Data.ReadingOptions = []) throws
  @inlinable init?(base64Encoded base64String: __shared String, options: Data.Base64DecodingOptions = [])
  @inlinable init?(base64Encoded base64Data: __shared Data, options: Data.Base64DecodingOptions = [])
  init(referencing reference: __shared NSData)
  @available(swift 4.2)
  @available(swift, deprecated: 5, message: "use `init(_:)` instead")
  init<S>(bytes elements: S) where S : Sequence, S.Element == UInt8
  @inlinable init(representation: Data._Representation)
  @available(swift, deprecated: 5, message: "use `withUnsafeBytes<R>(_: (UnsafeRawBufferPointer) throws -> R) rethrows -> R` instead")
  func withUnsafeBytes<ResultType, ContentType>(_ body: (UnsafePointer<ContentType>) throws -> ResultType) rethrows -> ResultType
  @available(swift, deprecated: 5, message: "use `withUnsafeMutableBytes<R>(_: (UnsafeMutableRawBufferPointer) throws -> R) rethrows -> R` instead")
  mutating func withUnsafeMutableBytes<ResultType, ContentType>(_ body: (UnsafeMutablePointer<ContentType>) throws -> ResultType) rethrows -> ResultType
  @inlinable mutating func withUnsafeMutableBytes<ResultType>(_ body: (UnsafeMutableRawBufferPointer) throws -> ResultType) rethrows -> ResultType
  @inlinable func copyBytes(to pointer: UnsafeMutablePointer<UInt8>, count: Int)
  @inlinable func _copyBytesHelper(to pointer: UnsafeMutableRawPointer, from range: Range<Int>)
  @inlinable func copyBytes(to pointer: UnsafeMutablePointer<UInt8>, from range: Range<Data.Index>)
  @inlinable func copyBytes<DestinationType>(to buffer: UnsafeMutableBufferPointer<DestinationType>, from range: Range<Data.Index>? = nil) -> Int
  func _shouldUseNonAtomicWriteReimplementation(options: Data.WritingOptions = []) -> Bool
  func write(to url: URL, options: Data.WritingOptions = []) throws
  func range(of dataToFind: Data, options: Data.SearchOptions = [], in range: Range<Data.Index>? = nil) -> Range<Data.Index>?
  @available(swift, deprecated: 5, message: "use `regions` or `for-in` instead")
  func enumerateBytes(_ block: (UnsafeBufferPointer<UInt8>, Data.Index, inout Bool) -> Void)
  @inlinable mutating func _append<SourceType>(_ buffer: UnsafeBufferPointer<SourceType>)
  @inlinable mutating func append(_ bytes: UnsafePointer<UInt8>, count: Int)
  mutating func append(_ other: Data)
  @inlinable mutating func append<SourceType>(_ buffer: UnsafeBufferPointer<SourceType>)
  @inlinable mutating func append(contentsOf bytes: [UInt8])
  @inlinable mutating func resetBytes(in range: Range<Data.Index>)
  @inlinable mutating func replaceSubrange(_ subrange: Range<Data.Index>, with data: Data)
  @inlinable mutating func replaceSubrange<SourceType>(_ subrange: Range<Data.Index>, with buffer: UnsafeBufferPointer<SourceType>)
  @inlinable mutating func replaceSubrange(_ subrange: Range<Data.Index>, with bytes: UnsafeRawPointer, count cnt: Int)
  func subdata(in range: Range<Data.Index>) -> Data
  @inlinable func base64EncodedString(options: Data.Base64EncodingOptions = []) -> String
  @inlinable func base64EncodedData(options: Data.Base64EncodingOptions = []) -> Data
  func advanced(by amount: Int) -> Data
  @inlinable subscript<R>(rangeExpression: R) -> Data where R : RangeExpression, R.Bound : FixedWidthInteger
}

extension Data : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

extension Data {
}

extension Data : _ObjectiveCBridgeable {
}

extension Data : Codable {
}

protocol DataProtocol : RandomAccessCollection where Self.Element == UInt8, Self.SubSequence : DataProtocol {
  associatedtype Regions : BidirectionalCollection where Self.Regions.Element : ContiguousBytes, Self.Regions.Element : DataProtocol, Self.Regions.Element.SubSequence : ContiguousBytes
  var regions: Self.Regions { get }
  func firstRange<D, R>(of: D, in: R) -> Range<Self.Index>? where D : DataProtocol, R : RangeExpression, Self.Index == R.Bound
  func lastRange<D, R>(of: D, in: R) -> Range<Self.Index>? where D : DataProtocol, R : RangeExpression, Self.Index == R.Bound
  @discardableResult
  func copyBytes(to: UnsafeMutableRawBufferPointer, count: Int) -> Int
  @discardableResult
  func copyBytes<DestinationType>(to: UnsafeMutableBufferPointer<DestinationType>, count: Int) -> Int
  @discardableResult
  func copyBytes<R>(to: UnsafeMutableRawBufferPointer, from: R) -> Int where R : RangeExpression, Self.Index == R.Bound
  @discardableResult
  func copyBytes<DestinationType, R>(to: UnsafeMutableBufferPointer<DestinationType>, from: R) -> Int where R : RangeExpression, Self.Index == R.Bound
}

extension DataProtocol {
  func firstRange<D>(of data: D) -> Range<Self.Index>? where D : DataProtocol
  func lastRange<D>(of data: D) -> Range<Self.Index>? where D : DataProtocol
  @discardableResult
  func copyBytes(to ptr: UnsafeMutableRawBufferPointer) -> Int
  @discardableResult
  func copyBytes<DestinationType>(to ptr: UnsafeMutableBufferPointer<DestinationType>) -> Int
  @discardableResult
  func copyBytes(to ptr: UnsafeMutableRawBufferPointer, count: Int) -> Int
  @discardableResult
  func copyBytes<DestinationType>(to ptr: UnsafeMutableBufferPointer<DestinationType>, count: Int) -> Int
  @discardableResult
  func copyBytes<R>(to ptr: UnsafeMutableRawBufferPointer, from range: R) -> Int where R : RangeExpression, Self.Index == R.Bound
  @discardableResult
  func copyBytes<DestinationType, R>(to ptr: UnsafeMutableBufferPointer<DestinationType>, from range: R) -> Int where R : RangeExpression, Self.Index == R.Bound
  func matches<D>(_ data: D, from index: Self.Index) -> Bool where D : DataProtocol
  func firstRange<D, R>(of data: D, in range: R) -> Range<Self.Index>? where D : DataProtocol, R : RangeExpression, Self.Index == R.Bound
  func lastRange<D, R>(of data: D, in range: R) -> Range<Self.Index>? where D : DataProtocol, R : RangeExpression, Self.Index == R.Bound
}

extension DataProtocol where Self : ContiguousBytes {
  func copyBytes<DestinationType, R>(to ptr: UnsafeMutableBufferPointer<DestinationType>, from range: R) where R : RangeExpression, Self.Index == R.Bound
}

struct Date : ReferenceConvertible, Comparable, Equatable {
  var _time: TimeInterval
  static let timeIntervalBetween1970AndReferenceDate: TimeInterval
  static var timeIntervalSinceReferenceDate: TimeInterval { get }
  init()
  init(timeIntervalSinceNow: TimeInterval)
  init(timeIntervalSince1970: TimeInterval)
  init(timeInterval: TimeInterval, since date: Date)
  init(timeIntervalSinceReferenceDate ti: TimeInterval)
  var timeIntervalSinceReferenceDate: TimeInterval { get }
  func timeIntervalSince(_ date: Date) -> TimeInterval
  var timeIntervalSinceNow: TimeInterval { get }
  var timeIntervalSince1970: TimeInterval { get }
  func addingTimeInterval(_ timeInterval: TimeInterval) -> Date
  mutating func addTimeInterval(_ timeInterval: TimeInterval)
  static let distantFuture: Date
  static let distantPast: Date
  func compare(_ other: Date) -> ComparisonResult
  static func + (lhs: Date, rhs: TimeInterval) -> Date
  static func - (lhs: Date, rhs: TimeInterval) -> Date
  static func += (lhs: inout Date, rhs: TimeInterval)
  static func -= (lhs: inout Date, rhs: TimeInterval)
}

extension Date : CustomDebugStringConvertible, CustomStringConvertible, CustomReflectable {
  func description(with locale: Locale?) -> String
}

extension Date : _ObjectiveCBridgeable {
}

extension Date : _CustomPlaygroundQuickLookable {
  var summary: String { get }
}

extension Date : Codable {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Date {
  typealias Stride = TimeInterval
  func distance(to other: Date) -> TimeInterval
  func advanced(by n: TimeInterval) -> Date
}

struct DateComponents : ReferenceConvertible, Hashable, Equatable, _MutableBoxing {
  init(calendar: Calendar? = nil, timeZone: TimeZone? = nil, era: Int? = nil, year: Int? = nil, month: Int? = nil, day: Int? = nil, hour: Int? = nil, minute: Int? = nil, second: Int? = nil, nanosecond: Int? = nil, weekday: Int? = nil, weekdayOrdinal: Int? = nil, quarter: Int? = nil, weekOfMonth: Int? = nil, weekOfYear: Int? = nil, yearForWeekOfYear: Int? = nil)
  func _getter(_ x: Int) -> Int?
  static func _setter(_ x: Int?) -> Int
  var calendar: Calendar?
  var timeZone: TimeZone?
  var era: Int?
  var year: Int?
  var month: Int?
  var day: Int?
  var hour: Int?
  var minute: Int?
  var second: Int?
  var nanosecond: Int?
  var weekday: Int?
  var weekdayOrdinal: Int?
  var quarter: Int?
  var weekOfMonth: Int?
  var weekOfYear: Int?
  var yearForWeekOfYear: Int?
  var isLeapMonth: Bool?
  var date: Date? { get }
  @available(macOS 10.9, iOS 8.0, *)
  mutating func setValue(_ value: Int?, for component: Calendar.Component)
  @available(macOS 10.9, iOS 8.0, *)
  func value(for component: Calendar.Component) -> Int?
  @available(macOS 10.9, iOS 8.0, *)
  var isValidDate: Bool { get }
  @available(macOS 10.9, iOS 8.0, *)
  func isValidDate(in calendar: Calendar) -> Bool
  init(reference: __shared NSDateComponents)
}

extension DateComponents : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

extension DateComponents : _ObjectiveCBridgeable {
  static func _getObjectiveCType() -> Any.Type
}

extension DateComponents : Codable {
  enum CodingKeys : Int, CodingKey {
    case calendar
    case timeZone
    case era
    case year
    case month
    case day
    case hour
    case minute
    case second
    case nanosecond
    case weekday
    case weekdayOrdinal
    case quarter
    case weekOfMonth
    case weekOfYear
    case yearForWeekOfYear
  }
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
struct DateInterval : ReferenceConvertible, Comparable, Hashable, Codable {
  var start: Date
  var end: Date
  var duration: TimeInterval
  init()
  init(start: Date, end: Date)
  init(start: Date, duration: TimeInterval)
  func compare(_ dateInterval: DateInterval) -> ComparisonResult
  func intersects(_ dateInterval: DateInterval) -> Bool
  func intersection(with dateInterval: DateInterval) -> DateInterval?
  func contains(_ date: Date) -> Bool
  enum CodingKeys : CodingKey {
    case start
    case duration
  }
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
extension DateInterval : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
extension DateInterval : _ObjectiveCBridgeable {
  static func _getObjectiveCType() -> Any.Type
}

typealias ErrorPointer = NSErrorPointer

struct ErrorUserInfoKey : RawRepresentable, _SwiftNewtypeWrapper, Equatable, Hashable, _ObjectiveCBridgeable {
}

extension ErrorUserInfoKey {
  @available(*, deprecated, renamed: "NSUnderlyingErrorKey")
  static let underlyingErrorKey: ErrorUserInfoKey
  @available(*, deprecated, renamed: "NSLocalizedDescriptionKey")
  static let localizedDescriptionKey: ErrorUserInfoKey
  @available(*, deprecated, renamed: "NSLocalizedFailureReasonErrorKey")
  static let localizedFailureReasonErrorKey: ErrorUserInfoKey
  @available(*, deprecated, renamed: "NSLocalizedRecoverySuggestionErrorKey")
  static let localizedRecoverySuggestionErrorKey: ErrorUserInfoKey
  @available(*, deprecated, renamed: "NSLocalizedRecoveryOptionsErrorKey")
  static let localizedRecoveryOptionsErrorKey: ErrorUserInfoKey
  @available(*, deprecated, renamed: "NSRecoveryAttempterErrorKey")
  static let recoveryAttempterErrorKey: ErrorUserInfoKey
  @available(*, deprecated, renamed: "NSHelpAnchorErrorKey")
  static let helpAnchorErrorKey: ErrorUserInfoKey
  @available(*, deprecated, renamed: "NSStringEncodingErrorKey")
  static let stringEncodingErrorKey: ErrorUserInfoKey
  @available(*, deprecated, renamed: "NSURLErrorKey")
  static let NSURLErrorKey: ErrorUserInfoKey
  @available(*, deprecated, renamed: "NSFilePathErrorKey")
  static let filePathErrorKey: ErrorUserInfoKey
}

struct IndexPath : ReferenceConvertible, Equatable, Hashable, MutableCollection, RandomAccessCollection, Comparable, ExpressibleByArrayLiteral {
  enum Storage : ExpressibleByArrayLiteral {
    typealias Element = Int
    case empty
    case single(Int)
    case pair(Int, Int)
    case array([Int])
    init(_ elements: [Int])
    func dropLast() -> IndexPath.Storage
    mutating func append(_ other: Int)
    mutating func append(contentsOf other: IndexPath.Storage)
    mutating func append(contentsOf other: __owned [Int])
    subscript(index: Int) -> Int
    subscript(range: Range<IndexPath.Index>) -> IndexPath.Storage
    var count: Int { get }
    var startIndex: Int { get }
    var endIndex: Int { get }
    var allValues: [Int] { get }
    func index(before i: Int) -> Int
    func index(after i: Int) -> Int
    var description: String { get }
    func withUnsafeBufferPointer<R>(_ body: (UnsafeBufferPointer<Int>) throws -> R) rethrows -> R
    var debugDescription: String { get }
    static func + (lhs: IndexPath.Storage, rhs: IndexPath.Storage) -> IndexPath.Storage
    static func + (lhs: IndexPath.Storage, rhs: [Int]) -> IndexPath.Storage
    static func == (lhs: IndexPath.Storage, rhs: IndexPath.Storage) -> Bool
  }
  var _indexes: IndexPath.Storage
  init()
  init<ElementSequence>(indexes: ElementSequence) where ElementSequence : Sequence, ElementSequence.Element == IndexPath.Element
  init(indexes: Array<IndexPath.Element>)
  init(storage: IndexPath.Storage)
  init(index: IndexPath.Element)
  func dropLast() -> IndexPath
  mutating func append(_ other: IndexPath)
  mutating func append(_ other: IndexPath.Element)
  mutating func append(_ other: Array<IndexPath.Element>)
  func appending(_ other: IndexPath.Element) -> IndexPath
  func appending(_ other: IndexPath) -> IndexPath
  func appending(_ other: Array<IndexPath.Element>) -> IndexPath
  func compare(_ other: IndexPath) -> ComparisonResult
  init(nsIndexPath: __shared IndexPath.ReferenceType)
  func makeReference() -> IndexPath.ReferenceType
  static func + (lhs: IndexPath, rhs: IndexPath) -> IndexPath
  static func += (lhs: inout IndexPath, rhs: IndexPath)
}

extension IndexPath : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

extension IndexPath : _ObjectiveCBridgeable {
  static func _getObjectiveCType() -> Any.Type
}

extension IndexPath : Codable {
  enum CodingKeys : Int, CodingKey {
    case indexes
  }
}

struct IndexSet : ReferenceConvertible, Equatable, BidirectionalCollection, SetAlgebra {
  struct RangeView : Equatable, BidirectionalCollection {
    var indexSet: IndexSet
    init(indexSet: IndexSet, intersecting range: Range<IndexSet.Element>?)
  }
  var _handle: _MutablePairHandle<NSIndexSet, NSMutableIndexSet>
  init(integersIn range: Range<IndexSet.Element>)
  init<R>(integersIn range: R) where R : RangeExpression, R.Bound == IndexSet.Element
  init(integer: IndexSet.Element)
  var rangeView: IndexSet.RangeView { get }
  func rangeView(of range: Range<IndexSet.Element>) -> IndexSet.RangeView
  func rangeView<R>(of range: R) -> IndexSet.RangeView where R : RangeExpression, R.Bound == IndexSet.Element
  func _indexOfRange(containing integer: IndexSet.Element) -> IndexSet.RangeView.Index?
  func _range(at index: IndexSet.RangeView.Index) -> Range<IndexSet.Element>
  var _rangeCount: Int { get }
  func _toOptional(_ x: Int) -> Int?
  var first: IndexSet.Element? { get }
  var last: IndexSet.Element? { get }
  func integerGreaterThan(_ integer: IndexSet.Element) -> IndexSet.Element?
  func integerLessThan(_ integer: IndexSet.Element) -> IndexSet.Element?
  func integerGreaterThanOrEqualTo(_ integer: IndexSet.Element) -> IndexSet.Element?
  func integerLessThanOrEqualTo(_ integer: IndexSet.Element) -> IndexSet.Element?
  func indexRange(in range: Range<IndexSet.Element>) -> Range<IndexSet.Index>
  func indexRange<R>(in range: R) -> Range<IndexSet.Index> where R : RangeExpression, R.Bound == IndexSet.Element
  func count(in range: Range<IndexSet.Element>) -> Int
  func count<R>(in range: R) -> Int where R : RangeExpression, R.Bound == IndexSet.Element
  func contains(integersIn range: Range<IndexSet.Element>) -> Bool
  func contains<R>(integersIn range: R) -> Bool where R : RangeExpression, R.Bound == IndexSet.Element
  func contains(integersIn indexSet: IndexSet) -> Bool
  func intersects(integersIn range: Range<IndexSet.Element>) -> Bool
  func intersects<R>(integersIn range: R) -> Bool where R : RangeExpression, R.Bound == IndexSet.Element
  func _index(ofInteger integer: IndexSet.Element) -> IndexSet.Index
  mutating func removeAll()
  mutating func insert(integersIn range: Range<IndexSet.Element>)
  mutating func insert<R>(integersIn range: R) where R : RangeExpression, R.Bound == IndexSet.Element
  mutating func remove(integersIn range: Range<IndexSet.Element>)
  mutating func remove(integersIn range: ClosedRange<IndexSet.Element>)
  func filteredIndexSet(in range: Range<IndexSet.Element>, includeInteger: (IndexSet.Element) throws -> Bool) rethrows -> IndexSet
  func filteredIndexSet(in range: ClosedRange<IndexSet.Element>, includeInteger: (IndexSet.Element) throws -> Bool) rethrows -> IndexSet
  func filteredIndexSet(includeInteger: (IndexSet.Element) throws -> Bool) rethrows -> IndexSet
  mutating func shift(startingAt integer: IndexSet.Element, by delta: Int)
  @inline(__always) mutating func _applyMutation<ReturnType>(_ whatToDo: (NSMutableIndexSet) throws -> ReturnType) rethrows -> ReturnType
  var reference: NSIndexSet { get }
  init(reference: __shared NSIndexSet)
}

extension IndexSet : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

extension IndexSet {
}

extension IndexSet : _ObjectiveCBridgeable {
  static func _getObjectiveCType() -> Any.Type
}

extension IndexSet : Codable {
  enum CodingKeys : Int, CodingKey {
    case indexes
  }
  enum RangeCodingKeys : Int, CodingKey {
    case location
    case length
  }
}

extension IndexSet.RangeView {
}

extension IndexSet.Index {
}

struct IndexSetBoundaryIterator : IteratorProtocol {
  var i1: IndexSet.RangeView.Iterator
  var i2: IndexSet.RangeView.Iterator
  var i1Range: Range<IndexSetBoundaryIterator.Element>?
  var i2Range: Range<IndexSetBoundaryIterator.Element>?
  var i1UsedLower: Bool
  var i2UsedLower: Bool
  init(_ is1: IndexSet, _ is2: IndexSet)
}

class JSONDecoder {
  enum DateDecodingStrategy {
    case deferredToDate
    case secondsSince1970
    case millisecondsSince1970
    @available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
    case iso8601
    case formatted(DateFormatter)
    case custom((Decoder) throws -> Date)
  }
  enum DataDecodingStrategy {
    case deferredToData
    case base64
    case custom((Decoder) throws -> Data)
  }
  enum NonConformingFloatDecodingStrategy {
    case `throw`
    case convertFromString(positiveInfinity: String, negativeInfinity: String, nan: String)
  }
  enum KeyDecodingStrategy {
    case useDefaultKeys
    case convertFromSnakeCase
    case custom(([CodingKey]) -> CodingKey)
    static func _convertFromSnakeCase(_ stringKey: String) -> String
  }
  var dateDecodingStrategy: JSONDecoder.DateDecodingStrategy
  var dataDecodingStrategy: JSONDecoder.DataDecodingStrategy
  var nonConformingFloatDecodingStrategy: JSONDecoder.NonConformingFloatDecodingStrategy
  var keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy
  var userInfo: [CodingUserInfoKey : Any]
  struct _Options {
    let dateDecodingStrategy: JSONDecoder.DateDecodingStrategy
    let dataDecodingStrategy: JSONDecoder.DataDecodingStrategy
    let nonConformingFloatDecodingStrategy: JSONDecoder.NonConformingFloatDecodingStrategy
    let keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy
    let userInfo: [CodingUserInfoKey : Any]
    init(dateDecodingStrategy: JSONDecoder.DateDecodingStrategy, dataDecodingStrategy: JSONDecoder.DataDecodingStrategy, nonConformingFloatDecodingStrategy: JSONDecoder.NonConformingFloatDecodingStrategy, keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy, userInfo: [CodingUserInfoKey : Any])
  }
  var options: JSONDecoder._Options { get }
  init()
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension JSONDecoder : TopLevelDecoder {
}

class JSONEncoder {
  struct OutputFormatting : OptionSet {
    static let prettyPrinted: JSONEncoder.OutputFormatting
    @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
    static let sortedKeys: JSONEncoder.OutputFormatting
    @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
    static let withoutEscapingSlashes: JSONEncoder.OutputFormatting
  }
  enum DateEncodingStrategy {
    case deferredToDate
    case secondsSince1970
    case millisecondsSince1970
    @available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
    case iso8601
    case formatted(DateFormatter)
    case custom((Date, Encoder) throws -> Void)
  }
  enum DataEncodingStrategy {
    case deferredToData
    case base64
    case custom((Data, Encoder) throws -> Void)
  }
  enum NonConformingFloatEncodingStrategy {
    case `throw`
    case convertToString(positiveInfinity: String, negativeInfinity: String, nan: String)
  }
  enum KeyEncodingStrategy {
    case useDefaultKeys
    case convertToSnakeCase
    case custom(([CodingKey]) -> CodingKey)
    static func _convertToSnakeCase(_ stringKey: String) -> String
  }
  var outputFormatting: JSONEncoder.OutputFormatting
  var dateEncodingStrategy: JSONEncoder.DateEncodingStrategy
  var dataEncodingStrategy: JSONEncoder.DataEncodingStrategy
  var nonConformingFloatEncodingStrategy: JSONEncoder.NonConformingFloatEncodingStrategy
  var keyEncodingStrategy: JSONEncoder.KeyEncodingStrategy
  var userInfo: [CodingUserInfoKey : Any]
  struct _Options {
    let dateEncodingStrategy: JSONEncoder.DateEncodingStrategy
    let dataEncodingStrategy: JSONEncoder.DataEncodingStrategy
    let nonConformingFloatEncodingStrategy: JSONEncoder.NonConformingFloatEncodingStrategy
    let keyEncodingStrategy: JSONEncoder.KeyEncodingStrategy
    let userInfo: [CodingUserInfoKey : Any]
    init(dateEncodingStrategy: JSONEncoder.DateEncodingStrategy, dataEncodingStrategy: JSONEncoder.DataEncodingStrategy, nonConformingFloatEncodingStrategy: JSONEncoder.NonConformingFloatEncodingStrategy, keyEncodingStrategy: JSONEncoder.KeyEncodingStrategy, userInfo: [CodingUserInfoKey : Any])
  }
  var options: JSONEncoder._Options { get }
  init()
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension JSONEncoder : TopLevelEncoder {
}

struct Locale : Hashable, Equatable, ReferenceConvertible {
  typealias LanguageDirection = NSLocale.LanguageDirection
  var _wrapped: NSLocale
  var _autoupdating: Bool
  static var autoupdatingCurrent: Locale { get }
  static var current: Locale { get }
  init(identifier: String)
  init(reference: __shared NSLocale)
  init(adoptingReference reference: NSLocale, autoupdating: Bool)
  func localizedString(forIdentifier identifier: String) -> String?
  func localizedString(forLanguageCode languageCode: String) -> String?
  func localizedString(forRegionCode regionCode: String) -> String?
  func localizedString(forScriptCode scriptCode: String) -> String?
  func localizedString(forVariantCode variantCode: String) -> String?
  func localizedString(for calendarIdentifier: Calendar.Identifier) -> String?
  func localizedString(forCurrencyCode currencyCode: String) -> String?
  func localizedString(forCollationIdentifier collationIdentifier: String) -> String?
  func localizedString(forCollatorIdentifier collatorIdentifier: String) -> String?
  var identifier: String { get }
  var languageCode: String? { get }
  var regionCode: String? { get }
  var scriptCode: String? { get }
  var variantCode: String? { get }
  var exemplarCharacterSet: CharacterSet? { get }
  var calendar: Calendar { get }
  var collationIdentifier: String? { get }
  var usesMetricSystem: Bool { get }
  var decimalSeparator: String? { get }
  var groupingSeparator: String? { get }
  var currencySymbol: String? { get }
  var currencyCode: String? { get }
  var collatorIdentifier: String? { get }
  var quotationBeginDelimiter: String? { get }
  var quotationEndDelimiter: String? { get }
  var alternateQuotationBeginDelimiter: String? { get }
  var alternateQuotationEndDelimiter: String? { get }
  static var availableIdentifiers: [String] { get }
  static var isoLanguageCodes: [String] { get }
  static var isoRegionCodes: [String] { get }
  static var isoCurrencyCodes: [String] { get }
  static var commonISOCurrencyCodes: [String] { get }
  static var preferredLanguages: [String] { get }
  static func components(fromIdentifier string: String) -> [String : String]
  static func identifier(fromComponents components: [String : String]) -> String
  static func canonicalIdentifier(from string: String) -> String
  static func canonicalLanguageIdentifier(from string: String) -> String
  static func identifier(fromWindowsLocaleCode code: Int) -> String?
  static func windowsLocaleCode(fromIdentifier identifier: String) -> Int?
  static func characterDirection(forLanguage isoLangCode: String) -> Locale.LanguageDirection
  static func lineDirection(forLanguage isoLangCode: String) -> Locale.LanguageDirection
}

extension Locale : CustomDebugStringConvertible, CustomStringConvertible, CustomReflectable {
  var _kindDescription: String { get }
}

extension Locale : _ObjectiveCBridgeable {
}

extension Locale : Codable {
  enum CodingKeys : Int, CodingKey {
    case identifier
  }
}

protocol LocalizedError : Error {
  var errorDescription: String? { get }
  var failureReason: String? { get }
  var recoverySuggestion: String? { get }
  var helpAnchor: String? { get }
}

extension LocalizedError {
  var errorDescription: String? { get }
  var failureReason: String? { get }
  var recoverySuggestion: String? { get }
  var helpAnchor: String? { get }
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
typealias Lock = os_unfair_lock_t

struct MachError : _BridgedStoredNSError {
}

extension MachError {
  static var success: MachError.Code { get }
  static var invalidAddress: MachError.Code { get }
  static var protectionFailure: MachError.Code { get }
  static var noSpace: MachError.Code { get }
  static var invalidArgument: MachError.Code { get }
  static var failure: MachError.Code { get }
  static var resourceShortage: MachError.Code { get }
  static var notReceiver: MachError.Code { get }
  static var noAccess: MachError.Code { get }
  static var memoryFailure: MachError.Code { get }
  static var memoryError: MachError.Code { get }
  static var alreadyInSet: MachError.Code { get }
  static var notInSet: MachError.Code { get }
  static var nameExists: MachError.Code { get }
  static var aborted: MachError.Code { get }
  static var invalidName: MachError.Code { get }
  static var invalidTask: MachError.Code { get }
  static var invalidRight: MachError.Code { get }
  static var invalidValue: MachError.Code { get }
  static var userReferencesOverflow: MachError.Code { get }
  static var invalidCapability: MachError.Code { get }
  static var rightExists: MachError.Code { get }
  static var invalidHost: MachError.Code { get }
  static var memoryPresent: MachError.Code { get }
  static var memoryDataMoved: MachError.Code { get }
  static var memoryRestartCopy: MachError.Code { get }
  static var invalidProcessorSet: MachError.Code { get }
  static var policyLimit: MachError.Code { get }
  static var invalidPolicy: MachError.Code { get }
  static var invalidObject: MachError.Code { get }
  static var alreadyWaiting: MachError.Code { get }
  static var defaultSet: MachError.Code { get }
  static var exceptionProtected: MachError.Code { get }
  static var invalidLedger: MachError.Code { get }
  static var invalidMemoryControl: MachError.Code { get }
  static var invalidSecurity: MachError.Code { get }
  static var notDepressed: MachError.Code { get }
  static var terminated: MachError.Code { get }
  static var lockSetDestroyed: MachError.Code { get }
  static var lockUnstable: MachError.Code { get }
  static var lockOwned: MachError.Code { get }
  static var lockOwnedSelf: MachError.Code { get }
  static var semaphoreDestroyed: MachError.Code { get }
  static var rpcServerTerminated: MachError.Code { get }
  static var rpcTerminateOrphan: MachError.Code { get }
  static var rpcContinueOrphan: MachError.Code { get }
  static var notSupported: MachError.Code { get }
  static var nodeDown: MachError.Code { get }
  static var notWaiting: MachError.Code { get }
  static var operationTimedOut: MachError.Code { get }
  static var codesignError: MachError.Code { get }
  static var policyStatic: MachError.Code { get }
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
struct Measurement<UnitType> : ReferenceConvertible, Comparable, Equatable where UnitType : Unit {
  let unit: UnitType
  var value: Double
  init(value: Double, unit: UnitType)
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
extension Measurement : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
extension Measurement where UnitType : Dimension {
  func converted(to otherUnit: UnitType) -> Measurement<UnitType>
  mutating func convert(to otherUnit: UnitType)
  static func + (lhs: Measurement<UnitType>, rhs: Measurement<UnitType>) -> Measurement<UnitType>
  static func - (lhs: Measurement<UnitType>, rhs: Measurement<UnitType>) -> Measurement<UnitType>
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
extension Measurement {
  static func + (lhs: Measurement<UnitType>, rhs: Measurement<UnitType>) -> Measurement<UnitType>
  static func - (lhs: Measurement<UnitType>, rhs: Measurement<UnitType>) -> Measurement<UnitType>
  static func * (lhs: Measurement<UnitType>, rhs: Double) -> Measurement<UnitType>
  static func * (lhs: Double, rhs: Measurement<UnitType>) -> Measurement<UnitType>
  static func / (lhs: Measurement<UnitType>, rhs: Double) -> Measurement<UnitType>
  static func / (lhs: Double, rhs: Measurement<UnitType>) -> Measurement<UnitType>
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
extension Measurement : MeasurementBridgeType {
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
extension Measurement : Codable {
  enum CodingKeys : Int, CodingKey {
    case value
    case unit
  }
  enum UnitCodingKeys : Int, CodingKey {
    case symbol
    case converter
  }
  enum LinearConverterCodingKeys : Int, CodingKey {
    case coefficient
    case constant
  }
}

@usableFromInline
typealias MeasurementBridgeType = _ObjectiveCBridgeable

protocol MutableDataProtocol : DataProtocol, MutableCollection, RangeReplaceableCollection {
  mutating func resetBytes<R>(in range: R) where R : RangeExpression, Self.Index == R.Bound
}

extension MutableDataProtocol {
  mutating func resetBytes<R>(in range: R) where R : RangeExpression, Self.Index == R.Bound
}

@available(*, deprecated, message: "Please use the struct type URLRequest")
typealias MutableURLRequest = NSMutableURLRequest

typealias NSErrorPointer = AutoreleasingUnsafeMutablePointer<NSError?>?

struct NSFastEnumerationIterator : IteratorProtocol {
  var enumerable: NSFastEnumeration
  var objects: (Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?, Unmanaged<AnyObject>?)
  var state: NSFastEnumerationState
  var index: Int
  var count: Int
  var useObjectsBuffer: Bool
  init(_ enumerable: NSFastEnumeration)
}

struct NSIndexSetIterator : IteratorProtocol {
  let _set: NSIndexSet
  var _first: Bool
  var _current: Int?
  init(set: NSIndexSet)
}

@objc(_NSKeyValueObservation) class NSKeyValueObservation : NSObject {
  class Helper : NSObject {
    @nonobjc weak var object: @sil_weak NSObject?
    @nonobjc let path: String
    @nonobjc let callback: (NSObject, NSKeyValueObservedChange<Any>) -> Void
    @nonobjc static let swizzler: ()
    @nonobjc init(object: NSObject, keyPath: AnyKeyPath, options: NSKeyValueObservingOptions, callback: @escaping (NSObject, NSKeyValueObservedChange<Any>) -> Void)
    @nonobjc func invalidate()
    @nonobjc func associationKey() -> UnsafeRawPointer
    @objc func _swizzle_me_observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSString : Any]?, context: UnsafeMutableRawPointer?)
  }
  @nonobjc let helper: NSKeyValueObservation.Helper
  init(object: NSObject, keyPath: AnyKeyPath, options: NSKeyValueObservingOptions, callback: @escaping (NSObject, NSKeyValueObservedChange<Any>) -> Void)
  @objc func invalidate()
}

struct NSKeyValueObservedChange<Value> {
  typealias Kind = NSKeyValueChange
  let kind: NSKeyValueObservedChange<Value>.Kind
  let newValue: Value?
  let oldValue: Value?
  let indexes: IndexSet?
  let isPrior: Bool
  init(kind: NSKeyValueObservedChange<Value>.Kind, newValue: Value?, oldValue: Value?, indexes: IndexSet?, isPrior: Bool)
}

protocol NSKeyValueObservingCustomization : NSObjectProtocol {
  static func keyPathsAffectingValue(for key: AnyKeyPath) -> Set<AnyKeyPath>
  static func automaticallyNotifiesObservers(for key: AnyKeyPath) -> Bool
}

func NSLocalizedString(_ key: String, tableName: String? = nil, bundle: Bundle = Bundle.main, value: String = "", comment: String) -> String

func NSLog(_ format: String, _ args: CVarArg...)

let NSNotFound: Int

struct Notification : ReferenceConvertible, Equatable, Hashable {
  var name: Notification.Name
  var object: Any?
  var userInfo: [AnyHashable : Any]?
  init(name: Notification.Name, object: Any? = nil, userInfo: [AnyHashable : Any]? = nil)
  typealias Name = NSNotification.Name
}

extension Notification : CustomReflectable {
}

extension Notification : _ObjectiveCBridgeable {
  static func _getObjectiveCType() -> Any.Type
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Notification {
  final class Subscription<S> : Subscription, CustomStringConvertible, CustomReflectable, CustomPlaygroundDisplayConvertible where S : Subscriber, S.Input == Notification {
    let lock: Lock
    let downstreamLock: RecursiveLock
    var demand: Subscribers.Demand
    var center: NotificationCenter?
    let name: Notification.Name
    var object: AnyObject?
    var observation: AnyObject?
    init(_ center: NotificationCenter, _ name: Notification.Name, _ object: AnyObject?, _ next: S)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
typealias ObservableObject = ObservableObject

struct POSIXError : _BridgedStoredNSError {
}

extension POSIXError {
  static var EPERM: POSIXErrorCode { get }
  static var ENOENT: POSIXErrorCode { get }
  static var ESRCH: POSIXErrorCode { get }
  static var EINTR: POSIXErrorCode { get }
  static var EIO: POSIXErrorCode { get }
  static var ENXIO: POSIXErrorCode { get }
  static var E2BIG: POSIXErrorCode { get }
  static var ENOEXEC: POSIXErrorCode { get }
  static var EBADF: POSIXErrorCode { get }
  static var ECHILD: POSIXErrorCode { get }
  static var EDEADLK: POSIXErrorCode { get }
  static var ENOMEM: POSIXErrorCode { get }
  static var EACCES: POSIXErrorCode { get }
  static var EFAULT: POSIXErrorCode { get }
  static var ENOTBLK: POSIXErrorCode { get }
  static var EBUSY: POSIXErrorCode { get }
  static var EEXIST: POSIXErrorCode { get }
  static var EXDEV: POSIXErrorCode { get }
  static var ENODEV: POSIXErrorCode { get }
  static var ENOTDIR: POSIXErrorCode { get }
  static var EISDIR: POSIXErrorCode { get }
  static var EINVAL: POSIXErrorCode { get }
  static var ENFILE: POSIXErrorCode { get }
  static var EMFILE: POSIXErrorCode { get }
  static var ENOTTY: POSIXErrorCode { get }
  static var ETXTBSY: POSIXErrorCode { get }
  static var EFBIG: POSIXErrorCode { get }
  static var ENOSPC: POSIXErrorCode { get }
  static var ESPIPE: POSIXErrorCode { get }
  static var EROFS: POSIXErrorCode { get }
  static var EMLINK: POSIXErrorCode { get }
  static var EPIPE: POSIXErrorCode { get }
  static var EDOM: POSIXErrorCode { get }
  static var ERANGE: POSIXErrorCode { get }
  static var EAGAIN: POSIXErrorCode { get }
  static var EWOULDBLOCK: POSIXErrorCode { get }
  static var EINPROGRESS: POSIXErrorCode { get }
  static var EALREADY: POSIXErrorCode { get }
  static var ENOTSOCK: POSIXErrorCode { get }
  static var EDESTADDRREQ: POSIXErrorCode { get }
  static var EMSGSIZE: POSIXErrorCode { get }
  static var EPROTOTYPE: POSIXErrorCode { get }
  static var ENOPROTOOPT: POSIXErrorCode { get }
  static var EPROTONOSUPPORT: POSIXErrorCode { get }
  static var ESOCKTNOSUPPORT: POSIXErrorCode { get }
  static var ENOTSUP: POSIXErrorCode { get }
  static var EPFNOSUPPORT: POSIXErrorCode { get }
  static var EAFNOSUPPORT: POSIXErrorCode { get }
  static var EADDRINUSE: POSIXErrorCode { get }
  static var EADDRNOTAVAIL: POSIXErrorCode { get }
  static var ENETDOWN: POSIXErrorCode { get }
  static var ENETUNREACH: POSIXErrorCode { get }
  static var ENETRESET: POSIXErrorCode { get }
  static var ECONNABORTED: POSIXErrorCode { get }
  static var ECONNRESET: POSIXErrorCode { get }
  static var ENOBUFS: POSIXErrorCode { get }
  static var EISCONN: POSIXErrorCode { get }
  static var ENOTCONN: POSIXErrorCode { get }
  static var ESHUTDOWN: POSIXErrorCode { get }
  static var ETOOMANYREFS: POSIXErrorCode { get }
  static var ETIMEDOUT: POSIXErrorCode { get }
  static var ECONNREFUSED: POSIXErrorCode { get }
  static var ELOOP: POSIXErrorCode { get }
  static var ENAMETOOLONG: POSIXErrorCode { get }
  static var EHOSTDOWN: POSIXErrorCode { get }
  static var EHOSTUNREACH: POSIXErrorCode { get }
  static var ENOTEMPTY: POSIXErrorCode { get }
  static var EPROCLIM: POSIXErrorCode { get }
  static var EUSERS: POSIXErrorCode { get }
  static var EDQUOT: POSIXErrorCode { get }
  static var ESTALE: POSIXErrorCode { get }
  static var EREMOTE: POSIXErrorCode { get }
  static var EBADRPC: POSIXErrorCode { get }
  static var ERPCMISMATCH: POSIXErrorCode { get }
  static var EPROGUNAVAIL: POSIXErrorCode { get }
  static var EPROGMISMATCH: POSIXErrorCode { get }
  static var EPROCUNAVAIL: POSIXErrorCode { get }
  static var ENOLCK: POSIXErrorCode { get }
  static var ENOSYS: POSIXErrorCode { get }
  static var EFTYPE: POSIXErrorCode { get }
  static var EAUTH: POSIXErrorCode { get }
  static var ENEEDAUTH: POSIXErrorCode { get }
  static var EPWROFF: POSIXErrorCode { get }
  static var EDEVERR: POSIXErrorCode { get }
  static var EOVERFLOW: POSIXErrorCode { get }
  static var EBADEXEC: POSIXErrorCode { get }
  static var EBADARCH: POSIXErrorCode { get }
  static var ESHLIBVERS: POSIXErrorCode { get }
  static var EBADMACHO: POSIXErrorCode { get }
  static var ECANCELED: POSIXErrorCode { get }
  static var EIDRM: POSIXErrorCode { get }
  static var ENOMSG: POSIXErrorCode { get }
  static var EILSEQ: POSIXErrorCode { get }
  static var ENOATTR: POSIXErrorCode { get }
  static var EBADMSG: POSIXErrorCode { get }
  static var EMULTIHOP: POSIXErrorCode { get }
  static var ENODATA: POSIXErrorCode { get }
  static var ENOLINK: POSIXErrorCode { get }
  static var ENOSR: POSIXErrorCode { get }
  static var ENOSTR: POSIXErrorCode { get }
  static var EPROTO: POSIXErrorCode { get }
  static var ETIME: POSIXErrorCode { get }
  static var ENOPOLICY: POSIXErrorCode { get }
  static var ENOTRECOVERABLE: POSIXErrorCode { get }
  static var EOWNERDEAD: POSIXErrorCode { get }
  static var EQFULL: POSIXErrorCode { get }
}

@available(macOS 10.11, iOS 9.0, *)
struct PersonNameComponents : ReferenceConvertible, Hashable, Equatable, _MutableBoxing {
  init()
  init(reference: __shared NSPersonNameComponents)
  var namePrefix: String?
  var givenName: String?
  var middleName: String?
  var familyName: String?
  var nameSuffix: String?
  var nickname: String?
  var phoneticRepresentation: PersonNameComponents?
}

@available(macOS 10.11, iOS 9.0, *)
extension PersonNameComponents : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

@available(macOS 10.11, iOS 9.0, *)
extension PersonNameComponents : _ObjectiveCBridgeable {
  static func _getObjectiveCType() -> Any.Type
}

@available(macOS 10.11, iOS 9.0, *)
extension PersonNameComponents : Codable {
  enum CodingKeys : Int, CodingKey {
    case namePrefix
    case givenName
    case middleName
    case familyName
    case nameSuffix
    case nickname
  }
}

class PropertyListDecoder {
  var userInfo: [CodingUserInfoKey : Any]
  struct _Options {
    let userInfo: [CodingUserInfoKey : Any]
    init(userInfo: [CodingUserInfoKey : Any])
  }
  var options: PropertyListDecoder._Options { get }
  init()
  func decode<T>(_ type: T.Type, from data: Data, format: inout PropertyListSerialization.PropertyListFormat) throws -> T where T : Decodable
  func decode<T>(_ type: T.Type, fromTopLevel container: Any) throws -> T where T : Decodable
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension PropertyListDecoder : TopLevelDecoder {
}

class PropertyListEncoder {
  var outputFormat: PropertyListSerialization.PropertyListFormat
  var userInfo: [CodingUserInfoKey : Any]
  struct _Options {
    let outputFormat: PropertyListSerialization.PropertyListFormat
    let userInfo: [CodingUserInfoKey : Any]
    init(outputFormat: PropertyListSerialization.PropertyListFormat, userInfo: [CodingUserInfoKey : Any])
  }
  var options: PropertyListEncoder._Options { get }
  init()
  func encodeToTopLevelContainer<Value>(_ value: Value) throws -> Any where Value : Encodable
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension PropertyListEncoder : TopLevelEncoder {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
typealias Published = Published

protocol RecoverableError : Error {
  var recoveryOptions: [String] { get }
  func attemptRecovery(optionIndex recoveryOptionIndex: Int, resultHandler handler: @escaping (Bool) -> Void)
  func attemptRecovery(optionIndex recoveryOptionIndex: Int) -> Bool
}

extension RecoverableError {
  func attemptRecovery(optionIndex recoveryOptionIndex: Int, resultHandler handler: @escaping (Bool) -> Void)
}

@available(macOS 10.14, iOS 12.0, tvOS 12.0, watchOS 5.0, *)
struct RecursiveLock {
  let lockPtr: UnsafeMutablePointer<pthread_mutex_t>
  init()
  func cleanupLock()
  func lock()
  func tryLock() -> Bool
  func unlock()
}

protocol ReferenceConvertible : CustomDebugStringConvertible, CustomStringConvertible, Hashable, _ObjectiveCBridgeable {
  associatedtype ReferenceType : NSObject, NSCopying
}

struct TimeZone : Hashable, Equatable, ReferenceConvertible {
  var _wrapped: NSTimeZone
  var _autoupdating: Bool
  static var current: TimeZone { get }
  static var autoupdatingCurrent: TimeZone { get }
  init?(identifier: __shared String)
  init?(secondsFromGMT seconds: Int)
  init?(abbreviation: __shared String)
  init(reference: NSTimeZone)
  init(adoptingReference reference: NSTimeZone, autoupdating: Bool)
  var identifier: String { get }
  func secondsFromGMT(for date: Date = Date()) -> Int
  func abbreviation(for date: Date = Date()) -> String?
  func isDaylightSavingTime(for date: Date = Date()) -> Bool
  func daylightSavingTimeOffset(for date: Date = Date()) -> TimeInterval
  func nextDaylightSavingTimeTransition(after date: Date) -> Date?
  static var knownTimeZoneIdentifiers: [String] { get }
  static var abbreviationDictionary: [String : String]
  static var timeZoneDataVersion: String { get }
  var nextDaylightSavingTimeTransition: Date? { get }
  func localizedName(for style: NSTimeZone.NameStyle, locale: Locale?) -> String?
}

extension TimeZone : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
  var _kindDescription: String { get }
}

extension TimeZone : _ObjectiveCBridgeable {
}

extension TimeZone : Codable {
  enum CodingKeys : Int, CodingKey {
    case identifier
  }
}

struct URL : ReferenceConvertible, Equatable {
  var _url: NSURL
  typealias BookmarkResolutionOptions = NSURL.BookmarkResolutionOptions
  typealias BookmarkCreationOptions = NSURL.BookmarkCreationOptions
  init?(string: __shared String)
  init?(string: __shared String, relativeTo url: __shared URL?)
  @available(macOS 10.11, iOS 9.0, *)
  init(fileURLWithPath path: __shared String, isDirectory: Bool, relativeTo base: __shared URL?)
  @available(macOS 10.11, iOS 9.0, *)
  init(fileURLWithPath path: __shared String, relativeTo base: __shared URL?)
  init(fileURLWithPath path: __shared String, isDirectory: Bool)
  init(fileURLWithPath path: __shared String)
  @available(macOS 10.11, iOS 9.0, *)
  init?(dataRepresentation: __shared Data, relativeTo url: __shared URL?, isAbsolute: Bool = false)
  @available(swift 4.2)
  init(resolvingBookmarkData data: __shared Data, options: URL.BookmarkResolutionOptions = [], relativeTo url: __shared URL? = nil, bookmarkDataIsStale: inout Bool) throws
  @available(macOS 10.10, iOS 8.0, *)
  init(resolvingAliasFileAt url: __shared URL, options: URL.BookmarkResolutionOptions = []) throws
  init(fileURLWithFileSystemRepresentation path: UnsafePointer<Int8>, isDirectory: Bool, relativeTo baseURL: __shared URL?)
  @available(macOS 10.11, iOS 9.0, *)
  var dataRepresentation: Data { get }
  var absoluteString: String { get }
  var relativeString: String { get }
  var baseURL: URL? { get }
  var absoluteURL: URL { get }
  var scheme: String? { get }
  var isFileURL: Bool { get }
  var host: String? { get }
  var port: Int? { get }
  var user: String? { get }
  var password: String? { get }
  var path: String { get }
  var relativePath: String { get }
  var fragment: String? { get }
  var query: String? { get }
  @available(macOS 10.11, iOS 9.0, *)
  var hasDirectoryPath: Bool { get }
  @available(macOS 10.9, iOS 7.0, *)
  func withUnsafeFileSystemRepresentation<ResultType>(_ block: (UnsafePointer<Int8>?) throws -> ResultType) rethrows -> ResultType
  var pathComponents: [String] { get }
  var lastPathComponent: String { get }
  var pathExtension: String { get }
  func appendingPathComponent(_ pathComponent: String, isDirectory: Bool) -> URL
  func appendingPathComponent(_ pathComponent: String) -> URL
  func deletingLastPathComponent() -> URL
  func appendingPathExtension(_ pathExtension: String) -> URL
  func deletingPathExtension() -> URL
  mutating func appendPathComponent(_ pathComponent: String, isDirectory: Bool)
  mutating func appendPathComponent(_ pathComponent: String)
  mutating func appendPathExtension(_ pathExtension: String)
  mutating func deleteLastPathComponent()
  mutating func deletePathExtension()
  var standardized: URL { get }
  mutating func standardize()
  var standardizedFileURL: URL { get }
  func resolvingSymlinksInPath() -> URL
  mutating func resolveSymlinksInPath()
  func checkResourceIsReachable() throws -> Bool
  @available(macOS 10.10, iOS 8.0, *)
  func checkPromisedItemIsReachable() throws -> Bool
  mutating func setResourceValues(_ values: URLResourceValues) throws
  func resourceValues(forKeys keys: Set<URLResourceKey>) throws -> URLResourceValues
  mutating func setTemporaryResourceValue(_ value: Any, forKey key: URLResourceKey)
  mutating func removeAllCachedResourceValues()
  mutating func removeCachedResourceValue(forKey key: URLResourceKey)
  @available(macOS 10.10, iOS 8.0, *)
  func promisedItemResourceValues(forKeys keys: Set<URLResourceKey>) throws -> URLResourceValues
  func bookmarkData(options: URL.BookmarkCreationOptions = [], includingResourceValuesForKeys keys: Set<URLResourceKey>? = nil, relativeTo url: URL? = nil) throws -> Data
  static func resourceValues(forKeys keys: Set<URLResourceKey>, fromBookmarkData data: Data) -> URLResourceValues?
  static func writeBookmarkData(_ data: Data, to url: URL) throws
  static func bookmarkData(withContentsOf url: URL) throws -> Data
  @available(macOS 10.7, iOS 8.0, *)
  func startAccessingSecurityScopedResource() -> Bool
  @available(macOS 10.7, iOS 8.0, *)
  func stopAccessingSecurityScopedResource()
  static func _converted(from url: NSURL) -> NSURL
  init(reference: __shared NSURL)
  var reference: NSURL { get }
}

extension URL : _ObjectiveCBridgeable {
}

extension URL : CustomStringConvertible, CustomDebugStringConvertible {
}

extension URL : _CustomPlaygroundQuickLookable {
}

extension URL : Codable {
  enum CodingKeys : Int, CodingKey {
    case base
    case relative
  }
}

extension URL : _ExpressibleByFileReferenceLiteral {
}

struct URLComponents : ReferenceConvertible, Hashable, Equatable, _MutableBoxing {
  init()
  init?(url: __shared URL, resolvingAgainstBaseURL resolve: Bool)
  init?(string: __shared String)
  var url: URL? { get }
  func url(relativeTo base: URL?) -> URL?
  @available(macOS 10.10, iOS 8.0, *)
  var string: String? { get }
  var scheme: String?
  var user: String?
  var password: String?
  var host: String?
  var port: Int?
  var path: String
  var query: String?
  var fragment: String?
  var percentEncodedUser: String?
  var percentEncodedPassword: String?
  var percentEncodedHost: String?
  var percentEncodedPath: String
  var percentEncodedQuery: String?
  var percentEncodedFragment: String?
  @available(macOS 10.11, iOS 9.0, *)
  func _toStringRange(_ r: NSRange) -> Range<String.Index>?
  @available(macOS 10.11, iOS 9.0, *)
  var rangeOfScheme: Range<String.Index>? { get }
  @available(macOS 10.11, iOS 9.0, *)
  var rangeOfUser: Range<String.Index>? { get }
  @available(macOS 10.11, iOS 9.0, *)
  var rangeOfPassword: Range<String.Index>? { get }
  @available(macOS 10.11, iOS 9.0, *)
  var rangeOfHost: Range<String.Index>? { get }
  @available(macOS 10.11, iOS 9.0, *)
  var rangeOfPort: Range<String.Index>? { get }
  @available(macOS 10.11, iOS 9.0, *)
  var rangeOfPath: Range<String.Index>? { get }
  @available(macOS 10.11, iOS 9.0, *)
  var rangeOfQuery: Range<String.Index>? { get }
  @available(macOS 10.11, iOS 9.0, *)
  var rangeOfFragment: Range<String.Index>? { get }
  @available(macOS 10.10, iOS 8.0, *)
  var queryItems: [URLQueryItem]?
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
  var percentEncodedQueryItems: [URLQueryItem]?
  init(reference: __shared NSURLComponents)
}

extension URLComponents : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

extension URLComponents : _ObjectiveCBridgeable {
  static func _getObjectiveCType() -> Any.Type
}

extension URLComponents : Codable {
  enum CodingKeys : Int, CodingKey {
    case scheme
    case user
    case password
    case host
    case port
    case path
    case query
    case fragment
  }
}

struct URLError : _BridgedStoredNSError {
}

extension URLError {
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  enum BackgroundTaskCancelledReason : Int {
    case userForceQuitApplication
    case backgroundUpdatesDisabled
    case insufficientSystemResources
  }
}

extension URLError {
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  enum NetworkUnavailableReason : Int {
    case cellular
    case expensive
    case constrained
  }
}

extension URLError {
  var _nsUserInfo: [AnyHashable : Any] { get }
  var failingURL: URL? { get }
  var failureURLString: String? { get }
  var failureURLPeerTrust: SecTrust? { get }
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  var backgroundTaskCancelledReason: URLError.BackgroundTaskCancelledReason? { get }
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  var networkUnavailableReason: URLError.NetworkUnavailableReason? { get }
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  var downloadTaskResumeData: Data? { get }
}

extension URLError {
  static var unknown: URLError.Code { get }
  static var cancelled: URLError.Code { get }
  static var badURL: URLError.Code { get }
  static var timedOut: URLError.Code { get }
  static var unsupportedURL: URLError.Code { get }
  static var cannotFindHost: URLError.Code { get }
  static var cannotConnectToHost: URLError.Code { get }
  static var networkConnectionLost: URLError.Code { get }
  static var dnsLookupFailed: URLError.Code { get }
  static var httpTooManyRedirects: URLError.Code { get }
  static var resourceUnavailable: URLError.Code { get }
  static var notConnectedToInternet: URLError.Code { get }
  static var redirectToNonExistentLocation: URLError.Code { get }
  static var badServerResponse: URLError.Code { get }
  static var userCancelledAuthentication: URLError.Code { get }
  static var userAuthenticationRequired: URLError.Code { get }
  static var zeroByteResource: URLError.Code { get }
  static var cannotDecodeRawData: URLError.Code { get }
  static var cannotDecodeContentData: URLError.Code { get }
  static var cannotParseResponse: URLError.Code { get }
  @available(macOS 10.11, iOS 9.0, *)
  static var appTransportSecurityRequiresSecureConnection: URLError.Code { get }
  static var fileDoesNotExist: URLError.Code { get }
  static var fileIsDirectory: URLError.Code { get }
  static var noPermissionsToReadFile: URLError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var dataLengthExceedsMaximum: URLError.Code { get }
  static var secureConnectionFailed: URLError.Code { get }
  static var serverCertificateHasBadDate: URLError.Code { get }
  static var serverCertificateUntrusted: URLError.Code { get }
  static var serverCertificateHasUnknownRoot: URLError.Code { get }
  static var serverCertificateNotYetValid: URLError.Code { get }
  static var clientCertificateRejected: URLError.Code { get }
  static var clientCertificateRequired: URLError.Code { get }
  static var cannotLoadFromNetwork: URLError.Code { get }
  static var cannotCreateFile: URLError.Code { get }
  static var cannotOpenFile: URLError.Code { get }
  static var cannotCloseFile: URLError.Code { get }
  static var cannotWriteToFile: URLError.Code { get }
  static var cannotRemoveFile: URLError.Code { get }
  static var cannotMoveFile: URLError.Code { get }
  static var downloadDecodingFailedMidStream: URLError.Code { get }
  static var downloadDecodingFailedToComplete: URLError.Code { get }
  @available(macOS 10.7, iOS 3.0, *)
  static var internationalRoamingOff: URLError.Code { get }
  @available(macOS 10.7, iOS 3.0, *)
  static var callIsActive: URLError.Code { get }
  @available(macOS 10.7, iOS 3.0, *)
  static var dataNotAllowed: URLError.Code { get }
  @available(macOS 10.7, iOS 3.0, *)
  static var requestBodyStreamExhausted: URLError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var backgroundSessionRequiresSharedContainer: URLError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var backgroundSessionInUseByAnotherProcess: URLError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var backgroundSessionWasDisconnected: URLError.Code { get }
}

extension URLError {
}

extension URLError.Code {
  static var unknown: URLError.Code { get }
  static var cancelled: URLError.Code { get }
  static var badURL: URLError.Code { get }
  static var timedOut: URLError.Code { get }
  static var unsupportedURL: URLError.Code { get }
  static var cannotFindHost: URLError.Code { get }
  static var cannotConnectToHost: URLError.Code { get }
  static var networkConnectionLost: URLError.Code { get }
  static var dnsLookupFailed: URLError.Code { get }
  static var httpTooManyRedirects: URLError.Code { get }
  static var resourceUnavailable: URLError.Code { get }
  static var notConnectedToInternet: URLError.Code { get }
  static var redirectToNonExistentLocation: URLError.Code { get }
  static var badServerResponse: URLError.Code { get }
  static var userCancelledAuthentication: URLError.Code { get }
  static var userAuthenticationRequired: URLError.Code { get }
  static var zeroByteResource: URLError.Code { get }
  static var cannotDecodeRawData: URLError.Code { get }
  static var cannotDecodeContentData: URLError.Code { get }
  static var cannotParseResponse: URLError.Code { get }
  @available(macOS 10.11, iOS 9.0, *)
  static var appTransportSecurityRequiresSecureConnection: URLError.Code { get }
  static var fileDoesNotExist: URLError.Code { get }
  static var fileIsDirectory: URLError.Code { get }
  static var noPermissionsToReadFile: URLError.Code { get }
  @available(macOS 10.5, iOS 2.0, *)
  static var dataLengthExceedsMaximum: URLError.Code { get }
  static var secureConnectionFailed: URLError.Code { get }
  static var serverCertificateHasBadDate: URLError.Code { get }
  static var serverCertificateUntrusted: URLError.Code { get }
  static var serverCertificateHasUnknownRoot: URLError.Code { get }
  static var serverCertificateNotYetValid: URLError.Code { get }
  static var clientCertificateRejected: URLError.Code { get }
  static var clientCertificateRequired: URLError.Code { get }
  static var cannotLoadFromNetwork: URLError.Code { get }
  static var cannotCreateFile: URLError.Code { get }
  static var cannotOpenFile: URLError.Code { get }
  static var cannotCloseFile: URLError.Code { get }
  static var cannotWriteToFile: URLError.Code { get }
  static var cannotRemoveFile: URLError.Code { get }
  static var cannotMoveFile: URLError.Code { get }
  static var downloadDecodingFailedMidStream: URLError.Code { get }
  static var downloadDecodingFailedToComplete: URLError.Code { get }
  @available(macOS 10.7, iOS 3.0, *)
  static var internationalRoamingOff: URLError.Code { get }
  @available(macOS 10.7, iOS 3.0, *)
  static var callIsActive: URLError.Code { get }
  @available(macOS 10.7, iOS 3.0, *)
  static var dataNotAllowed: URLError.Code { get }
  @available(macOS 10.7, iOS 3.0, *)
  static var requestBodyStreamExhausted: URLError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var backgroundSessionRequiresSharedContainer: URLError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var backgroundSessionInUseByAnotherProcess: URLError.Code { get }
  @available(macOS 10.10, iOS 8.0, *)
  static var backgroundSessionWasDisconnected: URLError.Code { get }
}

@available(macOS 10.10, iOS 8.0, *)
struct URLQueryItem : ReferenceConvertible, Hashable, Equatable {
  var _queryItem: NSURLQueryItem
  init(name: __shared String, value: __shared String?)
  init(reference: __shared NSURLQueryItem)
  var reference: NSURLQueryItem { get }
  var name: String
  var value: String?
}

@available(macOS 10.10, iOS 8.0, *)
extension URLQueryItem : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

@available(macOS 10.10, iOS 8.0, *)
extension URLQueryItem : _ObjectiveCBridgeable {
  static func _getObjectiveCType() -> Any.Type
}

struct URLRequest : ReferenceConvertible, Equatable, Hashable {
  typealias CachePolicy = NSURLRequest.CachePolicy
  typealias NetworkServiceType = NSURLRequest.NetworkServiceType
  var _handle: _MutableHandle<NSMutableURLRequest>
  mutating func _applyMutation<ReturnType>(_ whatToDo: (NSMutableURLRequest) -> ReturnType) -> ReturnType
  init(url: URL, cachePolicy: URLRequest.CachePolicy = .useProtocolCachePolicy, timeoutInterval: TimeInterval = 60.0)
  init(_bridged request: __shared NSURLRequest)
  var url: URL?
  var cachePolicy: URLRequest.CachePolicy
  var timeoutInterval: TimeInterval
  var mainDocumentURL: URL?
  @available(macOS 10.7, iOS 4.0, *)
  var networkServiceType: URLRequest.NetworkServiceType
  @available(macOS 10.8, iOS 6.0, *)
  var allowsCellularAccess: Bool
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  var allowsExpensiveNetworkAccess: Bool
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  var allowsConstrainedNetworkAccess: Bool
  var httpMethod: String?
  var allHTTPHeaderFields: [String : String]?
  func value(forHTTPHeaderField field: String) -> String?
  mutating func setValue(_ value: String?, forHTTPHeaderField field: String)
  mutating func addValue(_ value: String, forHTTPHeaderField field: String)
  var httpBody: Data?
  var httpBodyStream: InputStream?
  var httpShouldHandleCookies: Bool
  @available(macOS 10.7, iOS 4.0, *)
  var httpShouldUsePipelining: Bool
}

extension URLRequest : CustomStringConvertible, CustomDebugStringConvertible, CustomReflectable {
}

extension URLRequest : _ObjectiveCBridgeable {
  static func _getObjectiveCType() -> Any.Type
}

struct URLResourceValues {
  var _values: [URLResourceKey : Any]
  var _keys: Set<URLResourceKey>
  init()
  init(keys: Set<URLResourceKey>, values: [URLResourceKey : Any])
  func contains(_ key: URLResourceKey) -> Bool
  func _get<T>(_ key: URLResourceKey) -> T?
  func _get(_ key: URLResourceKey) -> Bool?
  func _get(_ key: URLResourceKey) -> Int?
  mutating func _set(_ key: URLResourceKey, newValue: __owned Any?)
  mutating func _set(_ key: URLResourceKey, newValue: String?)
  mutating func _set(_ key: URLResourceKey, newValue: [String]?)
  mutating func _set(_ key: URLResourceKey, newValue: Date?)
  mutating func _set(_ key: URLResourceKey, newValue: URL?)
  mutating func _set(_ key: URLResourceKey, newValue: Bool?)
  mutating func _set(_ key: URLResourceKey, newValue: Int?)
  var allValues: [URLResourceKey : Any] { get }
  var name: String?
  var localizedName: String? { get }
  var isRegularFile: Bool? { get }
  var isDirectory: Bool? { get }
  var isSymbolicLink: Bool? { get }
  var isVolume: Bool? { get }
  var isPackage: Bool?
  @available(macOS 10.11, iOS 9.0, *)
  var isApplication: Bool? { get }
  var isSystemImmutable: Bool? { get }
  var isUserImmutable: Bool?
  var isHidden: Bool?
  var hasHiddenExtension: Bool?
  var creationDate: Date?
  var contentAccessDate: Date?
  var contentModificationDate: Date?
  var attributeModificationDate: Date? { get }
  var linkCount: Int? { get }
  var parentDirectory: URL? { get }
  var volume: URL? { get }
  var typeIdentifier: String? { get }
  var localizedTypeDescription: String? { get }
  var labelNumber: Int?
  var localizedLabel: String? { get }
  var fileResourceIdentifier: (NSCopying & NSSecureCoding & NSObjectProtocol)? { get }
  var volumeIdentifier: (NSCopying & NSSecureCoding & NSObjectProtocol)? { get }
  var preferredIOBlockSize: Int? { get }
  var isReadable: Bool? { get }
  var isWritable: Bool? { get }
  var isExecutable: Bool? { get }
  var fileSecurity: NSFileSecurity?
  var isExcludedFromBackup: Bool?
  var path: String? { get }
  @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
  var canonicalPath: String? { get }
  var isMountTrigger: Bool? { get }
  @available(macOS 10.10, iOS 8.0, *)
  var generationIdentifier: (NSCopying & NSSecureCoding & NSObjectProtocol)? { get }
  @available(macOS 10.10, iOS 8.0, *)
  var documentIdentifier: Int? { get }
  @available(macOS 10.10, iOS 8.0, *)
  var addedToDirectoryDate: Date? { get }
  var fileResourceType: URLFileResourceType? { get }
  var volumeLocalizedFormatDescription: String? { get }
  var volumeTotalCapacity: Int? { get }
  var volumeAvailableCapacity: Int? { get }
  @available(macOS 10.13, iOS 11.0, *)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  var volumeAvailableCapacityForImportantUsage: Int64? { get }
  @available(macOS 10.13, iOS 11.0, *)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  var volumeAvailableCapacityForOpportunisticUsage: Int64? { get }
  var volumeResourceCount: Int? { get }
  var volumeSupportsPersistentIDs: Bool? { get }
  var volumeSupportsSymbolicLinks: Bool? { get }
  var volumeSupportsHardLinks: Bool? { get }
  var volumeSupportsJournaling: Bool? { get }
  var volumeIsJournaling: Bool? { get }
  var volumeSupportsSparseFiles: Bool? { get }
  var volumeSupportsZeroRuns: Bool? { get }
  var volumeSupportsCaseSensitiveNames: Bool? { get }
  var volumeSupportsCasePreservedNames: Bool? { get }
  var volumeSupportsRootDirectoryDates: Bool? { get }
  var volumeSupportsVolumeSizes: Bool? { get }
  var volumeSupportsRenaming: Bool? { get }
  var volumeSupportsAdvisoryFileLocking: Bool? { get }
  var volumeSupportsExtendedSecurity: Bool? { get }
  var volumeIsBrowsable: Bool? { get }
  var volumeMaximumFileSize: Int? { get }
  var volumeIsEjectable: Bool? { get }
  var volumeIsRemovable: Bool? { get }
  var volumeIsInternal: Bool? { get }
  var volumeIsAutomounted: Bool? { get }
  var volumeIsLocal: Bool? { get }
  var volumeIsReadOnly: Bool? { get }
  var volumeCreationDate: Date? { get }
  var volumeURLForRemounting: URL? { get }
  var volumeUUIDString: String? { get }
  var volumeName: String?
  var volumeLocalizedName: String? { get }
  @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
  var volumeIsEncrypted: Bool? { get }
  @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
  var volumeIsRootFileSystem: Bool? { get }
  @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
  var volumeSupportsCompression: Bool? { get }
  @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
  var volumeSupportsFileCloning: Bool? { get }
  @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
  var volumeSupportsSwapRenaming: Bool? { get }
  @available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
  var volumeSupportsExclusiveRenaming: Bool? { get }
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
  var volumeSupportsImmutableFiles: Bool? { get }
  @available(macOS 10.13, iOS 11.0, tvOS 11.0, watchOS 4.0, *)
  var volumeSupportsAccessPermissions: Bool? { get }
  var isUbiquitousItem: Bool? { get }
  var ubiquitousItemHasUnresolvedConflicts: Bool? { get }
  var ubiquitousItemIsDownloading: Bool? { get }
  var ubiquitousItemIsUploaded: Bool? { get }
  var ubiquitousItemIsUploading: Bool? { get }
  var ubiquitousItemDownloadingStatus: URLUbiquitousItemDownloadingStatus? { get }
  var ubiquitousItemDownloadingError: NSError? { get }
  var ubiquitousItemUploadingError: NSError? { get }
  @available(macOS 10.10, iOS 8.0, *)
  var ubiquitousItemDownloadRequested: Bool? { get }
  @available(macOS 10.10, iOS 8.0, *)
  var ubiquitousItemContainerDisplayName: String? { get }
  @available(macOS 10.13, iOS 11.0, *)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  var ubiquitousItemIsShared: Bool? { get }
  @available(macOS 10.13, iOS 11.0, *)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  var ubiquitousSharedItemCurrentUserRole: URLUbiquitousSharedItemRole? { get }
  @available(macOS 10.13, iOS 11.0, *)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  var ubiquitousSharedItemCurrentUserPermissions: URLUbiquitousSharedItemPermissions? { get }
  @available(macOS 10.13, iOS 11.0, *)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  var ubiquitousSharedItemOwnerNameComponents: PersonNameComponents? { get }
  @available(macOS 10.13, iOS 11.0, *)
  @available(tvOS, unavailable)
  @available(watchOS, unavailable)
  var ubiquitousSharedItemMostRecentEditorNameComponents: PersonNameComponents? { get }
  @available(iOS 9.0, *)
  var fileProtection: URLFileProtection? { get }
  var fileSize: Int? { get }
  var fileAllocatedSize: Int? { get }
  var totalFileSize: Int? { get }
  var totalFileAllocatedSize: Int? { get }
  var isAliasFile: Bool? { get }
}

@available(macOS 10.8, iOS 6.0, *)
struct UUID : ReferenceConvertible, Hashable, Equatable, CustomStringConvertible {
  var uuid: uuid_t { get }
  init()
  init(reference: __shared NSUUID)
  init?(uuidString string: __shared String)
  init(uuid: uuid_t)
  var uuidString: String { get }
  var reference: NSUUID { get }
}

extension UUID : CustomReflectable {
}

extension UUID : _ObjectiveCBridgeable {
}

extension UUID : Codable {
}

protocol _BridgedNSError : _ObjectiveCBridgeableError, Hashable, RawRepresentable where Self.RawValue : FixedWidthInteger {
  static var _nsErrorDomain: String { get }
}

extension _BridgedNSError {
  var _domain: String { get }
}

extension _BridgedNSError {
  var _code: Int { get }
  init?(_bridgedNSError: __shared NSError)
  func hash(into hasher: inout Hasher)
}

protocol _BridgedStoredNSError : CustomNSError, _ObjectiveCBridgeableError, Hashable {
  associatedtype Code : _ErrorCodeProtocol, RawRepresentable where Self.Code.RawValue : FixedWidthInteger
  var _nsError: NSError { get }
  init(_nsError error: NSError)
}

extension _BridgedStoredNSError {
  var code: Self.Code { get }
  init(_ code: Self.Code, userInfo: [String : Any] = [:])
  var userInfo: [String : Any] { get }
}

extension _BridgedStoredNSError {
  init?(_bridgedNSError error: NSError)
}

extension _BridgedStoredNSError {
  var errorCode: Int { get }
  var errorUserInfo: [String : Any] { get }
}

extension _BridgedStoredNSError {
  func hash(into hasher: inout Hasher)
  @_alwaysEmitIntoClient var hashValue: Int { get }
}

extension _BridgedStoredNSError {
  func _getEmbeddedNSError() -> AnyObject?
  static func == (lhs: Self, rhs: Self) -> Bool
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
@objc class _CombineRunLoopAction : NSObject {
  let action: () -> Void
  init(_ action: @escaping () -> Void)
}

protocol _ErrorCodeProtocol : Equatable {
  associatedtype _ErrorType : _BridgedStoredNSError where Self == Self._ErrorType.Code
}

extension _ErrorCodeProtocol {
  static func ~= (match: Self, error: Error) -> Bool
}

typealias _FileReferenceLiteralType = URL

enum _GenericObjCError : Error {
  case nilError
}

struct _JSONDecodingStorage {
  var containers: [Any] { get }
  init()
  var count: Int { get }
  var topContainer: Any { get }
  mutating func push(container: __owned Any)
  mutating func popContainer()
}

struct _JSONEncodingStorage {
  var containers: [NSObject] { get }
  init()
  var count: Int { get }
  mutating func pushKeyedContainer() -> NSMutableDictionary
  mutating func pushUnkeyedContainer() -> NSMutableArray
  mutating func push(container: __owned NSObject)
  mutating func popContainer() -> NSObject
}

struct _JSONKey : CodingKey {
  init(stringValue: String, intValue: Int?)
  init(index: Int)
  static let `super`: _JSONKey
}

struct _JSONKeyedDecodingContainer<K> : KeyedDecodingContainerProtocol where K : CodingKey {
  let decoder: __JSONDecoder
  let container: [String : Any]
  init(referencing decoder: __JSONDecoder, wrapping container: [String : Any])
  func _errorDescription(of key: CodingKey) -> String
  func _superDecoder(forKey key: __owned CodingKey) throws -> Decoder
}

struct _JSONKeyedEncodingContainer<K> : KeyedEncodingContainerProtocol where K : CodingKey {
  let encoder: __JSONEncoder
  let container: NSMutableDictionary
  init(referencing encoder: __JSONEncoder, codingPath: [CodingKey], wrapping container: NSMutableDictionary)
  func _converted(_ key: CodingKey) -> CodingKey
}

protocol _JSONStringDictionaryDecodableMarker {
  static var elementType: Decodable.Type { get }
}

protocol _JSONStringDictionaryEncodableMarker {
}

struct _JSONUnkeyedDecodingContainer : UnkeyedDecodingContainer {
  let decoder: __JSONDecoder
  let container: [Any]
  init(referencing decoder: __JSONDecoder, wrapping container: [Any])
}

struct _JSONUnkeyedEncodingContainer : UnkeyedEncodingContainer {
  let encoder: __JSONEncoder
  let container: NSMutableArray
  init(referencing encoder: __JSONEncoder, codingPath: [CodingKey], wrapping container: NSMutableArray)
}

protocol _KeyValueCodingAndObserving {
}

extension _KeyValueCodingAndObserving {
  func observe<Value>(_ keyPath: KeyPath<Self, Value>, options: NSKeyValueObservingOptions = [], changeHandler: @escaping (Self, NSKeyValueObservedChange<Value>) -> Void) -> NSKeyValueObservation
  func willChangeValue<Value>(for keyPath: __owned KeyPath<Self, Value>)
  func willChange<Value>(_ changeKind: NSKeyValueChange, valuesAt indexes: IndexSet, for keyPath: __owned KeyPath<Self, Value>)
  func willChangeValue<Value>(for keyPath: __owned KeyPath<Self, Value>, withSetMutation mutation: NSKeyValueSetMutationKind, using set: Set<Value>) where Value : Hashable
  func didChangeValue<Value>(for keyPath: __owned KeyPath<Self, Value>)
  func didChange<Value>(_ changeKind: NSKeyValueChange, valuesAt indexes: IndexSet, for keyPath: __owned KeyPath<Self, Value>)
  func didChangeValue<Value>(for keyPath: __owned KeyPath<Self, Value>, withSetMutation mutation: NSKeyValueSetMutationKind, using set: Set<Value>) where Value : Hashable
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
protocol _KeyValueCodingAndObservingPublishing {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension _KeyValueCodingAndObservingPublishing where Self : NSObject {
  func publisher<Value>(for keyPath: KeyPath<Self, Value>, options: NSKeyValueObservingOptions = [.initial, .new]) -> NSObject.KeyValueObservingPublisher<Self, Value>
}

protocol _MutableBoxing : ReferenceConvertible {
  var _handle: _MutableHandle<Self.ReferenceType> { get set }
  mutating func _applyMutation<ReturnType>(_ whatToDo: (Self.ReferenceType) -> ReturnType) -> ReturnType
}

extension _MutableBoxing {
  @inline(__always) mutating func _applyMutation<ReturnType>(_ whatToDo: (Self.ReferenceType) -> ReturnType) -> ReturnType
}

final class _MutableHandle<MutableType> where MutableType : NSObject, MutableType : NSCopying {
  var _pointer: MutableType
  init(reference: __shared MutableType)
  init(adoptingReference reference: MutableType)
  func map<ReturnType>(_ whatToDo: (MutableType) throws -> ReturnType) rethrows -> ReturnType
  func _copiedReference() -> MutableType
  func _uncopiedReference() -> MutableType
}

enum _MutablePair<ImmutableType, MutableType> {
  case Default(ImmutableType)
  case Mutable(MutableType)
}

final class _MutablePairHandle<ImmutableType, MutableType> where ImmutableType : NSObject, ImmutableType : NSMutableCopying, MutableType : NSObject, MutableType : NSMutableCopying {
  var _pointer: _MutablePair<ImmutableType, MutableType>
  init(_ immutable: ImmutableType, copying: Bool = true)
  init(_ mutable: MutableType, copying: Bool = true)
  @inline(__always) func map<ReturnType>(_ whatToDo: (ImmutableType) throws -> ReturnType) rethrows -> ReturnType
  var reference: ImmutableType { get }
}

protocol _ObjectiveCBridgeableError : Error {
  init?(_bridgedNSError: __shared NSError)
}

protocol _OptionalForKVO {
  static func _castForKVO(_ value: Any) -> Any?
}

struct _PlistDecodingStorage {
  var containers: [Any] { get }
  init()
  var count: Int { get }
  var topContainer: Any { get }
  mutating func push(container: __owned Any)
  mutating func popContainer()
}

struct _PlistEncodingStorage {
  var containers: [NSObject] { get }
  init()
  var count: Int { get }
  mutating func pushKeyedContainer() -> NSMutableDictionary
  mutating func pushUnkeyedContainer() -> NSMutableArray
  mutating func push(container: __owned NSObject)
  mutating func popContainer() -> NSObject
}

struct _PlistKey : CodingKey {
  init(index: Int)
  static let `super`: _PlistKey
}

struct _PlistKeyedDecodingContainer<K> : KeyedDecodingContainerProtocol where K : CodingKey {
  let decoder: __PlistDecoder
  let container: [String : Any]
  init(referencing decoder: __PlistDecoder, wrapping container: [String : Any])
  func _superDecoder(forKey key: __owned CodingKey) throws -> Decoder
}

struct _PlistKeyedEncodingContainer<K> : KeyedEncodingContainerProtocol where K : CodingKey {
  let encoder: __PlistEncoder
  let container: NSMutableDictionary
  init(referencing encoder: __PlistEncoder, codingPath: [CodingKey], wrapping container: NSMutableDictionary)
}

struct _PlistUnkeyedDecodingContainer : UnkeyedDecodingContainer {
  let decoder: __PlistDecoder
  let container: [Any]
  init(referencing decoder: __PlistDecoder, wrapping container: [Any])
}

struct _PlistUnkeyedEncodingContainer : UnkeyedEncodingContainer {
  let encoder: __PlistEncoder
  let container: NSMutableArray
  init(referencing encoder: __PlistEncoder, codingPath: [CodingKey], wrapping container: NSMutableArray)
}

final class __CharacterSetStorage : Hashable {
  enum Backing {
    case immutable(CFCharacterSet)
    case mutable(CFMutableCharacterSet)
  }
  var _backing: __CharacterSetStorage.Backing
  @nonobjc init(immutableReference r: CFCharacterSet)
  @nonobjc init(mutableReference r: CFMutableCharacterSet)
  func mutableCopy() -> __CharacterSetStorage
  var bitmapRepresentation: Data { get }
  func hasMember(inPlane plane: UInt8) -> Bool
  func insert(charactersIn range: Range<Unicode.Scalar>)
  func insert(charactersIn range: ClosedRange<Unicode.Scalar>)
  func remove(charactersIn range: Range<Unicode.Scalar>)
  func remove(charactersIn range: ClosedRange<Unicode.Scalar>)
  func insert(charactersIn string: String)
  func remove(charactersIn string: String)
  func invert()
  @discardableResult
  func insert(_ character: Unicode.Scalar) -> (inserted: Bool, memberAfterInsert: Unicode.Scalar)
  @discardableResult
  func update(with character: Unicode.Scalar) -> Unicode.Scalar?
  @discardableResult
  func remove(_ character: Unicode.Scalar) -> Unicode.Scalar?
  func contains(_ member: Unicode.Scalar) -> Bool
  static func _apply(_ lhs: __CharacterSetStorage, _ rhs: __CharacterSetStorage, _ f: (CFMutableCharacterSet, CFCharacterSet) -> ()) -> CharacterSet
  func _applyMutation(_ other: __CharacterSetStorage, _ f: (CFMutableCharacterSet, CFCharacterSet) -> ())
  var inverted: CharacterSet { get }
  func union(_ other: __CharacterSetStorage) -> CharacterSet
  func formUnion(_ other: __CharacterSetStorage)
  func intersection(_ other: __CharacterSetStorage) -> CharacterSet
  func formIntersection(_ other: __CharacterSetStorage)
  func subtracting(_ other: __CharacterSetStorage) -> CharacterSet
  func subtract(_ other: __CharacterSetStorage)
  func symmetricDifference(_ other: __CharacterSetStorage) -> CharacterSet
  func formSymmetricDifference(_ other: __CharacterSetStorage)
  func isSuperset(of other: __CharacterSetStorage) -> Bool
  var description: String { get }
  var debugDescription: String { get }
  func bridgedReference() -> NSCharacterSet
}

@usableFromInline
final class __DataStorage {
  @usableFromInline
  static let maxSize: Int
  @usableFromInline
  static let vmOpsThreshold: Int
  @inlinable static func allocate(_ size: Int, _ clear: Bool) -> UnsafeMutableRawPointer?
  @usableFromInline
  static func move(_ dest_: UnsafeMutableRawPointer, _ source_: UnsafeRawPointer?, _ num_: Int)
  @inlinable static func shouldAllocateCleared(_ size: Int) -> Bool
  @usableFromInline
  var _bytes: UnsafeMutableRawPointer?
  @usableFromInline
  var _length: Int
  @usableFromInline
  var _capacity: Int
  @usableFromInline
  var _offset: Int
  @usableFromInline
  var _deallocator: ((UnsafeMutableRawPointer, Int) -> Void)?
  @usableFromInline
  var _needToZero: Bool
  @inlinable var bytes: UnsafeRawPointer? { get }
  @discardableResult
  @inlinable func withUnsafeBytes<Result>(in range: Range<Int>, apply: (UnsafeRawBufferPointer) throws -> Result) rethrows -> Result
  @discardableResult
  @inlinable func withUnsafeMutableBytes<Result>(in range: Range<Int>, apply: (UnsafeMutableRawBufferPointer) throws -> Result) rethrows -> Result
  @inlinable var mutableBytes: UnsafeMutableRawPointer? { get }
  @inlinable var capacity: Int { get }
  @inlinable var length: Int
  @inlinable var isExternallyOwned: Bool { get }
  @usableFromInline
  func ensureUniqueBufferReference(growingTo newLength: Int = 0, clear: Bool = false)
  @inlinable func _freeBytes()
  @inlinable func enumerateBytes(in range: Range<Int>, _ block: (UnsafeBufferPointer<UInt8>, Data.Index, inout Bool) -> Void)
  @inlinable func setLength(_ length: Int)
  @inlinable func append(_ bytes: UnsafeRawPointer, length: Int)
  @inlinable func get(_ index: Int) -> UInt8
  @inlinable func set(_ index: Int, to value: UInt8)
  @inlinable func copyBytes(to pointer: UnsafeMutableRawPointer, from range: Range<Int>)
  @usableFromInline
  func replaceBytes(in range_: NSRange, with replacementBytes: UnsafeRawPointer?, length replacementLength: Int)
  @usableFromInline
  func resetBytes(in range_: Range<Int>)
  @usableFromInline
  init(length: Int)
  @usableFromInline
  init(capacity capacity_: Int = 0)
  @usableFromInline
  init(bytes: UnsafeRawPointer?, length: Int)
  @usableFromInline
  init(bytes: UnsafeMutableRawPointer?, length: Int, copy: Bool, deallocator: ((UnsafeMutableRawPointer, Int) -> Void)?, offset: Int)
  @usableFromInline
  init(immutableReference: NSData, offset: Int)
  @usableFromInline
  init(mutableReference: NSMutableData, offset: Int)
  @usableFromInline
  init(customReference: NSData, offset: Int)
  @usableFromInline
  init(customMutableReference: NSMutableData, offset: Int)
  @inlinable func mutableCopy(_ range: Range<Int>) -> __DataStorage
  @inlinable func withInteriorPointerReference<T>(_ range: Range<Int>, _ work: (NSData) throws -> T) rethrows -> T
  @usableFromInline
  @inline(never) func bridgedReference(_ range: Range<Int>) -> NSData
}

class __JSONDecoder : Decoder {
  var storage: _JSONDecodingStorage
  let options: JSONDecoder._Options
  init(referencing container: Any, at codingPath: [CodingKey] = [], options: JSONDecoder._Options)
}

extension __JSONDecoder : SingleValueDecodingContainer {
  func expectNonNull<T>(_ type: T.Type) throws
}

extension __JSONDecoder {
  func unbox(_ value: Any, as type: Bool.Type) throws -> Bool?
  func unbox(_ value: Any, as type: Int.Type) throws -> Int?
  func unbox(_ value: Any, as type: Int8.Type) throws -> Int8?
  func unbox(_ value: Any, as type: Int16.Type) throws -> Int16?
  func unbox(_ value: Any, as type: Int32.Type) throws -> Int32?
  func unbox(_ value: Any, as type: Int64.Type) throws -> Int64?
  func unbox(_ value: Any, as type: UInt.Type) throws -> UInt?
  func unbox(_ value: Any, as type: UInt8.Type) throws -> UInt8?
  func unbox(_ value: Any, as type: UInt16.Type) throws -> UInt16?
  func unbox(_ value: Any, as type: UInt32.Type) throws -> UInt32?
  func unbox(_ value: Any, as type: UInt64.Type) throws -> UInt64?
  func unbox(_ value: Any, as type: Float.Type) throws -> Float?
  func unbox(_ value: Any, as type: Double.Type) throws -> Double?
  func unbox(_ value: Any, as type: String.Type) throws -> String?
  func unbox(_ value: Any, as type: Date.Type) throws -> Date?
  func unbox(_ value: Any, as type: Data.Type) throws -> Data?
  func unbox(_ value: Any, as type: Decimal.Type) throws -> Decimal?
  func unbox<T>(_ value: Any, as type: _JSONStringDictionaryDecodableMarker.Type) throws -> T?
  func unbox<T>(_ value: Any, as type: T.Type) throws -> T? where T : Decodable
  func unbox_(_ value: Any, as type: Decodable.Type) throws -> Any?
}

class __JSONEncoder : Encoder {
  var storage: _JSONEncodingStorage
  let options: JSONEncoder._Options
  init(options: JSONEncoder._Options, codingPath: [CodingKey] = [])
  var canEncodeNewValue: Bool { get }
}

extension __JSONEncoder : SingleValueEncodingContainer {
  func assertCanEncodeNewValue()
}

extension __JSONEncoder {
  func box(_ value: Bool) -> NSObject
  func box(_ value: Int) -> NSObject
  func box(_ value: Int8) -> NSObject
  func box(_ value: Int16) -> NSObject
  func box(_ value: Int32) -> NSObject
  func box(_ value: Int64) -> NSObject
  func box(_ value: UInt) -> NSObject
  func box(_ value: UInt8) -> NSObject
  func box(_ value: UInt16) -> NSObject
  func box(_ value: UInt32) -> NSObject
  func box(_ value: UInt64) -> NSObject
  func box(_ value: String) -> NSObject
  func box(_ float: Float) throws -> NSObject
  func box(_ double: Double) throws -> NSObject
  func box(_ date: Date) throws -> NSObject
  func box(_ data: Data) throws -> NSObject
  func box(_ dict: [String : Encodable]) throws -> NSObject?
  func box(_ value: Encodable) throws -> NSObject
  func box_(_ value: Encodable) throws -> NSObject?
}

class __JSONReferencingEncoder : __JSONEncoder {
  enum Reference {
    case array(NSMutableArray, Int)
    case dictionary(NSMutableDictionary, String)
  }
  let encoder: __JSONEncoder
  let reference: __JSONReferencingEncoder.Reference
  init(referencing encoder: __JSONEncoder, at index: Int, wrapping array: NSMutableArray)
  init(referencing encoder: __JSONEncoder, key: CodingKey, convertedKey: __shared CodingKey, wrapping dictionary: NSMutableDictionary)
}

@objc class __KVOKeyPathBridgeMachinery : NSObject {
  @nonobjc static let swizzler: ()
  @nonobjc static func threeWaySwizzle(_ selector: Selector, with unswizzledSelector: Selector)
  class BridgeKey : NSObject, NSCopying {
    let value: String
    init(_ value: String)
  }
  @nonobjc static func _withBridgeableKeyPath(from keyPathString: String, to keyPath: AnyKeyPath, block: () -> Void)
  @nonobjc static func _bridgeKeyPath(_ keyPath: String?) -> AnyKeyPath?
}

func __NSDataIsCompact(_ data: NSData) -> Bool

class __NSErrorRecoveryAttempter {
  @objc(attemptRecoveryFromError:optionIndex:delegate:didRecoverSelector:contextInfo:) func attemptRecovery(fromError nsError: NSError, optionIndex recoveryOptionIndex: Int, delegate: AnyObject?, didRecoverSelector: Selector, contextInfo: UnsafeMutableRawPointer?)
  @objc(attemptRecoveryFromError:optionIndex:) func attemptRecovery(fromError nsError: NSError, optionIndex recoveryOptionIndex: Int) -> Bool
  init()
}

class __NSSwiftData : NSData {
  var _backing: __DataStorage!
  var _range: Range<Data.Index>!
  convenience init(backing: __DataStorage, range: Range<Data.Index>)
  @objc func _isCompact() -> Bool
  @objc(_providesConcreteBacking) func _providesConcreteBacking() -> Bool
}

class __PlistDecoder : Decoder {
  var storage: _PlistDecodingStorage
  let options: PropertyListDecoder._Options
  init(referencing container: Any, at codingPath: [CodingKey] = [], options: PropertyListDecoder._Options)
}

extension __PlistDecoder : SingleValueDecodingContainer {
  func expectNonNull<T>(_ type: T.Type) throws
}

extension __PlistDecoder {
  func unbox(_ value: Any, as type: Bool.Type) throws -> Bool?
  func unbox(_ value: Any, as type: Int.Type) throws -> Int?
  func unbox(_ value: Any, as type: Int8.Type) throws -> Int8?
  func unbox(_ value: Any, as type: Int16.Type) throws -> Int16?
  func unbox(_ value: Any, as type: Int32.Type) throws -> Int32?
  func unbox(_ value: Any, as type: Int64.Type) throws -> Int64?
  func unbox(_ value: Any, as type: UInt.Type) throws -> UInt?
  func unbox(_ value: Any, as type: UInt8.Type) throws -> UInt8?
  func unbox(_ value: Any, as type: UInt16.Type) throws -> UInt16?
  func unbox(_ value: Any, as type: UInt32.Type) throws -> UInt32?
  func unbox(_ value: Any, as type: UInt64.Type) throws -> UInt64?
  func unbox(_ value: Any, as type: Float.Type) throws -> Float?
  func unbox(_ value: Any, as type: Double.Type) throws -> Double?
  func unbox(_ value: Any, as type: String.Type) throws -> String?
  func unbox(_ value: Any, as type: Date.Type) throws -> Date?
  func unbox(_ value: Any, as type: Data.Type) throws -> Data?
  func unbox<T>(_ value: Any, as type: T.Type) throws -> T? where T : Decodable
}

class __PlistEncoder : Encoder {
  var storage: _PlistEncodingStorage
  let options: PropertyListEncoder._Options
  init(options: PropertyListEncoder._Options, codingPath: [CodingKey] = [])
  var canEncodeNewValue: Bool { get }
}

extension __PlistEncoder : SingleValueEncodingContainer {
  func assertCanEncodeNewValue()
}

extension __PlistEncoder {
  func box(_ value: Bool) -> NSObject
  func box(_ value: Int) -> NSObject
  func box(_ value: Int8) -> NSObject
  func box(_ value: Int16) -> NSObject
  func box(_ value: Int32) -> NSObject
  func box(_ value: Int64) -> NSObject
  func box(_ value: UInt) -> NSObject
  func box(_ value: UInt8) -> NSObject
  func box(_ value: UInt16) -> NSObject
  func box(_ value: UInt32) -> NSObject
  func box(_ value: UInt64) -> NSObject
  func box(_ value: Float) -> NSObject
  func box(_ value: Double) -> NSObject
  func box(_ value: String) -> NSObject
  func box<T>(_ value: T) throws -> NSObject where T : Encodable
  func box_<T>(_ value: T) throws -> NSObject? where T : Encodable
}

class __PlistReferencingEncoder : __PlistEncoder {
  enum Reference {
    case array(NSMutableArray, Int)
    case dictionary(NSMutableDictionary, String)
  }
  let encoder: __PlistEncoder
  let reference: __PlistReferencingEncoder.Reference
  init(referencing encoder: __PlistEncoder, at index: Int, wrapping array: NSMutableArray)
  init(referencing encoder: __PlistEncoder, at key: CodingKey, wrapping dictionary: NSMutableDictionary)
}

func _bridgeKeyPathToString(_ keyPath: AnyKeyPath) -> String

func _bridgeNSErrorToError<T>(_ error: NSError, out: UnsafeMutablePointer<T>) -> Bool where T : _ObjectiveCBridgeableError

func _convertErrorToNSError(_ error: Error) -> NSError

func _convertNSErrorToError(_ error: NSError?) -> Error

let _errorDomainUserInfoProviderQueue: DispatchQueue

let _fastEnumerationMutationsPtr: UnsafeMutablePointer<CUnsignedLong>

var _fastEnumerationMutationsTarget: CUnsignedLong

func _getErrorDefaultUserInfo<T>(_ error: T) -> AnyObject? where T : Error

func _isClassFirstSeen(_ theClass: AnyClass) -> Bool

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
var _iso8601Formatter: ISO8601DateFormatter

func _logRuntimeIssue(_ message: String)

let _nilObjCError: Error

func _persistCString(_ p: UnsafePointer<CChar>?) -> [CChar]?

let _plistNull: String

let _plistNullNSString: NSString

let _queue: DispatchQueue

var _seenClasses: Set<ObjectIdentifier>

func _toNSArray<T, U>(_ a: [T], f: (T) -> U) -> NSArray where U : AnyObject

func _toNSRange(_ r: Range<IndexSet.Element>) -> NSRange

func _utfRangeToCFRange(_ inRange: Range<Unicode.Scalar>) -> CFRange

func _utfRangeToCFRange(_ inRange: ClosedRange<Unicode.Scalar>) -> CFRange

@_alwaysEmitIntoClient func _withStackOrHeapBuffer(capacity: Int, _ body: (UnsafeMutableBufferPointer<UInt8>) -> Void)

var associationKey: ()?

func duckCastToNSCopying(_ x: Any) -> NSCopying

var kCFStringEncodingASCII: CFStringEncoding { get }

func pow(_ x: Decimal, _ y: Int) -> Decimal

@available(macOS 10.11, iOS 9.0, *)
func resolveError(_ error: NSError?) throws

func unsafeBinaryIntegerFromInt<T>(_ value: Int) -> T where T : BinaryInteger

func unsafeBinaryIntegerToInt<T>(_ value: T) -> Int where T : BinaryInteger

extension NSCalendar : _HasCustomAnyHashableRepresentation {
}

extension NSCharacterSet : _HasCustomAnyHashableRepresentation {
}

extension NSKeyedUnarchiver {
  @objc(_swift_checkClassAndWarnForKeyedArchiving:operation:) class func __swift_checkClassAndWarnForKeyedArchiving(_ theClass: AnyClass, operation: CInt) -> CInt
}

extension EncodingError : LocalizedError {
}

extension DecodingError : LocalizedError {
}

extension DecodingError {
  static func _typeMismatch(at path: [CodingKey], expectation: Any.Type, reality: Any) -> DecodingError
  static func _typeDescription(of value: Any) -> String
}

extension Array : DataProtocol where Element == UInt8 {
}

extension ArraySlice : DataProtocol where Element == UInt8 {
}

extension ContiguousArray : DataProtocol where Element == UInt8 {
}

extension EmptyCollection : DataProtocol where Element == UInt8 {
}

extension Repeated : DataProtocol where Element == UInt8 {
}

extension Array : MutableDataProtocol where Element == UInt8 {
}

extension ContiguousArray : MutableDataProtocol where Element == UInt8 {
}

extension Array : ContiguousBytes where Element == UInt8 {
}

extension ArraySlice : ContiguousBytes where Element == UInt8 {
}

extension ContiguousArray : ContiguousBytes where Element == UInt8 {
}

extension UnsafeRawBufferPointer : ContiguousBytes {
}

extension UnsafeMutableRawBufferPointer : ContiguousBytes {
}

extension UnsafeBufferPointer : ContiguousBytes where Element == UInt8 {
}

extension UnsafeMutableBufferPointer : ContiguousBytes where Element == UInt8 {
}

extension EmptyCollection : ContiguousBytes where Element == UInt8 {
}

extension CollectionOfOne : ContiguousBytes where Element == UInt8 {
}

extension Slice : ContiguousBytes where Base : ContiguousBytes {
}

extension NSData : _HasCustomAnyHashableRepresentation {
}

extension Slice : DataProtocol where Base : DataProtocol {
}

extension NSDate : _HasCustomAnyHashableRepresentation {
}

extension NSDateComponents : _HasCustomAnyHashableRepresentation {
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
extension NSDateInterval : _HasCustomAnyHashableRepresentation {
}

extension Decimal {
  typealias RoundingMode = NSDecimalNumber.RoundingMode
  typealias CalculationError = NSDecimalNumber.CalculationError
}

extension Decimal : Hashable, Comparable {
  subscript(index: UInt32) -> UInt16 { get }
  var doubleValue: Double { get }
}

extension Decimal : CustomStringConvertible {
  init?(string: __shared String, locale: __shared Locale? = nil)
}

extension Decimal : Codable {
  enum CodingKeys : Int, CodingKey {
    case exponent
    case length
    case isNegative
    case isCompact
    case mantissa
  }
}

extension Decimal : ExpressibleByFloatLiteral {
}

extension Decimal : ExpressibleByIntegerLiteral {
}

extension Decimal : SignedNumeric {
  static func /= (lhs: inout Decimal, rhs: Decimal)
  static func / (lhs: Decimal, rhs: Decimal) -> Decimal
}

extension Decimal {
}

extension Decimal : Strideable {
}

extension Decimal {
  static let leastFiniteMagnitude: Decimal
  static let greatestFiniteMagnitude: Decimal
  static let leastNormalMagnitude: Decimal
  static let leastNonzeroMagnitude: Decimal
  static let pi: Decimal
  static var quietNaN: Decimal { get }
  static var nan: Decimal { get }
  static var radix: Int { get }
  init(_ value: UInt8)
  init(_ value: Int8)
  init(_ value: UInt16)
  init(_ value: Int16)
  init(_ value: UInt32)
  init(_ value: Int32)
  init(_ value: UInt64)
  init(_ value: Int64)
  init(_ value: UInt)
  init(_ value: Int)
  init(_ value: Double)
  init(sign: FloatingPointSign, exponent: Int, significand: Decimal)
  init(signOf: Decimal, magnitudeOf magnitude: Decimal)
  var exponent: Int { get }
  var significand: Decimal { get }
  var sign: FloatingPointSign { get }
  var ulp: Decimal { get }
  var nextUp: Decimal { get }
  var nextDown: Decimal { get }
  var floatingPointClass: FloatingPointClassification { get }
  var isCanonical: Bool { get }
  var isSignMinus: Bool { get }
  var isZero: Bool { get }
  var isSubnormal: Bool { get }
  var isNormal: Bool { get }
  var isFinite: Bool { get }
  var isInfinite: Bool { get }
  var isNaN: Bool { get }
  var isSignaling: Bool { get }
  var isSignalingNaN: Bool { get }
  func isEqual(to other: Decimal) -> Bool
  func isLess(than other: Decimal) -> Bool
  func isLessThanOrEqualTo(_ other: Decimal) -> Bool
  func isTotallyOrdered(belowOrEqualTo other: Decimal) -> Bool
}

extension Decimal : _ObjectiveCBridgeable {
}

extension DispatchData : DataProtocol {
  struct Region : DataProtocol, ContiguousBytes {
    let bytes: UnsafeBufferPointer<UInt8>
    let index: DispatchData.Index
    let owner: DispatchData
    init(bytes: UnsafeBufferPointer<UInt8>, index: DispatchData.Index, owner: DispatchData)
  }
}

extension FileManager {
  @available(*, deprecated, renamed: "replaceItemAt(_:withItemAt:backupItemName:options:)")
  func replaceItemAtURL(originalItemURL: NSURL, withItemAtURL newItemURL: NSURL, backupItemName: String? = nil, options: FileManager.ItemReplacementOptions = []) throws -> NSURL?
  @available(swift 4)
  @available(macOS 10.6, iOS 4.0, *)
  func replaceItemAt(_ originalItemURL: URL, withItemAt newItemURL: URL, backupItemName: String? = nil, options: FileManager.ItemReplacementOptions = []) throws -> URL?
  @available(macOS 10.6, iOS 4.0, *)
  @nonobjc func enumerator(at url: URL, includingPropertiesForKeys keys: [URLResourceKey]?, options mask: FileManager.DirectoryEnumerationOptions = [], errorHandler handler: ((URL, Error) -> Bool)? = nil) -> FileManager.DirectoryEnumerator?
}

extension NSObject : CustomStringConvertible {
}

extension NSObject : CustomDebugStringConvertible {
}

extension AnyHashable : _ObjectiveCBridgeable {
}

extension CVarArg where Self : _ObjectiveCBridgeable {
  var _cVarArgEncoding: [Int] { get }
}

extension NSIndexPath : _HasCustomAnyHashableRepresentation {
}

extension NSIndexSet : _HasCustomAnyHashableRepresentation {
}

extension Dictionary : _JSONStringDictionaryEncodableMarker where Key == String, Value : Encodable {
}

extension Dictionary : _JSONStringDictionaryDecodableMarker where Key == String, Value : Decodable {
}

extension EncodingError {
  static func _invalidFloatingPointValue<T>(_ value: T, at codingPath: [CodingKey]) -> EncodingError where T : FloatingPoint
}

extension NSLocale : _HasCustomAnyHashableRepresentation {
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
extension NSMeasurement : _HasCustomAnyHashableRepresentation {
}

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
extension MeasurementFormatter {
  func string<UnitType>(from measurement: Measurement<UnitType>) -> String where UnitType : Unit
}

extension NSNotification : _HasCustomAnyHashableRepresentation {
}

extension NSArray : ExpressibleByArrayLiteral {
}

extension Array : _ObjectiveCBridgeable {
  init(_cocoaArray: __shared NSArray)
}

extension NSArray : _HasCustomAnyHashableRepresentation {
}

extension NSArray : Sequence {
}

extension NSArray {
  convenience init(objects elements: Any...)
}

extension NSArray {
  @nonobjc convenience init(array anArray: __shared NSArray)
}

extension NSArray : CustomReflectable {
}

extension Array : CVarArg {
}

extension NSCoder {
  func decodeObject<DecodedObjectType>(of cls: DecodedObjectType.Type, forKey key: String) -> DecodedObjectType? where DecodedObjectType : NSObject, DecodedObjectType : NSCoding
  @nonobjc func decodeObject(of classes: [AnyClass]?, forKey key: String) -> Any?
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc func decodeTopLevelObject() throws -> Any?
  @available(swift 4)
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc func decodeTopLevelObject(forKey key: String) throws -> Any?
  @available(macOS 10.11, iOS 9.0, *)
  func decodeTopLevelObject<DecodedObjectType>(of cls: DecodedObjectType.Type, forKey key: String) throws -> DecodedObjectType? where DecodedObjectType : NSObject, DecodedObjectType : NSCoding
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc func decodeTopLevelObject(of classes: [AnyClass]?, forKey key: String) throws -> Any?
}

extension NSKeyedArchiver {
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc func encodeEncodable<T>(_ value: T, forKey key: String) throws where T : Encodable
}

extension NSKeyedUnarchiver {
  @available(swift 4)
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc class func unarchiveTopLevelObjectWithData(_ data: Data) throws -> Any?
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  @nonobjc static func unarchivedObject<DecodedObjectType>(ofClass cls: DecodedObjectType.Type, from data: Data) throws -> DecodedObjectType? where DecodedObjectType : NSObject, DecodedObjectType : NSCoding
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  @nonobjc static func unarchivedObject(ofClasses classes: [AnyClass], from data: Data) throws -> Any?
  @nonobjc static let __plistClasses: [AnyClass]
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc func decodeDecodable<T>(_ type: T.Type, forKey key: String) -> T? where T : Decodable
  @available(macOS 10.11, iOS 9.0, *)
  @nonobjc func decodeTopLevelDecodable<T>(_ type: T.Type, forKey key: String) throws -> T? where T : Decodable
}

extension NSData : DataProtocol {
}

extension NSDate : _CustomPlaygroundQuickLookable {
  @nonobjc var summary: String { get }
}

extension NSDictionary : ExpressibleByDictionaryLiteral {
}

extension Dictionary {
  init(_cocoaDictionary: __shared NSDictionary)
}

extension Dictionary : _ObjectiveCBridgeable {
  @inline(__always) static func _bridgeInitialize<T>(index: Int, of buffer: UnsafePointer<AnyObject>, to value: T)
  @inline(__always) static func _verbatimForceBridge<T>(_ buffer: UnsafeMutablePointer<AnyObject>, count: Int, to: T.Type)
  @inline(__always) static func _verbatimBridge<T>(_ buffer: UnsafeMutablePointer<AnyObject>, count: Int, to type: T.Type) -> Int
  @inline(__always) static func _nonVerbatimForceBridge<T>(_ buffer: UnsafeMutablePointer<AnyObject>, count: Int, to: T.Type)
  @inline(__always) static func _nonVerbatimBridge<T>(_ buffer: UnsafeMutablePointer<AnyObject>, count: Int, to: T.Type) -> Int
  @inline(__always) static func _forceBridge<T>(_ buffer: UnsafeMutablePointer<AnyObject>, count: Int, to: T.Type)
  @inline(__always) static func _conditionallyBridge<T>(_ buffer: UnsafeMutablePointer<AnyObject>, count: Int, to: T.Type) -> Bool
}

extension NSDictionary : _HasCustomAnyHashableRepresentation {
}

extension NSDictionary : Sequence {
  @objc subscript(key: Any) -> Any? { get }
}

extension NSMutableDictionary {
}

extension NSDictionary {
  @objc(__swiftInitWithDictionary_NSDictionary:) convenience init(dictionary otherDictionary: __shared NSDictionary)
}

extension NSDictionary : CustomReflectable {
}

extension Dictionary : CVarArg {
}

extension Error where Self : CustomNSError {
  var _domain: String { get }
  var _code: Int { get }
}

extension Error where Self : CustomNSError, Self : RawRepresentable, Self.RawValue : FixedWidthInteger {
  var _code: Int { get }
}

extension Error {
  var localizedDescription: String { get }
}

extension NSError : Error {
}

extension CFError : Error {
}

extension _SwiftNewtypeWrapper where Self.RawValue == Error {
  @inlinable func _bridgeToObjectiveC() -> NSError
  @inlinable static func _forceBridgeFromObjectiveC(_ source: NSError, result: inout Self?)
  @inlinable static func _conditionallyBridgeFromObjectiveC(_ source: NSError, result: inout Self?) -> Bool
  @inlinable @_effects(readonly) static func _unconditionallyBridgeFromObjectiveC(_ source: NSError?) -> Self
}

extension POSIXErrorCode : _ErrorCodeProtocol {
}

extension MachErrorCode : _ErrorCodeProtocol {
}

extension NSExpression {
  convenience init(format expressionFormat: __shared String, _ args: CVarArg...)
}

extension NSExpression {
  convenience init<Root, Value>(forKeyPath keyPath: KeyPath<Root, Value>)
}

extension NSEnumerator : Sequence {
}

extension NSIndexSet : Sequence {
}

@available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
extension NSItemProvider {
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  func registerObject<T>(ofClass: T.Type, visibility: NSItemProviderRepresentationVisibility, loadHandler: @escaping ((T?, Error?) -> Void) -> Progress?) where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderWriting
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  func canLoadObject<T>(ofClass: T.Type) -> Bool where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderReading
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  func loadObject<T>(ofClass: T.Type, completionHandler: @escaping (T?, Error?) -> Void) -> Progress where T : _ObjectiveCBridgeable, T._ObjectiveCType : NSItemProviderReading
}

extension Int8 : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension UInt8 : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension Int16 : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension UInt16 : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension Int32 : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension UInt32 : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension Int64 : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension UInt64 : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension Int : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension UInt : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension Float : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension Double : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension Bool : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension CGFloat : _ObjectiveCBridgeable {
  @available(swift, deprecated: 4, renamed: "init(truncating:)")
  init(_ number: __shared NSNumber)
  init(truncating number: __shared NSNumber)
  init?(exactly number: __shared NSNumber)
}

extension NSNumber : ExpressibleByFloatLiteral, ExpressibleByIntegerLiteral, ExpressibleByBooleanLiteral {
}

extension NSNumber : _HasCustomAnyHashableRepresentation {
}

extension NSObject : _KeyValueCodingAndObserving {
}

extension NSObject {
  @objc class func __old_unswizzled_automaticallyNotifiesObservers(forKey key: String?) -> Bool
  @objc class func __old_unswizzled_keyPathsForValuesAffectingValue(forKey key: String?) -> Set<String>
}

extension Optional : _OptionalForKVO {
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension CollectionDifference.Change : _ObjectiveCBridgeable {
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension CollectionDifference : _ObjectiveCBridgeable {
  static func _formDifference(from input: NSOrderedCollectionDifference, _ changeConverter: (Any) -> CollectionDifference<ChangeElement>.Change?) -> CollectionDifference<ChangeElement>?
}

extension NSPredicate {
  convenience init(format predicateFormat: __shared String, _ args: CVarArg...)
}

extension _NSRange : Hashable {
}

extension _NSRange : CustomStringConvertible, CustomDebugStringConvertible {
}

extension _NSRange {
  init?(_ string: __shared String)
}

extension _NSRange {
  var lowerBound: Int { get }
  var upperBound: Int { get }
  func contains(_ index: Int) -> Bool
  mutating func formUnion(_ other: NSRange)
  func union(_ other: NSRange) -> NSRange
  func intersection(_ other: NSRange) -> NSRange?
}

extension _NSRange {
  init<R>(_ region: R) where R : RangeExpression, R.Bound : FixedWidthInteger
  init<R, S>(_ region: R, in target: S) where R : RangeExpression, S : StringProtocol, R.Bound == String.Index
  @available(swift, deprecated: 4, renamed: "Range.init(_:)")
  func toRange() -> Range<Int>?
}

extension Range where Bound : BinaryInteger {
  init?(_ range: NSRange)
}

extension Range where Bound == Int {
  init?(_ range: NSRange)
}

extension Range where Bound == String.Index {
  init?<S>(_ range: NSRange, _genericIn string: __shared S) where S : StringProtocol
  init?(_ range: NSRange, in string: __shared String)
  @available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
  init?<S>(_ range: NSRange, in string: __shared S) where S : StringProtocol
}

extension _NSRange : CustomReflectable {
}

extension _NSRange : _CustomPlaygroundQuickLookable {
}

extension _NSRange : Codable {
}

extension Set {
  init(_cocoaSet: __shared NSSet)
}

extension NSSet : Sequence {
}

extension NSOrderedSet : Sequence {
}

extension Set : _ObjectiveCBridgeable {
}

extension NSSet : _HasCustomAnyHashableRepresentation {
}

extension NSOrderedSet {
  convenience init(objects elements: Any...)
}

extension NSSet {
  convenience init(objects elements: Any...)
}

extension NSSet : ExpressibleByArrayLiteral {
}

extension NSOrderedSet : ExpressibleByArrayLiteral {
}

extension NSSet {
  @nonobjc convenience init(set anSet: __shared NSSet)
}

extension NSSet : CustomReflectable {
}

extension Set : CVarArg {
}

extension NSSortDescriptor {
  convenience init<Root, Value>(keyPath: KeyPath<Root, Value>, ascending: Bool)
  convenience init<Root, Value>(keyPath: KeyPath<Root, Value>, ascending: Bool, comparator cmptr: @escaping Comparator)
  var keyPath: AnyKeyPath? { get }
}

extension NSString : ExpressibleByStringLiteral {
}

extension NSString : _HasCustomAnyHashableRepresentation {
}

extension NSString {
  convenience init(format: __shared NSString, _ args: CVarArg...)
  convenience init(format: __shared NSString, locale: Locale?, _ args: CVarArg...)
  class func localizedStringWithFormat(_ format: NSString, _ args: CVarArg...) -> Self
  func appendingFormat(_ format: NSString, _ args: CVarArg...) -> NSString
}

extension NSMutableString {
  func appendFormat(_ format: NSString, _ args: CVarArg...)
}

extension NSString {
  @nonobjc convenience init(string aString: __shared NSString)
}

extension NSString : _CustomPlaygroundQuickLookable {
}

extension Optional {
  func _withNilOrAddress<NSType, ResultType>(of object: inout NSType?, _ body: (AutoreleasingUnsafeMutablePointer<NSType?>?) -> ResultType) -> ResultType where NSType : AnyObject
}

extension String {
  static var availableStringEncodings: [String.Encoding] { get }
  static var defaultCStringEncoding: String.Encoding { get }
  static func localizedName(of encoding: String.Encoding) -> String
  static func localizedStringWithFormat(_ format: String, _ arguments: CVarArg...) -> String
  init?(utf8String bytes: UnsafePointer<CChar>)
}

extension String {
  init?<S>(bytes: __shared S, encoding: String.Encoding) where S : Sequence, S.Element == UInt8
  init?(bytesNoCopy bytes: UnsafeMutableRawPointer, length: Int, encoding: String.Encoding, freeWhenDone flag: Bool)
  init(utf16CodeUnits: UnsafePointer<unichar>, count: Int)
  init(utf16CodeUnitsNoCopy: UnsafePointer<unichar>, count: Int, freeWhenDone flag: Bool)
  init(contentsOfFile path: __shared String, encoding enc: String.Encoding) throws
  init(contentsOfFile path: __shared String, usedEncoding: inout String.Encoding) throws
  init(contentsOfFile path: __shared String) throws
  init(contentsOf url: __shared URL, encoding enc: String.Encoding) throws
  init(contentsOf url: __shared URL, usedEncoding: inout String.Encoding) throws
  init(contentsOf url: __shared URL) throws
  init?(cString: UnsafePointer<CChar>, encoding enc: String.Encoding)
  init?(data: __shared Data, encoding: String.Encoding)
  init(format: __shared String, _ arguments: CVarArg...)
  init(format: __shared String, arguments: __shared [CVarArg])
  init(format: __shared String, locale: __shared Locale?, _ args: CVarArg...)
  init(format: __shared String, locale: __shared Locale?, arguments: __shared [CVarArg])
}

extension StringProtocol {
  var _ns: NSString { get }
  func _toIndex(_ utf16Index: Int) -> Self.Index
  func _toOffset(_ idx: String.Index) -> Int
  @inlinable func _toRelativeNSRange(_ r: Range<String.Index>) -> NSRange
  func _toRange(_ r: NSRange) -> Range<Self.Index>
  func _optionalRange(_ r: NSRange) -> Range<Self.Index>?
  func _withOptionalOutParameter<Result>(_ index: UnsafeMutablePointer<Self.Index>?, _ body: (UnsafeMutablePointer<Int>?) -> Result) -> Result
  func _withOptionalOutParameter<Result>(_ range: UnsafeMutablePointer<Range<Self.Index>>?, _ body: (UnsafeMutablePointer<NSRange>?) -> Result) -> Result
  func canBeConverted(to encoding: String.Encoding) -> Bool
  var capitalized: String { get }
  @available(macOS 10.11, iOS 9.0, *)
  var localizedCapitalized: String { get }
  func capitalized(with locale: Locale?) -> String
  func caseInsensitiveCompare<T>(_ aString: T) -> ComparisonResult where T : StringProtocol
  func commonPrefix<T>(with aString: T, options: String.CompareOptions = []) -> String where T : StringProtocol
  func compare<T>(_ aString: T, options mask: String.CompareOptions = [], range: Range<Self.Index>? = nil, locale: Locale? = nil) -> ComparisonResult where T : StringProtocol
  func completePath(into outputName: UnsafeMutablePointer<String>? = nil, caseSensitive: Bool, matchesInto outputArray: UnsafeMutablePointer<[String]>? = nil, filterTypes: [String]? = nil) -> Int
  func components(separatedBy separator: CharacterSet) -> [String]
  func components<T>(separatedBy separator: T) -> [String] where T : StringProtocol
  func cString(using encoding: String.Encoding) -> [CChar]?
  func data(using encoding: String.Encoding, allowLossyConversion: Bool = false) -> Data?
  var decomposedStringWithCanonicalMapping: String { get }
  var decomposedStringWithCompatibilityMapping: String { get }
  func enumerateLines(invoking body: @escaping (String, inout Bool) -> Void)
  var fastestEncoding: String.Encoding { get }
  func getCString(_ buffer: inout [CChar], maxLength: Int, encoding: String.Encoding) -> Bool
  var hash: Int { get }
  func lengthOfBytes(using encoding: String.Encoding) -> Int
  func localizedCaseInsensitiveCompare<T>(_ aString: T) -> ComparisonResult where T : StringProtocol
  func localizedCompare<T>(_ aString: T) -> ComparisonResult where T : StringProtocol
  func localizedStandardCompare<T>(_ string: T) -> ComparisonResult where T : StringProtocol
  @available(macOS 10.11, iOS 9.0, *)
  var localizedLowercase: String { get }
  func lowercased(with locale: Locale?) -> String
  func maximumLengthOfBytes(using encoding: String.Encoding) -> Int
  var precomposedStringWithCanonicalMapping: String { get }
  var precomposedStringWithCompatibilityMapping: String { get }
  func propertyList() -> Any
  func propertyListFromStringsFileFormat() -> [String : String]
  @available(macOS 10.11, iOS 9.0, *)
  func localizedStandardContains<T>(_ string: T) -> Bool where T : StringProtocol
  var smallestEncoding: String.Encoding { get }
  func addingPercentEncoding(withAllowedCharacters allowedCharacters: CharacterSet) -> String?
  func appendingFormat<T>(_ format: T, _ arguments: CVarArg...) -> String where T : StringProtocol
  func appending<T>(_ aString: T) -> String where T : StringProtocol
  func folding(options: String.CompareOptions = [], locale: Locale?) -> String
  func padding<T>(toLength newLength: Int, withPad padString: T, startingAt padIndex: Int) -> String where T : StringProtocol
  var removingPercentEncoding: String? { get }
  func replacingCharacters<T, R>(in range: R, with replacement: T) -> String where T : StringProtocol, R : RangeExpression, R.Bound == String.Index
  func replacingOccurrences<Target, Replacement>(of target: Target, with replacement: Replacement, options: String.CompareOptions = [], range searchRange: Range<Self.Index>? = nil) -> String where Target : StringProtocol, Replacement : StringProtocol
  func trimmingCharacters(in set: CharacterSet) -> String
  @available(macOS 10.11, iOS 9.0, *)
  var localizedUppercase: String { get }
  func uppercased(with locale: Locale?) -> String
  func write<T>(toFile path: T, atomically useAuxiliaryFile: Bool, encoding enc: String.Encoding) throws where T : StringProtocol
  func write(to url: URL, atomically useAuxiliaryFile: Bool, encoding enc: String.Encoding) throws
  @available(macOS 10.11, iOS 9.0, *)
  func applyingTransform(_ transform: StringTransform, reverse: Bool) -> String?
  func enumerateLinguisticTags<T, R>(in range: R, scheme tagScheme: T, options opts: NSLinguisticTagger.Options = [], orthography: NSOrthography? = nil, invoking body: (String, Range<Self.Index>, Range<Self.Index>, inout Bool) -> Void) where T : StringProtocol, R : RangeExpression, R.Bound == String.Index
  func enumerateSubstrings<R>(in range: R, options opts: String.EnumerationOptions = [], _ body: @escaping (String?, Range<Self.Index>, Range<Self.Index>, inout Bool) -> Void) where R : RangeExpression, R.Bound == String.Index
  func getBytes<R>(_ buffer: inout [UInt8], maxLength maxBufferCount: Int, usedLength usedBufferCount: UnsafeMutablePointer<Int>, encoding: String.Encoding, options: String.EncodingConversionOptions = [], range: R, remaining leftover: UnsafeMutablePointer<Range<Self.Index>>) -> Bool where R : RangeExpression, R.Bound == String.Index
  func getLineStart<R>(_ start: UnsafeMutablePointer<Self.Index>, end: UnsafeMutablePointer<Self.Index>, contentsEnd: UnsafeMutablePointer<Self.Index>, for range: R) where R : RangeExpression, R.Bound == String.Index
  func getParagraphStart<R>(_ start: UnsafeMutablePointer<Self.Index>, end: UnsafeMutablePointer<Self.Index>, contentsEnd: UnsafeMutablePointer<Self.Index>, for range: R) where R : RangeExpression, R.Bound == String.Index
  func lineRange<R>(for aRange: R) -> Range<Self.Index> where R : RangeExpression, R.Bound == String.Index
  func linguisticTags<T, R>(in range: R, scheme tagScheme: T, options opts: NSLinguisticTagger.Options = [], orthography: NSOrthography? = nil, tokenRanges: UnsafeMutablePointer<[Range<Self.Index>]>? = nil) -> [String] where T : StringProtocol, R : RangeExpression, R.Bound == String.Index
  func paragraphRange<R>(for aRange: R) -> Range<Self.Index> where R : RangeExpression, R.Bound == String.Index
  func rangeOfCharacter(from aSet: CharacterSet, options mask: String.CompareOptions = [], range aRange: Range<Self.Index>? = nil) -> Range<Self.Index>?
  func rangeOfComposedCharacterSequence(at anIndex: Self.Index) -> Range<Self.Index>
  func rangeOfComposedCharacterSequences<R>(for range: R) -> Range<Self.Index> where R : RangeExpression, R.Bound == String.Index
  func range<T>(of aString: T, options mask: String.CompareOptions = [], range searchRange: Range<Self.Index>? = nil, locale: Locale? = nil) -> Range<Self.Index>? where T : StringProtocol
  @available(macOS 10.11, iOS 9.0, *)
  func localizedStandardRange<T>(of string: T) -> Range<Self.Index>? where T : StringProtocol
  func contains<T>(_ other: T) -> Bool where T : StringProtocol
  func localizedCaseInsensitiveContains<T>(_ other: T) -> Bool where T : StringProtocol
}

extension StringProtocol {
  @available(swift, deprecated: 4.0, message: "Please use String slicing subscript with a 'partial range from' operator.")
  func substring(from index: Self.Index) -> String
  @available(swift, deprecated: 4.0, message: "Please use String slicing subscript with a 'partial range upto' operator.")
  func substring(to index: Self.Index) -> String
  @available(swift, deprecated: 4.0, message: "Please use String slicing subscript.")
  func substring(with aRange: Range<Self.Index>) -> String
}

extension StringProtocol {
}

extension String {
}

extension StringProtocol {
}

extension String {
  struct Encoding : RawRepresentable {
    static let ascii: String.Encoding
    static let nextstep: String.Encoding
    static let japaneseEUC: String.Encoding
    static let utf8: String.Encoding
    static let isoLatin1: String.Encoding
    static let symbol: String.Encoding
    static let nonLossyASCII: String.Encoding
    static let shiftJIS: String.Encoding
    static let isoLatin2: String.Encoding
    static let unicode: String.Encoding
    static let windowsCP1251: String.Encoding
    static let windowsCP1252: String.Encoding
    static let windowsCP1253: String.Encoding
    static let windowsCP1254: String.Encoding
    static let windowsCP1250: String.Encoding
    static let iso2022JP: String.Encoding
    static let macOSRoman: String.Encoding
    static let utf16: String.Encoding
    static let utf16BigEndian: String.Encoding
    static let utf16LittleEndian: String.Encoding
    static let utf32: String.Encoding
    static let utf32BigEndian: String.Encoding
    static let utf32LittleEndian: String.Encoding
  }
  typealias EncodingConversionOptions = NSString.EncodingConversionOptions
  typealias EnumerationOptions = NSString.EnumerationOptions
  typealias CompareOptions = NSString.CompareOptions
}

extension NSTextCheckingResult.CheckingType {
  static var allSystemTypes: NSTextCheckingResult.CheckingType { get }
  static var allCustomTypes: NSTextCheckingResult.CheckingType { get }
  static var allTypes: NSTextCheckingResult.CheckingType { get }
}

extension UndoManager {
  @available(macOS 10.11, iOS 9.0, *)
  func registerUndo<TargetType>(withTarget target: TargetType, handler: @escaping (TargetType) -> Void) where TargetType : AnyObject
}

extension NSURL : _CustomPlaygroundQuickLookable {
}

@available(macOS 10.11, iOS 9.0, *)
extension NSPersonNameComponents : _HasCustomAnyHashableRepresentation {
}

extension UnsafeRawBufferPointer : DataProtocol {
}

extension UnsafeBufferPointer : DataProtocol where Element == UInt8 {
}

extension Progress {
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  var estimatedTimeRemaining: TimeInterval?
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  var throughput: Int?
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  var fileTotalCount: Int?
  @available(macOS 10.13, iOS 11.0, watchOS 4.0, tvOS 11.0, *)
  var fileCompletedCount: Int?
  func performAsCurrent<ReturnType>(withPendingUnitCount unitCount: Int64, using work: () throws -> ReturnType) rethrows -> ReturnType
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension NSObject : _KeyValueCodingAndObservingPublishing {
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension NSObject {
  struct KeyValueObservingPublisher<Subject, Value> : Equatable where Subject : NSObject {
    let object: Subject
    let keyPath: KeyPath<Subject, Value>
    let options: NSKeyValueObservingOptions
    init(object: Subject, keyPath: KeyPath<Subject, Value>, options: NSKeyValueObservingOptions)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension NSObject {
  final class KVOSubscription<Subject, Value> : Subscription, CustomStringConvertible, CustomReflectable, CustomPlaygroundDisplayConvertible where Subject : NSObject {
    var observation: NSKeyValueObservation?
    var demand: Subscribers.Demand
    var receivedInitial: Bool
    var last: Value?
    var subscriber: AnySubscriber<Value, Never>?
    let lock: Lock
    let downstreamLock: RecursiveLock
    init<S>(_ object: Subject, _ keyPath: KeyPath<Subject, Value>, _ options: NSKeyValueObservingOptions, _ subscriber: S) where Value == S.Input, S : Subscriber, S.Failure == Never
  }
}

@available(macOS 10.12, iOS 10.0, tvOS 10.0, watchOS 3.0, *)
extension UnsafeMutablePointer where Pointee == os_unfair_lock_s {
  init()
  func cleanupLock()
  func lock()
  func tryLock() -> Bool
  func unlock()
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension NotificationCenter {
  func publisher(for name: Notification.Name, object: AnyObject? = nil) -> NotificationCenter.Publisher
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension NotificationCenter {
  struct Publisher : Publisher {
    let center: NotificationCenter
    let name: Notification.Name
    let object: AnyObject?
    init(center: NotificationCenter, name: Notification.Name, object: AnyObject? = nil)
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension Timer {
  static func publish(every interval: TimeInterval, tolerance: TimeInterval? = nil, on runLoop: RunLoop, in mode: RunLoop.Mode, options: RunLoop.SchedulerOptions? = nil) -> Timer.TimerPublisher
  final class TimerPublisher : ConnectablePublisher {
    let interval: TimeInterval
    let tolerance: TimeInterval?
    let runLoop: RunLoop
    let mode: RunLoop.Mode
    let options: RunLoop.SchedulerOptions?
    lazy var routingSubscription: Timer.TimerPublisher.RoutingSubscription
    var $__lazy_storage_$_routingSubscription: Timer.TimerPublisher.RoutingSubscription?
    var isConnected: Bool { get }
    init(interval: TimeInterval, tolerance: TimeInterval? = nil, runLoop: RunLoop, mode: RunLoop.Mode, options: RunLoop.SchedulerOptions? = nil)
    class RoutingSubscription : Subscription, Subscriber, CustomStringConvertible, CustomReflectable, CustomPlaygroundDisplayConvertible {
      typealias ErasedSubscriber = AnySubscriber<Timer.TimerPublisher.Output, Timer.TimerPublisher.RoutingSubscription.Failure>
      let lock: Lock
      var inner: Timer.TimerPublisher.Inner<Timer.TimerPublisher.RoutingSubscription>!
      var subscribers: [Timer.TimerPublisher.RoutingSubscription.ErasedSubscriber]
      var _lockedIsConnected: Bool
      var isConnected: Bool
      init(parent: Timer.TimerPublisher)
      func addSubscriber<S>(_ sub: S) where S : Subscriber, S.Failure == Timer.TimerPublisher.RoutingSubscription.Failure, S.Input == Timer.TimerPublisher.Output
    }
    typealias Parent = Timer.TimerPublisher
    final class Inner<Downstream> : NSObject, Subscription, CustomReflectable, CustomPlaygroundDisplayConvertible where Downstream : Subscriber, Downstream.Failure == Never, Downstream.Input == Date {
      lazy var timer: Timer?
      var $__lazy_storage_$_timer: Timer??
      let lock: Lock
      var downstream: Downstream?
      var parent: Timer.TimerPublisher.Parent?
      var started: Bool
      var demand: Subscribers.Demand
      init(_ parent: Timer.TimerPublisher.Parent, _ downstream: Downstream)
      func enqueue()
      @objc func timerFired(arg: Any)
    }
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension URLSession {
  func dataTaskPublisher(for url: URL) -> URLSession.DataTaskPublisher
  func dataTaskPublisher(for request: URLRequest) -> URLSession.DataTaskPublisher
  struct DataTaskPublisher : Publisher {
    let request: URLRequest
    let session: URLSession
    init(request: URLRequest, session: URLSession)
    typealias Parent = URLSession.DataTaskPublisher
    final class Inner<Downstream> : Subscription, CustomStringConvertible, CustomReflectable, CustomPlaygroundDisplayConvertible where Downstream : Subscriber, Downstream.Failure == URLSession.DataTaskPublisher.Parent.Failure, Downstream.Input == URLSession.DataTaskPublisher.Parent.Output {
      typealias Input = Downstream.Input
      typealias Failure = Downstream.Failure
      let lock: Lock
      var parent: URLSession.DataTaskPublisher.Parent?
      var downstream: Downstream?
      var demand: Subscribers.Demand
      var task: URLSessionDataTask!
      init(_ parent: URLSession.DataTaskPublisher.Parent, _ downstream: Downstream)
      func handleResponse(data: Data?, response: URLResponse?, error: Error?)
    }
  }
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension Scanner {
  enum NumberRepresentation {
    case decimal
    case hexadecimal
  }
  var currentIndex: String.Index
  func _scan<Integer>(representation: Scanner.NumberRepresentation, scanDecimal: (UnsafeMutablePointer<Integer>?) -> Bool, scanHexadecimal: (UnsafeMutablePointer<Integer>?) -> Bool) -> Integer? where Integer : FixedWidthInteger
  func _scan<FloatingPoint>(representation: Scanner.NumberRepresentation, scanDecimal: (UnsafeMutablePointer<FloatingPoint>?) -> Bool, scanHexadecimal: (UnsafeMutablePointer<FloatingPoint>?) -> Bool) -> FloatingPoint? where FloatingPoint : BinaryFloatingPoint
  func _scan<Integer, OverflowingHexadecimalInteger>(representation: Scanner.NumberRepresentation, scanDecimal: (UnsafeMutablePointer<Integer>?) -> Bool, overflowingScanHexadecimal: (UnsafeMutablePointer<OverflowingHexadecimalInteger>?) -> Bool) -> Integer? where Integer : FixedWidthInteger, OverflowingHexadecimalInteger : FixedWidthInteger, OverflowingHexadecimalInteger : UnsignedInteger
  func scanInt(representation: Scanner.NumberRepresentation = .decimal) -> Int?
  func scanInt32(representation: Scanner.NumberRepresentation = .decimal) -> Int32?
  func scanInt64(representation: Scanner.NumberRepresentation = .decimal) -> Int64?
  func scanUInt64(representation: Scanner.NumberRepresentation = .decimal) -> UInt64?
  func scanFloat(representation: Scanner.NumberRepresentation = .decimal) -> Float?
  func scanDouble(representation: Scanner.NumberRepresentation = .decimal) -> Double?
  func scanDecimal() -> Decimal?
  var _currentIndexAfterSkipping: String.Index { get }
  func scanString(_ searchString: String) -> String?
  func scanCharacters(from set: CharacterSet) -> String?
  func scanUpToString(_ substring: String) -> String?
  func scanUpToCharacters(from set: CharacterSet) -> String?
  func scanCharacter() -> Character?
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension OperationQueue : Scheduler {
  final class DelayReadyOperation : Operation, Cancellable {
    static var readySchedulingQueue: DispatchQueue
    var action: (() -> Void)?
    var readyFromAfter: Bool
    init(_ action: @escaping () -> Void, after: OperationQueue.SchedulerTimeType)
    func becomeReady()
  }
}

@available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
extension RunLoop : Scheduler {
  @objc func runLoopScheduled(action: _CombineRunLoopAction)
}

extension String {
  init(_ cocoaString: NSString)
}

extension String : _ObjectiveCBridgeable {
}

extension Substring : _ObjectiveCBridgeable {
}

extension String : CVarArg {
}

extension NSObject {
  @_effects(releasenone) @objc(newTaggedNSStringWithASCIIBytes_:length_:) func createTaggedString(bytes: UnsafePointer<UInt8>, count: Int) -> AnyObject?
}

extension NSTimeZone : _HasCustomAnyHashableRepresentation {
}

extension NSURL : _HasCustomAnyHashableRepresentation {
}

extension URLCache {
  @available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
  convenience init(memoryCapacity: Int, diskCapacity: Int, directory: URL? = nil)
}

extension NSURLComponents : _HasCustomAnyHashableRepresentation {
}

@available(macOS 10.10, iOS 8.0, *)
extension NSURLQueryItem : _HasCustomAnyHashableRepresentation {
}

extension NSURLRequest : _HasCustomAnyHashableRepresentation {
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension URLSessionWebSocketTask {
  enum Message {
    case data(Data)
    case string(String)
  }
  func send(_ message: URLSessionWebSocketTask.Message, completionHandler: @escaping (Error?) -> Void)
  func receive(completionHandler: @escaping (Result<URLSessionWebSocketTask.Message, Error>) -> Void)
}

@available(macOS 10.15, iOS 13.0, watchOS 6.0, tvOS 13.0, *)
extension URLSessionTaskTransactionMetrics {
  var localPort: Int? { get }
  var remotePort: Int? { get }
  var negotiatedTLSProtocolVersion: tls_protocol_version_t? { get }
  var negotiatedTLSCipherSuite: tls_ciphersuite_t? { get }
}

extension NSUUID : _HasCustomAnyHashableRepresentation {
}

extension _NSRange : _ObjectiveCBridgeable {
}

extension CGRect : _ObjectiveCBridgeable {
}

extension CGPoint : _ObjectiveCBridgeable {
}

extension CGVector : _ObjectiveCBridgeable {
}

extension CGSize : _ObjectiveCBridgeable {
}

extension CGAffineTransform : _ObjectiveCBridgeable {
}

extension NSValue {
  @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
  func value<StoredType>(of type: StoredType.Type) -> StoredType?
}

var _queue: DispatchQueue

var _seenClasses: Set<ObjectIdentifier>

var NSNotFound: Int

@available(macOS 10.12, iOS 10.0, watchOS 3.0, tvOS 10.0, *)
var _iso8601Formatter: ISO8601DateFormatter

var _nilObjCError: Error

var _errorDomainUserInfoProviderQueue: DispatchQueue

var _fastEnumerationMutationsTarget: CUnsignedLong

var _fastEnumerationMutationsPtr: UnsafeMutablePointer<CUnsignedLong>

var associationKey: ()?

let kCFStringEncodingASCII: CFStringEncoding { get }

var _plistNull: String

var _plistNullNSString: NSString

