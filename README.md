**Important: Don't forget to update the [Candidate README](#candidate-readme) section**

Real-time Transaction Challenge
===============================
## Overview
Welcome to Current's take-home technical assessment for backend engineers! We appreciate you taking the time to complete this, and we're excited to see what you come up with.

You are tasked with building a simple bank ledger system that utilizes the [event sourcing](https://martinfowler.com/eaaDev/EventSourcing.html) pattern to maintain a transaction history. The system should allow users to perform basic banking operations such as depositing funds, withdrawing funds, and checking balances. The ledger should maintain a complete and immutable record of all transactions, enabling auditability and reconstruction of account balances at any point in time.

## Details
The [included service.yml](service.yml) is the OpenAPI 3.0 schema to a service we would like you to create and host.

The service accepts two types of transactions:
1) Loads: Add money to a user (credit)

2) Authorizations: Conditionally remove money from a user (debit)

Every load or authorization PUT should return the updated balance following the transaction. Authorization declines should be saved, even if they do not impact balance calculation.


Implement the event sourcing pattern to record all banking transactions as immutable events. Each event should capture relevant information such as transaction type, amount, timestamp, and account identifier.
Define the structure of events and ensure they can be easily serialized and persisted to a data store of your choice. We do not expect you to use a persistent store (you can you in-memory object), but you can if you want. We should be able to bootstrap your project locally to test.

## Expectations
We are looking for attention in the following areas:
1) Do you accept all requests supported by the schema, in the format described?

2) Do your responses conform to the prescribed schema?

3) Does the authorizations endpoint work as documented in the schema?

4) Do you have unit and integrations test on the functionality?

Here’s a breakdown of the key criteria we’ll be considering when grading your submission:

**Adherence to Design Patterns:** We’ll evaluate whether your implementation follows established design patterns such as following the event sourcing model.

**Correctness**: We’ll assess whether your implementation effectively implements the desired pattern and meets the specified requirements.

**Testing:** We’ll assess the comprehensiveness and effectiveness of your test suite, including unit tests, integration tests, and possibly end-to-end tests. Your tests should cover critical functionalities, edge cases, and potential failure scenarios to ensure the stability of the system.

**Documentation and Clarity:** We’ll assess the clarity of your documentation, including comments within the code, README files, architectural diagrams, and explanations of design decisions. Your documentation should provide sufficient context for reviewers to understand the problem, solution, and implementation details.

# Candidate README
## Bootstrap instructions
To run this server locally, do the following:
-> Click on the provided link to access the GitHub Repository.
-> Use Git to Clone the repository to your local machine by running git clone < Repository URL> in terminal or Git.
-> Ensure you have Java Development Kit (JDK) installed on your system.
-> Navigate to the directory where the Java files are located.
-> Compile the Java files using a Java compiler (Example: Eclipse).
-> Run the compiled Java program (e.g., java Foo) to execute the main method and observe the output.

## Design considerations
I built a "Simple bank ledger system" to manage transactions using Java. The system consists of two main classes: "Transaction" and "Foo". Transaction Class:
->The Transaction class represents individual transactions with fields such as action, message ID, user ID, debit/credit indicator, amount, response code, and balance. 
Foo Class:
-> The Foo class serves as the main application class responsible for processing transactions and maintaining user balances. Transactions are processed based on their type (credit or debit), and the system ensures that declined debit transactions are recorded with the appropriate response code.

## Assumptions:
In designing the service, I assumed that the provided sample transactions represent typical use cases for the bank ledger system. Additionally, I assumed that the main method serves as a simple test scenario to demonstrate the functionality of the system.

## Bonus: Deployment considerations
If I were to deploy this system, 
->I would consider containerizing the application using Docker for easy deployment and scalability. The Docker container would include the necessary Java runtime environment to execute the application. 
->For hosting, I would deploy the Docker container to a cloud platform such as AWS or Google Cloud Platform, leveraging services like Amazon ECS or Google Kubernetes Engine for container orchestration. Additionally, I would implement monitoring and logging solutions to ensure the health and performance of the deployed application.

## License

At CodeScreen, we strongly value the integrity and privacy of our assessments. As a result, this repository is under exclusive copyright, which means you **do not** have permission to share your solution to this test publicly (i.e., inside a public GitHub/GitLab repo, on Reddit, etc.). <br>

## Submitting your solution

Please push your changes to the `main branch` of this repository. You can push one or more commits. <br>

Once you are finished with the task, please click the `Submit Solution` link on <a href="https://app.codescreen.com/candidate/13ac9d80-30cd-47d0-a307-6c562aa3f39e" target="_blank">this screen</a>.