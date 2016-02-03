
1.9.4 Custom user information in Bonita BPM Studio
==================================================

You can use custom user information to assign task to users based on information that is specific to your organization and not included in the standard organization definition.
You define the attributes that you want to store, and then add the values for the users.

[Example usecases](#usecase)
[List of users](#default)
[Custom tab](#customtab)
[User information management](#userinformanag)
[Assign tasks automatically](#assign)
[New actor filter category](#newactorcat)
[New actor filter value](#newactorval)
[Assign tasks automatically](#assignauto)
[How to add custom information to a user](#howtoadd)
[How to set an actor filter for a user](#howtosetfilter)
### 

<div id="usecase">

Example usecases

</div>

Some example use cases for custom information are to create a security badge with an individual value (number) for each user, an office skill for a user, a special professional activity, or geographical details. All these types of information are not displayed in standard information tabs.

<div id="default">

List of users

</div>

By default, in the Organization menu &gt; Manage organizations &gt; Organization users &gt; **List of users**, four tabs contain standard information about a user in the Organization:

-   General (Title, First and last name, Job title)
-   Membership (Group/role)
-   Personal (Email, phone, website, address etc.)
-   Business card (Email, phone, website, address etc.)

### 

<div id="customtab">

Custom tab

</div>

A tab called **Custom**, has been added to the four default tabs.

When a user is selected in the **List of users**, the custom information for each user is displayed in the **Custom** tab. If a custom user information is added for one user, it is applied to all users in the organization.

This custom user information is also displayed in the **User information management** tab.

When the **Custom tab** is clicked, the **configuration name** (applied to all users) and a **value** (applied only to a single user), are displayed in the panel.

A link called **Manage custom information**, is displayed in the Custom tab, which takes the user straight to the **User information management tab**.

This information can be modified using the edit button.

<div id="userinformanag">

User information management

</div>

A tab called **User information management** displays a pane with both the default and custom information for a user.

**Custom information** (editable) is displayed on the right hand side of the pane. Two buttons, **add** and **delete** allow the edition of custom information in the Custom pane.

<div id="newactorcat">

New actor filter category

</div>

An actor filter category called **Organization** has been added. It contains an actor filter called **Users with Custom information**.

The actor filter can be added to actor for a lane or a task (not a pool).

A task is assigned to an actor. An actor is mapped to a list of users. This filter is applied to the set of users mapped to the actor. When the filter is applied, each user which has not added custom information (a value) to their user description (custom tab) will be filtered out. They will not be eligible to perform the task.

<div id="newactorval">

Actor filter value

</div>

An actor filter definition must have a value is order to make the filter work. This value is used on the actor filter.
For example, a filter could be defined as a language. The value for the filter could be French, or English etc.
An actor has users mapped to it, who can perform a task.
When custom user information is added to a user, the actor filter will use the value contained in the definition to select users who posses this value in the custom user information tab.

This enables certain users to be mapped to a given task. When the process is run, the user will be automatically assigned to the task.
A link called **Manage custom information**, is displayed in the Custom tab, which links directly to the User information management tab.

<div id="assignauto">

Assign tasks automatically

</div>

Check the checkbox to apply this feature. This feature is only applied when there is one user assigned to a task.

<div id="howtoadd">

How to add custom information to a user

</div>

1.  In Bonita BPM Studio, go to **Organization** in the cool bar
2.  Click on ***Manage*** in the dropdown menu
3.  Click on ***Next*** 3 times to get to the **Organization users** window
4.  Click on ***List of users*** and select a user to edit
5.  Note: there are 2 ways to access the edit menu for Custom information: in **List of users**, either click on the **Custom tab**, ***Manage user information***, or
    click on the **User information management** tab
6.  In the **Custom information** pane on the right hand side of the window, the current click on ***Add***
7.  This will put a default name **Information1** in the **Name column**
8.  Add a description (if needed). This will only appear in Bonita BPM Studio.
9.  Double click on the default name **Information1**, to modify it to your needs
10. Click on **Finish**
11. A message is displayed: *The Organization has been modified. It is recommended to re-publish it. Do you want to do it now?*
12. Click on **Yes**
13. A confirmation message is displayed showing the organization was successfully re-published
14. Click on **Ok**
15. A new custom tab is applied to all users. This can be used by the actor filter to map the user to a task.
16. Add a value
17. The name of the information and its value is displayed in the custom tab

Note: this value can be changed by a user with the Admin profile in Bonita BPM Portal. See [How to edit Custom information for a single user](/custom-user-information-bonita-bpm-portal-0)

If the value is changed in Bonita BPM Portal by the admin, and the filter value does not exist in the organization

<div id="howtosetfilter">

How to set a new actor filter for an actor

</div>

1.  In a process diagram, select a **lane or a task**
2.  Now, select an **actor** to apply the filter
3.  In the **Details panel**, Go to General &gt; Actors &gt; Actor filter &gt; **Set**
4.  In the Actor filters window &gt; Categories, click on Organization &gt; ***Users with Custom information***
5.  Click on ***Next***
6.  Enter a name and a description for the filter definition
7.  Click on ***Next***
8.  Enter a **Name**
9.  Enter a value which will be used a the filter on the actor
10. The users mapped to the actor, should already have custom information defined for them. If the value set here belongs to one of the users, the filter will be applied to this user.
11. **Partial match** and **assign task automatically** can be selected for the user (optional)
12. Click on ***Finish***
13. The filter is set for the actor and is displayed in the actor filter field

