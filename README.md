# Unhandled FormatException in Dart's jsonDecode

This repository demonstrates a common error in Dart applications when dealing with JSON responses:  unhandled `FormatException` exceptions thrown by `jsonDecode`. The initial code lacks robust error handling, making debugging difficult.  The solution provides improved error handling and more informative error messages.

## Bug Description

The `fetchData` function attempts to decode a JSON response from an API. If the JSON is malformed, `jsonDecode` throws a `FormatException`. The original code's `catch` block is too broad, catching any exception without providing specific details.  This makes it hard to pinpoint the source of the problem.

## Solution

The solution demonstrates several improvements:

1. **Specific Exception Handling**: Catches `FormatException` specifically to handle JSON decoding errors.
2. **Informative Error Messages**:  Provides more context in error messages to aid debugging.
3. **Improved Logging**: Uses `print` for debugging (consider logging libraries for production). 
4. **Consider Retry Mechanisms**:  You might add code to retry the request after a delay if the problem is temporary.