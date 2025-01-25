# Objective-C Memory Leak Example

This repository demonstrates a common memory leak scenario in Objective-C, stemming from the improper use of retain, release, and autorelease in manual reference counting. The `bug.m` file contains the erroneous code, while `bugSolution.m` provides the corrected version.

## Problem

The core issue lies in how the `myString` property is managed.  A memory leak occurs because the string is retained twice but only released once, leaving a dangling pointer that is never deallocated.

## Solution

The corrected code in `bugSolution.m` demonstrates proper memory management using techniques such as autorelease pools or the use of ARC to avoid manual reference counting.