
extension NSMutableDictionary {
  convenience init!(obexHeadersData inHeadersData: UnsafeRawPointer!, headersDataSize inDataSize: Int)
  convenience init!(obexHeadersData inHeadersData: Data!)
  func getHeaderBytes() -> NSMutableData!
  func addTargetHeader(_ inHeaderData: UnsafeRawPointer!, length inHeaderDataLength: UInt32) -> OBEXError
  func addHTTPHeader(_ inHeaderData: UnsafeRawPointer!, length inHeaderDataLength: UInt32) -> OBEXError
  func addBodyHeader(_ inHeaderData: UnsafeRawPointer!, length inHeaderDataLength: UInt32, endOfBody isEndOfBody: Bool) -> OBEXError
  func addWhoHeader(_ inHeaderData: UnsafeRawPointer!, length inHeaderDataLength: UInt32) -> OBEXError
  func addConnectionIDHeader(_ inHeaderData: UnsafeRawPointer!, length inHeaderDataLength: UInt32) -> OBEXError
  func addApplicationParameterHeader(_ inHeaderData: UnsafeRawPointer!, length inHeaderDataLength: UInt32) -> OBEXError
  func addByteSequenceHeader(_ inHeaderData: UnsafeRawPointer!, length inHeaderDataLength: UInt32) -> OBEXError
  func addObjectClassHeader(_ inHeaderData: UnsafeRawPointer!, length inHeaderDataLength: UInt32) -> OBEXError
  func addAuthorizationChallengeHeader(_ inHeaderData: UnsafeRawPointer!, length inHeaderDataLength: UInt32) -> OBEXError
  func addAuthorizationResponseHeader(_ inHeaderData: UnsafeRawPointer!, length inHeaderDataLength: UInt32) -> OBEXError
  func addTimeISOHeader(_ inHeaderData: UnsafeRawPointer!, length inHeaderDataLength: UInt32) -> OBEXError
  func addTypeHeader(_ type: String!) -> OBEXError
  func addLengthHeader(_ length: UInt32) -> OBEXError
  func addTime4ByteHeader(_ time4Byte: UInt32) -> OBEXError
  func addCountHeader(_ inCount: UInt32) -> OBEXError
  func addDescriptionHeader(_ inDescriptionString: String!) -> OBEXError
  func addNameHeader(_ inNameString: String!) -> OBEXError
  func addUserDefinedHeader(_ inHeaderData: UnsafeRawPointer!, length inHeaderDataLength: UInt32) -> OBEXError
  func addImageHandleHeader(_ type: String!) -> OBEXError
  func addImageDescriptorHeader(_ inHeaderData: UnsafeRawPointer!, length inHeaderDataLength: UInt32) -> OBEXError
}
