# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications involving the decoding of JSON data and accessing its elements.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a robust solution.

## Problem
The primary issue is the potential for exceptions during JSON parsing and data access.  If the JSON is malformed or the expected data structure is not found, the application will crash without proper error handling.

## Solution
The `bugSolution.dart` file incorporates comprehensive error handling using `try-catch` blocks.  It ensures that exceptions are caught, logged, and handled gracefully to prevent app crashes.  It also includes type checking to avoid runtime errors due to unexpected data structures.