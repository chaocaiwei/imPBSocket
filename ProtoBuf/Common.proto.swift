/// Generated by the Protocol Buffers 3.5.1 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 4.0.0
/// Source file "common.proto"
/// Syntax "Proto3"

import Foundation
import ProtocolBuffers


public struct CommonRoot {
    public static let `default` = CommonRoot()
    public var extensionRegistry:ExtensionRegistry

    init() {
        extensionRegistry = ExtensionRegistry()
        registerAllExtensions(registry: extensionRegistry)
        ErrorRoot.default.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
}



//Enum type declaration start 

public enum CommonMethod:Int32, GeneratedEnum {
    case commonMethodUser = 0
    case commonMethodMessage = 1
    case commonMethodFriend = 2
    case commonMethodP2PConnect = 3
    public func toString() -> String {
        switch self {
        case .commonMethodUser: return "common_method_user"
        case .commonMethodMessage: return "common_method_message"
        case .commonMethodFriend: return "common_method_friend"
        case .commonMethodP2PConnect: return "common_method_p2p_connect"
        }
    }
    public static func fromString(_ str:String) throws -> CommonMethod {
        switch str {
        case "common_method_user":    return .commonMethodUser
        case "common_method_message":    return .commonMethodMessage
        case "common_method_friend":    return .commonMethodFriend
        case "common_method_p2p_connect":    return .commonMethodP2PConnect
        default: throw ProtocolBuffersError.invalidProtocolBuffer("Conversion failed.")
        }
    }
    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
        switch self {
        case .commonMethodUser: return ".commonMethodUser"
        case .commonMethodMessage: return ".commonMethodMessage"
        case .commonMethodFriend: return ".commonMethodFriend"
        case .commonMethodP2PConnect: return ".commonMethodP2PConnect"
        }
    }
    public var hashValue:Int {
        return self.rawValue.hashValue
    }
    public static func ==(lhs:CommonMethod, rhs:CommonMethod) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}

//Enum type declaration end 

final public class Common : GeneratedMessage {
    public typealias BuilderType = Common.Builder

    public static func == (lhs: Common, rhs: Common) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasMethod == rhs.hasMethod) && (!lhs.hasMethod || lhs.method == rhs.method)
        fieldCheck = fieldCheck && (lhs.hasBody == rhs.hasBody) && (!lhs.hasBody || lhs.body == rhs.body)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }

    public fileprivate(set) var method:CommonMethod = CommonMethod.commonMethodUser
    public fileprivate(set) var hasMethod:Bool = false
    public fileprivate(set) var body:Data! = nil
    public fileprivate(set) var hasBody:Bool = false

    required public init() {
        super.init()
    }
    override public func isInitialized() throws {
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasMethod {
            try codedOutputStream.writeEnum(fieldNumber: 1, value:method.rawValue)
        }
        if hasBody {
            try codedOutputStream.writeData(fieldNumber: 2, value:body)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if (hasMethod) {
            serialize_size += method.rawValue.computeEnumSize(fieldNumber: 1)
        }
        if hasBody {
            serialize_size += body.computeDataSize(fieldNumber: 2)
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> Common.Builder {
        return Common.classBuilder() as! Common.Builder
    }
    public func getBuilder() -> Common.Builder {
        return classBuilder() as! Common.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return Common.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return Common.Builder()
    }
    public func toBuilder() throws -> Common.Builder {
        return try Common.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:Common) throws -> Common.Builder {
        return try Common.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        try isInitialized()
        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasMethod {
            jsonMap["method"] = method.toString()
        }
        if hasBody {
            jsonMap["body"] = body.base64EncodedString(options: Data.Base64EncodingOptions(rawValue: 0))
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Common {
        return try Common.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> Common {
        return try Common.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if (hasMethod) {
            output += "\(indent) method: \(method.description)\n"
        }
        if hasBody {
            output += "\(indent) body: \(body) \n"
        }
        output += unknownFields.getDescription(indent: indent)
        return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasMethod {
                 hashCode = (hashCode &* 31) &+ method.hashValue
            }
            if hasBody {
                hashCode = (hashCode &* 31) &+ body.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "Common"
    }
    override public func className() -> String {
        return "Common"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
        fileprivate var builderResult:Common = Common()
        public func getMessage() -> Common {
            return builderResult
        }

        required override public init () {
            super.init()
        }
            public var method:CommonMethod {
                get {
                    return builderResult.method
                }
                set (value) {
                    builderResult.hasMethod = true
                    builderResult.method = value
                }
            }
            public var hasMethod:Bool{
                get {
                    return builderResult.hasMethod
                }
            }
        @discardableResult
            public func setMethod(_ value:CommonMethod) -> Common.Builder {
              self.method = value
              return self
            }
        @discardableResult
            public func clearMethod() -> Common.Builder {
               builderResult.hasMethod = false
               builderResult.method = .commonMethodUser
               return self
            }
        public var body:Data {
            get {
                return builderResult.body
            }
            set (value) {
                builderResult.hasBody = true
                builderResult.body = value
            }
        }
        public var hasBody:Bool {
            get {
                return builderResult.hasBody
            }
        }
        @discardableResult
        public func setBody(_ value:Data) -> Common.Builder {
            self.body = value
            return self
        }
        @discardableResult
        public func clearBody() -> Common.Builder{
            builderResult.hasBody = false
            builderResult.body = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> Common.Builder {
            builderResult = Common()
            return self
        }
        override public func clone() throws -> Common.Builder {
            return try Common.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> Common {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> Common {
            let returnMe:Common = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:Common) throws -> Common.Builder {
            if other == Common() {
                return self
            }
            if other.hasMethod {
                method = other.method
            }
            if other.hasBody {
                body = other.body
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Common.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Common.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 8:
                    let valueIntmethod = try codedInputStream.readEnum()
                    if let enumsmethod = CommonMethod(rawValue:valueIntmethod){
                        method = enumsmethod
                    } else {
                        try unknownFieldsBuilder.mergeVarintField(fieldNumber: 1, value:Int64(valueIntmethod))
                    }

                case 18:
                    body = try codedInputStream.readData()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Common.Builder {
            let resultDecodedBuilder = Common.Builder()
            if let jsonValueMethod = jsonMap["method"] as? String {
                resultDecodedBuilder.method = try CommonMethod.fromString(jsonValueMethod)
            }
            if let jsonValueBody = jsonMap["body"] as? String {
                resultDecodedBuilder.body = Data(base64Encoded:jsonValueBody, options: Data.Base64DecodingOptions(rawValue:0))!
            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> Common.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try Common.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

final public class CommonRespon : GeneratedMessage {
    public typealias BuilderType = CommonRespon.Builder

    public static func == (lhs: CommonRespon, rhs: CommonRespon) -> Bool {
        if lhs === rhs {
            return true
        }
        var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
        fieldCheck = fieldCheck && (lhs.hasIsSuc == rhs.hasIsSuc) && (!lhs.hasIsSuc || lhs.isSuc == rhs.isSuc)
        fieldCheck = fieldCheck && (lhs.hasRespon == rhs.hasRespon) && (!lhs.hasRespon || lhs.respon == rhs.respon)
        fieldCheck = fieldCheck && (lhs.hasError == rhs.hasError) && (!lhs.hasError || lhs.error == rhs.error)
        fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
        return fieldCheck
    }

    public fileprivate(set) var isSuc:Bool! = nil
    public fileprivate(set) var hasIsSuc:Bool = false

    public fileprivate(set) var respon:Data! = nil
    public fileprivate(set) var hasRespon:Bool = false

    public fileprivate(set) var error:Error!
    public fileprivate(set) var hasError:Bool = false
    required public init() {
        super.init()
    }
    override public func isInitialized() throws {
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
        if hasIsSuc {
            try codedOutputStream.writeBool(fieldNumber: 1, value:isSuc)
        }
        if hasRespon {
            try codedOutputStream.writeData(fieldNumber: 2, value:respon)
        }
        if hasError {
            try codedOutputStream.writeMessage(fieldNumber: 3, value:error)
        }
        try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
        var serialize_size:Int32 = memoizedSerializedSize
        if serialize_size != -1 {
         return serialize_size
        }

        serialize_size = 0
        if hasIsSuc {
            serialize_size += isSuc.computeBoolSize(fieldNumber: 1)
        }
        if hasRespon {
            serialize_size += respon.computeDataSize(fieldNumber: 2)
        }
        if hasError {
            if let varSizeerror = error?.computeMessageSize(fieldNumber: 3) {
                serialize_size += varSizeerror
            }
        }
        serialize_size += unknownFields.serializedSize()
        memoizedSerializedSize = serialize_size
        return serialize_size
    }
    public class func getBuilder() -> CommonRespon.Builder {
        return CommonRespon.classBuilder() as! CommonRespon.Builder
    }
    public func getBuilder() -> CommonRespon.Builder {
        return classBuilder() as! CommonRespon.Builder
    }
    override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
        return CommonRespon.Builder()
    }
    override public func classBuilder() -> ProtocolBuffersMessageBuilder {
        return CommonRespon.Builder()
    }
    public func toBuilder() throws -> CommonRespon.Builder {
        return try CommonRespon.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:CommonRespon) throws -> CommonRespon.Builder {
        return try CommonRespon.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,Any> {
        try isInitialized()
        var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
        if hasIsSuc {
            jsonMap["isSuc"] = isSuc
        }
        if hasRespon {
            jsonMap["respon"] = respon.base64EncodedString(options: Data.Base64EncodingOptions(rawValue: 0))
        }
        if hasError {
            jsonMap["error"] = try error.encode()
        }
        return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,Any>) throws -> CommonRespon {
        return try CommonRespon.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> CommonRespon {
        return try CommonRespon.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
        var output = ""
        if hasIsSuc {
            output += "\(indent) isSuc: \(isSuc) \n"
        }
        if hasRespon {
            output += "\(indent) respon: \(respon) \n"
        }
        if hasError {
            output += "\(indent) error {\n"
            if let outDescError = error {
                output += try outDescError.getDescription(indent: "\(indent)  ")
            }
            output += "\(indent) }\n"
        }
        output += unknownFields.getDescription(indent: indent)
        return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasIsSuc {
                hashCode = (hashCode &* 31) &+ isSuc.hashValue
            }
            if hasRespon {
                hashCode = (hashCode &* 31) &+ respon.hashValue
            }
            if hasError {
                if let hashValueerror = error?.hashValue {
                    hashCode = (hashCode &* 31) &+ hashValueerror
                }
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "CommonRespon"
    }
    override public func className() -> String {
        return "CommonRespon"
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
        fileprivate var builderResult:CommonRespon = CommonRespon()
        public func getMessage() -> CommonRespon {
            return builderResult
        }

        required override public init () {
            super.init()
        }
        public var isSuc:Bool {
            get {
                return builderResult.isSuc
            }
            set (value) {
                builderResult.hasIsSuc = true
                builderResult.isSuc = value
            }
        }
        public var hasIsSuc:Bool {
            get {
                return builderResult.hasIsSuc
            }
        }
        @discardableResult
        public func setIsSuc(_ value:Bool) -> CommonRespon.Builder {
            self.isSuc = value
            return self
        }
        @discardableResult
        public func clearIsSuc() -> CommonRespon.Builder{
            builderResult.hasIsSuc = false
            builderResult.isSuc = nil
            return self
        }
        public var respon:Data {
            get {
                return builderResult.respon
            }
            set (value) {
                builderResult.hasRespon = true
                builderResult.respon = value
            }
        }
        public var hasRespon:Bool {
            get {
                return builderResult.hasRespon
            }
        }
        @discardableResult
        public func setRespon(_ value:Data) -> CommonRespon.Builder {
            self.respon = value
            return self
        }
        @discardableResult
        public func clearRespon() -> CommonRespon.Builder{
            builderResult.hasRespon = false
            builderResult.respon = nil
            return self
        }
        public var error:Error! {
            get {
                if errorBuilder_ != nil {
                    builderResult.error = errorBuilder_.getMessage()
                }
                return builderResult.error
            }
            set (value) {
                builderResult.hasError = value != nil
                builderResult.error = value
            }
        }
        public var hasError:Bool {
            get {
                return builderResult.hasError
            }
        }
        fileprivate var errorBuilder_:Error.Builder! {
            didSet {
                builderResult.hasError = true
            }
        }
        public func getErrorBuilder() -> Error.Builder {
            if errorBuilder_ == nil {
                errorBuilder_ = Error.Builder()
                builderResult.error = errorBuilder_.getMessage()
                if error != nil {
                    try! errorBuilder_.mergeFrom(other: error)
                }
            }
            return errorBuilder_
        }
        @discardableResult
        public func setError(_ value:Error!) -> CommonRespon.Builder {
            self.error = value
            return self
        }
        @discardableResult
        public func mergeError(value:Error) throws -> CommonRespon.Builder {
            if builderResult.hasError {
                builderResult.error = try Error.builderWithPrototype(prototype:builderResult.error).mergeFrom(other: value).buildPartial()
            } else {
                builderResult.error = value
            }
            builderResult.hasError = true
            return self
        }
        @discardableResult
        public func clearError() -> CommonRespon.Builder {
            errorBuilder_ = nil
            builderResult.hasError = false
            builderResult.error = nil
            return self
        }
        override public var internalGetResult:GeneratedMessage {
            get {
                return builderResult
            }
        }
        @discardableResult
        override public func clear() -> CommonRespon.Builder {
            builderResult = CommonRespon()
            return self
        }
        override public func clone() throws -> CommonRespon.Builder {
            return try CommonRespon.builderWithPrototype(prototype:builderResult)
        }
        override public func build() throws -> CommonRespon {
            try checkInitialized()
            return buildPartial()
        }
        public func buildPartial() -> CommonRespon {
            let returnMe:CommonRespon = builderResult
            return returnMe
        }
        @discardableResult
        public func mergeFrom(other:CommonRespon) throws -> CommonRespon.Builder {
            if other == CommonRespon() {
                return self
            }
            if other.hasIsSuc {
                isSuc = other.isSuc
            }
            if other.hasRespon {
                respon = other.respon
            }
            if (other.hasError) {
                try mergeError(value: other.error)
            }
            try merge(unknownField: other.unknownFields)
            return self
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream) throws -> CommonRespon.Builder {
            return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
        }
        @discardableResult
        override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> CommonRespon.Builder {
            let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
            while (true) {
                let protobufTag = try codedInputStream.readTag()
                switch protobufTag {
                case 0: 
                    self.unknownFields = try unknownFieldsBuilder.build()
                    return self

                case 8:
                    isSuc = try codedInputStream.readBool()

                case 18:
                    respon = try codedInputStream.readData()

                case 26:
                    let subBuilder:Error.Builder = Error.Builder()
                    if hasError {
                        try subBuilder.mergeFrom(other: error)
                    }
                    try codedInputStream.readMessage(builder: subBuilder, extensionRegistry:extensionRegistry)
                    error = subBuilder.buildPartial()

                default:
                    if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                        unknownFields = try unknownFieldsBuilder.build()
                        return self
                    }
                }
            }
        }
        class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> CommonRespon.Builder {
            let resultDecodedBuilder = CommonRespon.Builder()
            if let jsonValueIsSuc = jsonMap["isSuc"] as? Bool {
                resultDecodedBuilder.isSuc = jsonValueIsSuc
            }
            if let jsonValueRespon = jsonMap["respon"] as? String {
                resultDecodedBuilder.respon = Data(base64Encoded:jsonValueRespon, options: Data.Base64DecodingOptions(rawValue:0))!
            }
            if let jsonValueError = jsonMap["error"] as? Dictionary<String,Any> {
                resultDecodedBuilder.error = try Error.Builder.decodeToBuilder(jsonMap:jsonValueError).build()

            }
            return resultDecodedBuilder
        }
        override class public func fromJSONToBuilder(data:Data) throws -> CommonRespon.Builder {
            let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
            guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
              throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
            }
            return try CommonRespon.Builder.decodeToBuilder(jsonMap:jsDataCast)
        }
    }

}

extension Common: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Common> {
        var mergedArray = Array<Common>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> Common? {
        return try Common.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> Common {
        return try Common.Builder().mergeFrom(data: data, extensionRegistry:CommonRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Common {
        return try Common.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> Common {
        return try Common.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Common {
        return try Common.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> Common {
        return try Common.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Common {
        return try Common.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "method": return self.method
        case "body": return self.body
        default: return nil
        }
    }
}
extension Common.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = Common
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "method": return self.method
            case "body": return self.body
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "method":
                guard let newSubscriptValue = newSubscriptValue as? CommonMethod else {
                    return
                }
                self.method = newSubscriptValue
            case "body":
                guard let newSubscriptValue = newSubscriptValue as? Data else {
                    return
                }
                self.body = newSubscriptValue
            default: return
            }
        }
    }
}
extension CommonRespon: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<CommonRespon> {
        var mergedArray = Array<CommonRespon>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> CommonRespon? {
        return try CommonRespon.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> CommonRespon {
        return try CommonRespon.Builder().mergeFrom(data: data, extensionRegistry:CommonRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> CommonRespon {
        return try CommonRespon.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> CommonRespon {
        return try CommonRespon.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> CommonRespon {
        return try CommonRespon.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> CommonRespon {
        return try CommonRespon.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> CommonRespon {
        return try CommonRespon.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "isSuc": return self.isSuc
        case "respon": return self.respon
        case "error": return self.error
        default: return nil
        }
    }
}
extension CommonRespon.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = CommonRespon
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "isSuc": return self.isSuc
            case "respon": return self.respon
            case "error": return self.error
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "isSuc":
                guard let newSubscriptValue = newSubscriptValue as? Bool else {
                    return
                }
                self.isSuc = newSubscriptValue
            case "respon":
                guard let newSubscriptValue = newSubscriptValue as? Data else {
                    return
                }
                self.respon = newSubscriptValue
            case "error":
                guard let newSubscriptValue = newSubscriptValue as? Error else {
                    return
                }
                self.error = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)