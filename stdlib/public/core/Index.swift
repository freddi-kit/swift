//===--- Index.swift - A position in a Collection -------------------------===//
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2016 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
//===----------------------------------------------------------------------===//

/// This protocol is an implementation detail of `ForwardIndex`; do
/// not use it directly.
///
/// Its requirements are inherited by `ForwardIndex` and thus must
/// be satisfied by types conforming to that protocol.
@_show_in_interface
public protocol _Incrementable : Equatable {}

@available(*, unavailable, message: "Use \'-= 1\' or call collection.prior(Index)")
public prefix func -- <T : _Incrementable> (i: inout T) -> T {
  fatalError("unavailable operator can't be called")
}

@available(*, unavailable, message: "Use \'-= 1\' or call collection.prior(Index)")
public postfix func -- <T : _Incrementable> (i: inout T) -> T {
  fatalError("unavailable operator can't be called")
}

@available(*, unavailable, message: "Use \'+= 1\' or call 'collection.next(Index)")
public prefix func ++ <T : _Incrementable> (i: inout T) -> T {
  fatalError("unavailable operator can't be called")
}

@available(*, unavailable, message: "Use \'+= 1\' or call 'collection.next(Index)")
public postfix func ++ <T : _Incrementable> (i: inout T) -> T {
  fatalError("unavailable operator can't be called")
}

@available(*, unavailable, renamed: "Comparable")
public typealias ForwardIndexType = Void

@available(*, unavailable, renamed: "Comparable")
public typealias BidirectionalIndexType = Void

@available(*, unavailable, renamed: "Strideable")
public typealias RandomAccessIndexType = Void
