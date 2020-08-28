
class JRSSymbolicator : NSObject {
  /*not inherited*/ init!(forPid pid: pid_t)
  func address(forSymbol symbolName: String!) -> UInt64
}
