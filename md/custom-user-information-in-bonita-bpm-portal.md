
3.7.2.5 Custom user information in Bonita BPM Portal
====================================================

Custom user information defined in the Organization in Bonita BPM Studio is displayed in the Bonita BPM Portal in the **More** page for a user (only accessible under the Administrator profile).

The **Users with custom information** filter in Bonita BPM Studio uses this custom information to map which users can perform tasks in the Bonita BPM Portal.

In Bonita BPM Portal, this custom information can only be accessed and edited by a user (Administrator profile only).

Note: if no customer user definitions are set in Bonita BPM Studio, then no information will be displayed in the Bonita BPM Portal. However definitions can be added and modified manually and using the WEB REST API

Note: the custom user definition cannot be modified in Bonita BPM Portal by the admin. The custom value for a user can be modified by the Administrator.
This gives flexibility to the admin to re-assign tasks to different users.

The Organization .xml file can also be exported from Bonita BPM Portal, and modified by hand externally, then re-imported back into Bonita BPM Portal.
The API can also modify the organization.

See [Custom user information in Bonita BPM Studio](/custom-user-information-bonita-bpm-studio-0)

How to view Custom information for a user {#view}
-----------------------------------------

1.  Log on as a user with&gt;Administrator rights.
2.  Go to the **Organization** menu and choose **Users**.
3.  Select a user in the list, by clicking on a name.
4.  Click ***More***.
5.  The custom user definition and value are displayed in the zone called **Other**.

How to edit Custom information for a single user {#edit}
------------------------------------------------

1.  **Log on** as a user with ***Administrator rights***.
2.  3.  Go to the **Organization** menu and choose **Users**.
4.  Select a user in the list, by clicking on a name.
5.  Click ***More***.
6.  The custom user definition and value are displayed in the zone called **Other**.
7.  Click ***Edit user*** in the top right corner of the screen.
8.  In the **Edit a user** pop-up window, click on the ***Other*** tab.
9.  Enter a value for the definition (defined in Bonita BPM Studio), which will only be added to this user.
10. Click ***Save***. This closes the pop-up.
11. The new value for the the definition will be updated and displayed in the **Other** zone.

Note that changing the value will modify the filtering and map the user to a different task.
