# Dart: Handling Non-Existent Keys in JSON Response

This repository demonstrates a common error in Dart applications that involve parsing JSON data: accessing a key that might not exist in the JSON response.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version.

The issue occurs when the application attempts to access a key in the JSON object that is not present. This leads to a runtime exception, potentially crashing the application. The solution introduces robust error handling to prevent this issue. 