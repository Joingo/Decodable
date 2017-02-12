//
//  Castable.swift
//  Decodable
//
//  Created by Johannes Lund on 2015-09-25.
//  Copyright © 2015 anviking. All rights reserved.
//

import Foundation

/// Attempt to cast an `Any` to `T` or throw
///
/// - throws: `DecodingError.typeMismatch(expected, actual, metadata)`
public func cast<T>(_ object: Any) throws -> T {
    guard let result = object as? T else {
        let metadata = DecodingError.Metadata(object: object)
        throw DecodingError.typeMismatch(expected: T.self, actual: type(of: object), metadata)
    }
    return result
}

public protocol Castable: Decodable {}

extension Castable {
    public static func decode(_ json: Any) throws -> Self {
        return try cast(json)
    }
}

extension String: Castable {}
extension Int: Castable {}
extension Double: Castable {}
extension Bool: Castable {}

/// Allows overriding default `decode` function from your app.
/// 
/// You likely don't want to conform to this yourself.
public protocol DynamicDecodable {
    associatedtype DecodedType
    
    /// A closure describing how this type should be decoded
    /// 
    /// Types also conforming to `Decodable` call this closure 
    /// from their `decode` function.
    ///
    /// - note: This is intended as a set-once thing.
    static var decoder: (Any) throws -> DecodedType {get set}
}

extension Decodable where Self: DynamicDecodable, Self.DecodedType == Self {
    public static func decode(_ json: Any) throws -> Self {
        return try decoder(json)
        
    }
}

extension NSDictionary: Decodable {
    public static func decode(_ json: Any) throws -> Self {
        return try cast(json)
    }
}

extension NSArray: DynamicDecodable {
    public static var decoder: (Any) throws -> NSArray = { try cast($0) }
    public static func decode(_ json: Any) throws -> NSArray {
        return try decoder(json)
    }

}
