
3.3 Processes
=============

Logged on with the Administrator profile, you have rights to manage a process as follows:

-   [How to install a process](#installanapp)
-   [How to resolve a process](#resolveanapp)
-   [How to enable a process](#enableanapp)
-   [How to disable a process](#disableanapp)
-   [How to delete a process](#deleteanapp)
-   [How to create a category for a process](#createcat)
-   [How to add a category to a process](#addcat)
-   [How to make a process available to a user via entity mapping](#entitymap)
-   [How to modify a parameter](#modpar)
-   [How to edit connector definitions](#conndef)
-   [How to fix forms](#formMapping)
-   [How to upload new form](#formUpload)
-   [How to edit an existing form](#editFormUpload)
-   [How to edit a script content](#editScriptContent)

<div id="installanapp">

</div>

How to install a new process
----------------------------

1.  Go to the BPM tab
2.  Click ***Processes***
3.  Click ***Install new process***
4.  Click to browse to the .bar file to import
5.  Click ***Install***

The .bar file is ready to be resolved and enabled

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** if you try to install the same process twice, a message is displayed: "Process \[yourProcessName\] in version \[yourProcessVersion\] already exists."

</div>

You can only install a .bar file that was exported from a Bonita BPM Studio of the same minor (7.x) version as your Bonita BPM Portal and Bonita BPM Engine. If you have a .bar file that was exported from an earlier version of Bonita BPM Studio (7.x-1), it will not work with Bonita BPM Engine. Export the process definition as a .bos file from your old Bonita BPM Studio, import in into the new Studio, then export it as a .bar. This is necessary for a .bar that has not been deployed. A process that was developed in an older version of Bonita BPM Studio and is already deployed is migrated automatically when you migrate your platform. However, for future maintenance of the process definition, you are recommended to update all your process bar files to the latest version each time you update your platform.

[Watch the Install a process video](images/videos-6_0/install_an_app_in_bonita_portal.mp4){#player .flowplayer}

<div id="resolveanapp">

</div>

How to resolve a process
------------------------

Resolving a process means completing the configuration in the Portal and making sure that all dependencies are met. A process has to be resolved before it can be enabled.

To resolve a process, you must complete the configuration of the actor mappings, parameters, forms, and connectors defined for the process. You can also configure other information such as Categories and Scripts, but this is not mandatory for resolving a process.

-   **Actor mapping**; Every actor in a process must be mapped to at least one user, group, role or membership.
-   **Parameters**: Every parameter defined in a process must have a value.
-   **Connector definitions**: Every connector definition in a process must have a corresponding Class name.
-   **Business Data Model**: Every business data object defined in a process must have a corresponding model.
-   **Forms**: Every form defined in a process must be mapped to a page or a URL.

To resolve a process:

1.  Go to BPM tab.
2.  Click ***Processes***,
3.  Click on a ***Process***. The Configuration section of the right panel shows whether there are items to be resolved.
4.  Click on ***More***.
5.  A summary of configuration problems is displayed below the process name in a well and warning icons are displayed in the left navigation list.
6.  Modify your configuration for each element displayed.

<div id="enableanapp">

</div>

How to enable a process
-----------------------

1.  Go to the BPM menu tab
2.  Click ***Processes***
3.  Click ***Resolved filter***
4.  Select the process
5.  Click ***More** button*
6.  Click ***Enable***
7.  The activation state changes to "enabled"
8.  The process disappears from the disabled filter and is now displayed in the enabled filter

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** You can also select the processes you want to enable by checking the box in the Resolved list, then click ***ENABLE*** button in the bulk actions section

</div>

<div id="disableanapp">

</div>

How to disable a process
------------------------

1.  Go to the BPM tab
2.  Click ***Processes***
3.  Click ***Enabled filter***
4.  Select the process
5.  Click ***Disable***
6.  The activation state changes to "disabled"
7.  The process disappears from enabled filter and is located in the disabled filter

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** You can also disable a process in the more details view, by clicking ***Enabled*** toggle button.

</div>

<div id="deleteanapp">

</div>

How to delete a process
-----------------------

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:**A process must be disabled before it can be deleted.

</div>

1.  Go to BPM menu tab
2.  Click ***Processes***
3.  Select the process to delete by checking the tickbox next to the process
4.  Click ***Delete***

You can also delete the process in the more details view of a disabled process by clicking ***DELETE***, then click ***DELETE*** in the modal window

<div id="createcat">

</div>

How to create a category for a process
--------------------------------------

1.  Go to BPM tab
2.  Select a process in the list
3.  Click ***More***
4.  In General, click the pencil next to Categories label
5.  In the opened modal, type a new category name then press ***Enter*** key
6.  Click ***Save***

After you created a category and added to the process, you can add other processes to the category.

<div id="addcat">

</div>

How to add a category to a process
----------------------------------

1.  Go to BPM tab
2.  Select a process in the list
3.  Click ***More***
4.  In General, click the pencil next to Categories label
5.  In the opened modal, type a new category name then press ***Enter*** key, or use arrow keys to browse among exisiting categories
6.  Click ***Save***

<div id="entitymap">

</div>

How to add an entity to an actor
--------------------------------

1.  Go to the BPM tab.
2.  Click ***Processes***.
3.  Select a process in the list.
4.  Click ***More***.
5.  Click ***Actors*** in the left navigation.
6.  In the Actors section, click the ***+*** button in the user, group, role or membership column of the actor line.
7.  In the opened popup, click on the dropdown list to select one or several actors. The list displays the first five elements, then a number is displayed representing the other selected entities.
8.  Click ***APPLY***.

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** Notice that only the first 200 actors are displayed in the dropdown.

</div>

How to remove an entity from an actor
-------------------------------------

1.  Go to the BPM tab.
2.  Click ***Processes***.
3.  Select a process in the list.
4.  Click ***More***.
5.  Click ***Actors*** in the left navigation.
6.  In the Actors section, click the ***pencil*** button in the user, group, role or membership column of the actor line.
7.  In the opened popup, there is a list of the actors already mapped.
8.  Click the ***X*** button next to the actor, or click ***Remove all***.
9.  A list appears filled with the actors you can to remove. You can undo a removal by clicking ***X*** button next to the actor or by clicking ***Enable all***
10. Click ***APPLY***.

How to modify a parameter in the Administrator profile
------------------------------------------------------

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** For Bonita BPM Performance and Efficiency editions only.

</div>

<div id="modpar">

</div>

1.  Go to the BPM tab
2.  Click ***Processes***
3.  Select a process
4.  Click ***MORE***
5.  Click ***Parameters*** in the left navigation
6.  In the **Value** column, click on the value you want to edit
7.  A field appears
8.  Click the ***Tick*** button to validate your change or ***X*** to dismiss your change.

<div id="conndef">

</div>

How to edit a connector implementation
--------------------------------------

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** For Bonita BPM Performance and Efficiency editions only.

</div>

1.  Go to the BPM tab
2.  Click ***Processes***
3.  Click ***More*** button
4.  Click ***Connectors***
5.  In the connector definitions table, in the actions column, click on the ***Pencil***
6.  Browse to a .zip file containing the new connector implementation
7.  Click ***Save*** to import the new implementation.

How to fix forms {#formMapping}
----------------

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** For Bonita BPM Performance and Efficiency editions only.

</div>

1.  Go to the BPM tab.
2.  Click ***Processes***.
3.  Click ***More*** button.
4.  Click ***Forms*** in the left navigation.
5.  The tables are displayed which list available forms. Click on a red link.
6.  A field input appears.
7.  Starting to type some text, and any matching names of installed forms will be proposed. If there is no match for the name you enter, it will be considered as a URL.
8.  Click the ***Tick*** button to validate your change or ***X*** to dismiss your change.

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** You can also upload a form in order to create a new mapping.

</div>

How to upload a new form {#formUpload}
------------------------

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** For Bonita BPM Performance and Efficiency editions only.

</div>

1.  Go to the BPM tab.
2.  Click ***Processes***.
3.  Click ***More*** button.
4.  Click ***Forms*** in the left navigation.
5.  Click ***Form list*** tab.
6.  A list of form is displayed. These forms are only visible to the current process.
7.  Click the ***plus*** button at the bottom of the list.
8.  A file selector popup is displayed.
9.  Browse to a .zip containing a form.
10. Click ***NEXT***, then if your form requires some authorization, it will be displayed.
11. Click ***CONFIRM***.

How to edit an existing form {#editFormUpload}
----------------------------

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** For Bonita BPM Performance and Efficiency editions only.

</div>

1.  Go to the BPM tab.
2.  Click ***Processes***.
3.  Click ***More*** button.
4.  Click ***Forms*** in the left navigation.
5.  Click ***Form list*** tab.
6.  A list of forms is displayed. These forms are only visible to the current process.
7.  Click the ***pencil*** button of a form line.
8.  A file selector popup is displayed.
9.  Browse to a .zip containing a form
10. Click ***NEXT***, then if your form requires some authorization, it will be displayed.
11. Click ***CONFIRM***.

How to edit a script content {#editScriptContent}
----------------------------

<div class="alert alert-info">

<span class="glyphicon glyphicon-info-sign"></span> **Note:** For Bonita BPM Performance and Efficiency editions only.

</div>

1.  Go to the BPM tab
2.  Click ***Processes***
3.  Click ***More*** button
4.  Click ***Scripts*** in the left navigation
5.  A script content tree is displayed.
6.  You can search for a script by typing text in the dedicated field
7.  Click the ***pencil*** button next to a script name
8.  A popup window is displayed
9.  Edit your script content
10. Click ***SAVE***

