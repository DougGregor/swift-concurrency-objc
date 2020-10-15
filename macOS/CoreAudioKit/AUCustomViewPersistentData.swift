
@available(macOS 10.6, *)
protocol AUCustomViewPersistentData {
  unowned(unsafe) var customViewPersistentData: @sil_unmanaged NSDictionary? { get set }
}
