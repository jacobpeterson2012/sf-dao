# sf-dao pattern
Simple pattern for DAO operations.

This purpose of this is to:

- create common way for all DAO requests. This will should handle exection, error handling, logging etc.
- Enahnce "results" for common opertation when working with sobjects eg get Unique Set of ids
- Allow for simple way to mock DAO operations.

## Framework Classes

#### DAOSelection.cls

This is the result of a selection command. This has the return results from the the command and helper methods to work with results.

#### DAOSelectRecords.cls

This is the class that executes a command. Its responsible for logging etc.


#### DAOCommand.cls

Interface for commands.

## Example

#### AccountDAOCommands.cls

Example class of differnt commands to select account information - could be seperate classes.

#### example.cls

Example of executing comamnd and working with results.

## problems..

- we end up with lots of commands its always a mess

- people try to resuse and SOQL ends up not being selective as its used for more than one client

- decouple compile depedancy

Todo: dynamic command builder?