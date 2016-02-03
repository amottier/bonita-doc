
3.9.4 Custom profiles
=====================

In Bonita BPM Portal, you can customize profiles. To be able to do any customization of a profile, you must be using the **Administrator** profile or a custom profile with access to the profile management page.

What customization can I do?

-   [Create a custom profile](#create)
-   [Delete a custom profile](#delete)
-   [Edit a custom profile](#edit)
-   [Map a custom profile to a user, a group, a role or a membership](#map)
-   [Create a custom navigation bar for a custom profile with multiple menus and submenus](#nav)

<div id="create">

</div>

Create a custom profile
-----------------------

1.  In the Bonita BPM Portal, in the navigation bar, click the **Organization** menu.
2.  Click **Profiles**.
3.  Click ***Add***.
4.  In the popup, select **Create a profile**.
5.  Enter the Name.
6.  Enter the Description (optional).
7.  Click ***Create***.
8.  Refresh the portal webpage.
9.  The new profile will appear in the Profiles menu.

For deployment, it is also possible to [import a profile](/deploying-profiles-export-and-import-0) by importing an XML file containing the profile definition and mapping to organization and pages.

<div id="delete">

</div>

Delete custom profile
---------------------

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** You will need to check the box to make the delete button available.

</div>

Select the profile to delete, and click the **delete button**.

<div id="edit">

</div>

Edit a custom profile
---------------------

1.  In the Bonita BPM Portal, in the navigation bar, click the **Organization** menu.
2.  Click **Profiles**.
3.  Click ***More***.
4.  Click ***Edit***.
5.  Change the name or the description of the custom profile
6.  Click ***Save***.

<div id="map">

</div>

Map a profile to users or groups, membership or role
----------------------------------------------------

1.  In the Bonita BPM Portal, in the navigation bar, click the **Organization** menu.
2.  Click **Profiles**.
3.  Choose a profile. This will display the users mapped to the selected profile.
4.  Click ***More***.
5.  Click ***Add a user***.
6.  Select a user by ticking the checkbox next to the user name.
7.  Click ***Add***.

Do the same steps to map a group, role or membership.

<div id="nav">

</div>

Create a custom navigation bar
------------------------------

A custom navigation bar can be created for each custom profile created.

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** The navigation bar will not be used by applications as they have their own navigation menu.

</div>

1.  Select profile to add the new menu to
2.  Click on ***More***
3.  This will display the **Navigation bar editor**
4.  Click *Create menu*.
5.  Check the boxes to select the pages to include in the new menu.
6.  Click ***Create*** to confirm your choice of pages and create the menu.

When you select the custom profile, the navigation bar will be applied to it.

Note: Click ***Reset*** to erase the navigation bar if required.

When a user logs in with a profile, the page displayed is the first option in the first menu from the left.

