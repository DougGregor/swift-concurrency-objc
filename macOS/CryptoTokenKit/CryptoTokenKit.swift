
@available(macOS 10.10, *)
extension TKSmartCard {
  func send(ins: UInt8, p1: UInt8, p2: UInt8, data: Data? = nil, le: Int? = nil, reply: @escaping (Data?, UInt16, Error?) -> Void)
  @available(macOS 10.12, *)
  func send(ins: UInt8, p1: UInt8, p2: UInt8, data: Data? = nil, le: Int? = nil) throws -> (sw: UInt16, response: Data)
  @available(macOS 10.12, *)
  func withSession<T>(_ body: @escaping () throws -> T) throws -> T
}

