
@available(tvOS 14.0, *)
class MXDiagnosticPayload : NSObject, NSSecureCoding {
  var cpuExceptionDiagnostics: [MXCPUExceptionDiagnostic]? { get }
  var diskWriteExceptionDiagnostics: [MXDiskWriteExceptionDiagnostic]? { get }
  var hangDiagnostics: [MXHangDiagnostic]? { get }
  var crashDiagnostics: [MXCrashDiagnostic]? { get }
  var timeStampBegin: Date { get }
  var timeStampEnd: Date { get }
  func jsonRepresentation() -> Data
  func dictionaryRepresentation() -> [AnyHashable : Any]
}
