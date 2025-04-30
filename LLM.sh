#!/bin/bash

if head -n 5 ./src/main/java/com/scala_training/helloworld/controller/HelloWorldController.java | grep -q "import org.springframework.web.bind.annotation.PathVariable;"; then
    echo "[LLM-AGENT] Retrieving SonarQube analysis results..."
    sleep 5
    echo "[LLM-AGENT] 7 issues found:"
    echo "	- 0 Vulnerabilities"
    echo "	- 2 Bugs"
    echo "	- 6 Code Smells"
    echo "	- 22.2% code coverage"
    echo ""
    echo "[LLM-AGENT] Starting bug review..."
    sleep 1

    echo "[LLM-AGENT] Bug #1"
    echo "	- File: src/main/java/com/scala_training/helloworld/controller/HelloWorldController.java"
    echo "	- Description: Detected unused import: org.springframework.web.bind.annotation.PathVariable."
    echo "	- Action: Removing unused import."
    sleep 4
    echo ""
    echo "[LLM-AGENT] Bug #2"
    echo "	- File: src/main/java/com/scala_training/helloworld/controller/HelloWorldController.java"
    echo "	- Description: Identical sub-expressions found on both sides of an equals comparison."
    echo "	- Action: Correcting logic to properly compare distinct values."
    sleep 4
    echo ""
    echo "[LLM-AGENT] Starting code smells review..."
    sleep 1
    echo ""
    echo "[LLM-AGENT] Code smell #1"
    echo "	- File: src/main/java/com/scala_training/helloworld/controller/HelloWorldController.java"
    echo "	- Description: Block of commented-out lines detected."
    echo "	- Action: Removing commented-out code block to improve code cleanliness."
    sleep 5
    echo ""
    echo "[LLM-AGENT] Code smell #2"
    echo "	- File: src/main/java/com/scala_training/helloworld/controller/HelloWorldController.java"
    echo "	- Description: Conditional structure has identical code blocks."
    echo "	- Action: Refactor conditional to avoid redundant branches or removed unnecessary condition."
    sleep 5
    echo ""
    echo "[LLM-AGENT] Code smell #3"
    echo "	- File: src/test/java/com/scala_training/helloworld/HelloWorldApplicationTests.java"
    echo "	- Description: Test case without assertions detected."
    echo "	- Action: Add meaningful assertions to validate expected behavior."
    sleep 4
    echo ""
    echo "[LLM-AGENT] Code smell #4"
    echo "	- File: src/test/java/com/scala_training/helloworld/controller/HelloWorldControllerTest.java"
    echo "	- Description: Public modifier unnecessarily used."
    echo "	- Action: Removing redundant 'public' modifier to comply with code standards."
    sleep 4
    echo ""
    echo "[LLM-AGENT] Code smell #5"
    echo "	- File: src/test/java/com/scala_training/helloworld/controller/HelloWorldControllerTest.java"
    echo "	- Description: Another test case without assertions detected."
    echo "	- Action: Added appropriate assertions."
    sleep 5
    echo ""
    echo "[LLM-AGENT] Code smell #6"
    echo "	- File: src/test/java/com/scala_training/helloworld/controller/HelloWorldControllerTest.java"
    echo "	- Description: Second occurrence: Unnecessary 'public' modifier found."
    echo "	- Action: Removing redundant 'public' modifier."
    sleep 6
    echo ""

    echo "[LLM-AGENT] Sumary:"
    echo "  - Imports cleaned."
    echo "  - Logic corrected."
    echo "  - Redundant code removed."
    echo "  - Test coverage improved."
    echo "  - Access modifiers optimized."
    sleep 5
    echo ""

    echo "[LLM-AGENT] Creating commit..."
    echo "[LLM-AGENT] Commit created: (LLM-AGENT) Fix bugs and code smells based on SonarQube analysis"
    sleep 5

else
    echo "[LLM-AGENT] Retrieving SonarQube analysis results..."
    sleep 5
    echo "[LLM-AGENT] 7 issues found:"
    echo "	- 0 Vulnerabilities"
    echo "	- 0 Bugs"
    echo "	- 0 Code Smells"
    echo "	- 60.0% code coverage"
    echo ""
    echo "[LLM-AGENT] Nothing to fix!"
    sleep 1
fi