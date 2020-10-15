
protocol NSLocking {
  func lock()
  func unlock()
}
class NSLock : NSObject, NSLocking {
  func `try`() -> Bool
  func lock(before limit: Date) -> Bool
  @available(macOS 10.5, *)
  var name: String?
}
class NSConditionLock : NSObject, NSLocking {
  init(condition: Int)
  var condition: Int { get }
  func lock(whenCondition condition: Int)
  func `try`() -> Bool
  func tryLock(whenCondition condition: Int) -> Bool
  func unlock(withCondition condition: Int)
  func lock(before limit: Date) -> Bool
  func lock(whenCondition condition: Int, before limit: Date) -> Bool
  @available(macOS 10.5, *)
  var name: String?
}
class NSRecursiveLock : NSObject, NSLocking {
  func `try`() -> Bool
  func lock(before limit: Date) -> Bool
  @available(macOS 10.5, *)
  var name: String?
}
@available(macOS 10.5, *)
class NSCondition : NSObject, NSLocking {
  func wait()
  func wait(until limit: Date) -> Bool
  func signal()
  func broadcast()
  @available(macOS 10.5, *)
  var name: String?
}
