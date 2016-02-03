
1.8.9 Messaging
===============

This connector will send an email message when activated. There is no output returned.

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** There is no way to set proxy server settings in this wizard.
If there is a Proxy server setup in the company, ask the IT department for the specific configuration.

</div>

Use the wizard and the information below to configure the connector.
You can use the expression editor to specify an expression to provide the value, including scripts or variables.
The expression must return a value of the required type. To specify the message content, you can also use a rich text editor.

**Connection information:**

  --------------------------------------------------------------------------
  Input                    Description              Type
  ------------------------ ------------------------ ------------------------
  SMTP Host                IP address or name of    String
                           email server             

  SMTP Port                Port defined for email   Number
                           system                   

  Security &gt; SSL (not   Check the box if SSL     
  obligatory)              security authorization   
                           is required              

  Security &gt; STARTTLS   Check the box if         
  (not obligatory)         STARTTLS security        
                           authorization is         
                           required                 

  Authentication &gt;      User name for the host   String
  Username                 account                  

  Authentication &gt;      User password for the    String
  Password                 host account             
  --------------------------------------------------------------------------

\
**Addressing information:**

| Input                        | Description                                   | Type   |
|------------------------------|-----------------------------------------------|--------|
| From                         | Sender email address                          | String |
| To                           | Receiver email address                        | String |
| Other &gt; Reply to          | Email address to use when user tries to reply | String |
| Other &gt; CC                | Email address to use for a copy               | String |
| Other &gt; BCC (hidden copy) | Email address to use for a hidden copy        | String |

**Message content:**

| Input       | Description                                                                                 | Type   |
|-------------|---------------------------------------------------------------------------------------------|--------|
| Subject     | Text                                                                                        | String |
| Message     | Message content, which can be specified with the expression editor or with a WYSIWYG editor | String |
| Attachments | Include email attachments defined as a variables or expressions                             | String |

\
**Character set and additional header information (optional):**

| Input         | Description                     | Type   |
|---------------|---------------------------------|--------|
| Character set | Character set                   | String |
| Headers       | Add optional header information | String |

