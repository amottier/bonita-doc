
1.8.8 LDAP connector
====================

The LDAP connector searches in an LDAP directory and returns a list.

Configuring an LDAP connector with the wizard:

1.  In the **General** screen:
    -   Enter a name and description for the connector.
    -   Specify whether the connector runs at the start or the end of the step.
    -   Specify the behavior if the connector fails.
    -   Click ***Next***.

2.  Specify the LDAP server information:\

    | Input    | Description                                         | Type   |
    |----------|-----------------------------------------------------|--------|
    | Host     | IP address or name of server hosting LDAP directory | string |
    | Port     | LDAP directory port number                          | number |
    | Protocol | LDAP directory port number                          | select |
    | user     | LDAP user name                                      | string |
    | password | LDAP user password                                  | string |

    Then click ***Next***.

3.  Specify the search criteria:
    +--------------------------+--------------------------+--------------------------+
    | Input                    | Description              | Type                     |
    +==========================+==========================+==========================+
    | Base DN                  | the Distinguished Name   | string                   |
    |                          | at which to start search |                          |
    +--------------------------+--------------------------+--------------------------+
    | Filter                   | specify a subset, e.g.   | string in accordance     |
    |                          | (&(objectClass=person)(g | with LDAP syntax         |
    |                          | ivenname=John))          |                          |
    +--------------------------+--------------------------+--------------------------+
    | Attributes               | define attributes to     | string of strings        |
    |                          | return in result entries | separated by ","         |
    |                          | using LDAP syntax        |                          |
    +--------------------------+--------------------------+--------------------------+
    | Scope                    | -   subtree: entire      | select                   |
    |                          |     subtree starting as  |                          |
    |                          |     the base DN          |                          |
    |                          | -   one level: entries   |                          |
    |                          |     immediately below    |                          |
    |                          |     the base DN          |                          |
    |                          | -   base: search just    |                          |
    |                          |     the named entry      |                          |
    +--------------------------+--------------------------+--------------------------+
    | Size limit               | maximum number of        | number                   |
    |                          | entries to return        |                          |
    +--------------------------+--------------------------+--------------------------+
    | Time limit (in seconds)  | maximum time to allow    | number                   |
    |                          | search to run            |                          |
    +--------------------------+--------------------------+--------------------------+
    | Referral handling        | ignore or follow         | select                   |
    |                          | referrals                |                          |
    +--------------------------+--------------------------+--------------------------+
    | Alias dereferencing      | -   always: always       | select                   |
    |                          |     dereference aliases  |                          |
    |                          | -   searching:           |                          |
    |                          |     dereference aliases  |                          |
    |                          |     only after name      |                          |
    |                          |     resolution           |                          |
    |                          | -   never: never         |                          |
    |                          |     dereference aliases  |                          |
    |                          | -   finding: dereference |                          |
    |                          |     aliases only during  |                          |
    |                          |     name resolution      |                          |
    +--------------------------+--------------------------+--------------------------+

    Then click ***Next***.
4.  Specify the output operations. The connector returns a list object.
5.  Click ***Finish***.

