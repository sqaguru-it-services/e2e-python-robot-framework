# e2e-python-robot-framework

Welcome to the End-to-End (E2E) Testing Automation Project using Robot Framework with Selenium Library.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Test Cases](#test-cases)
- [Test Execution](#test-execution)
- [License](#license)

## Prerequisites

Before running the tests in this project, ensure you have the following prerequisites installed:

- [Python](https://www.python.org/) (3.6 or higher)
- [Robot Framework](https://robotframework.org/)
- [Selenium Library](https://robotframework.org/SeleniumLibrary/)
- Web browser drivers (e.g., ChromeDriver)

## Installation

1. Clone this repository to your local machine:

    ```bash
    git clone https://github.com/sqaguru-it-services/e2e-python-robot-framework.git
    cd e2e-python-robot-framework
    ```
2. Create a virtual environment (optional but recommended):
    ```bash
    python -m venv venv
    source venv/bin/activate  # On Windows, use venv\Scripts\activate
    ```
3. Install project dependencies:
    ```bash
    pip install -r requirements.txt
    ```
## Usage

To create and run your own test cases:

- Write test cases in the TestSuite/ directory using Robot Framework syntax.
- Define reusable keywords in the resource/ directory.

## Test Cases

Example test cases are in the TestSuite/ directory. Modify or create your own test cases as needed for your application.

## Test Execution

- Execute tests using the following command:
    ```bash
    # run all tests
    robot -d report .

    # run tests in headless mode. For browser options check - https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html#Open%20Browser
    robot -d report -v browser:"headless chrome"  . 
    
    # run single test case
    robot -d report -t <test_case_name> .

    # running tests by tag
    robot -d report -i <test_tag> .
    ```


## License

This project is licensed under the MIT License. See the LICENSE file for details.