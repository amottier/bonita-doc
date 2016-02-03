
3.5 Resource management
=======================

This page explains how to add a resource to the Bonita BPM Portal and make it available to users. A resource is an artifact that extends the portal.

It is typed and can be one of the following:

-   [Page](/pages)
-   [Form](/Forms)
-   [Layout](/Layouts)
-   [Theme](/theme-resources)
-   [API extension](/rest-api-extensions)

[Resource definition](#resource_definition)
[Authorization permissions for resources](#permissions)
[Exporting a resource](#export)
[Importing a resource](#import)
[Modifying a resource](#edit)
[Deleting a resource](#delete)
Resource definition {#resource_definition}
-------------------

A resource is a zip archive, and must contains a `page.properties` file, a resources directory and an index file.

-   The `page.properties` file contains the metadata for the page.
-   The `resources` directory contains all the public files of your resource (for example `index.html`, images, Javascript files, CSS files).

-   The zip archive must contain at least one of the following index files:

    -   An `index.html` file in the `resources` directory
    -   An `Index.groovy` class at the root of the archive with, optionally, libraries

    If a resouce contains both `Index.groovy` and `index.html`, the Groovy class takes precedence.

Authorization permissions for resources {#permissions}
---------------------------------------

If you are using [REST API authorization](/rest-api-authorization-0) and your resource needs the Web REST API,
you need to specify the permissions that a user needs to have in order to access those API.
These permissions are defined in the `page.properties` file. If your resources is a page written in Groovy and uses the Bonita BPM Engine Java APIs, you do not need to specify permissions.
For each REST resource accessed in other resources, specify the authorization needed for each method used.
You can find the relevant file in `bonita-home\client\tenants\[tenant-id]\conf\ResourcesPermissionsMapping`.

The following example shows the permissions defined for a page that enables a user to view but not update organization information:

` #The name must start with 'custompage_' name=custompage_orgViewer displayName=Organization viewer description=Organization viewer page. You cannot modify the organization from this page. resources=[GET|identity/user, GET|identity/personalcontactdata, GET|identity/professionalcontactdata, GET|identity/role,     GET|identity/group, GET|identity/membership, GET|customuserinfo/user, GET|customuserinfo/definition, GET|customuserinfo/value]  contentType=page  `{type="sml"}
Exporting a resource {#export}
--------------------

You can export a resource from the portal. The page is exported as a zip archive.

To export a resource:

1.  As an Administrator, go to **Resources**. You will see the list of all resources, and a filter for each type of resource (Page, Forms, Layout, Theme and API extension).
2.  Select the page that you want to export.
3.  Click ***Export***.
4.  In the popup, specify the name and location for the exported zip archive, and click **OK**.

The zip archive is exported to the location you specified.

Importing a resource {#import}
--------------------

To add a resource to the portal, import a zip archive that contains the [resource definition](#resource_definition).

1.  As an Administrator, go to **Resources**. You will see the list of all resources, and a filter for each type of resource (Page, Forms, Layout, Theme and API extension).
2.  Click ***Add***.
3.  In the Content field, specify the zip archive to be imported. Click in the field, then specify the location and filename in the popup.
4.  Click ***Add***. The resource is added to the portal

If you have specified a resource permission that is not defined in the [REST API authorization configuration](/rest-api-authorization-0) and REST API authorization is configured to be on, you will see an error message.

After a resource is added to the portal, it can be used in an [application](/applications-0) or in[a custom profile](#custom-profiles-2).

Modifying a resource {#edit}
--------------------

To modify a resource in the portal, you upload a zip archive containing the new version.

1.  As an Administrator, go to **Resources**. You will see the list of all resources, and a filter for each type of resource (Page, Forms, Layout, Theme and API extension).
2.  Select the page that you want to modify.
3.  Click ***Edit***.
4.  To upload a new resource definition, click in the Content field and specify the new zip archive to import.
5.  Click **OK** to save the changes.

The resource is updated.

Deleting a Resource {#delete}
-------------------

To delete a resource:

1.  As an Administrator, go to **Resources**. You will see the list of all resources, and a filter for each type of resource (Page, Forms, Layout, Theme and API extension).
2.  Select the pages that you want to delete.
3.  Click ***Delete***.

The selected resource is deleted.

Note: Either all the selected resources are deleted, or no resources are deleted.
If you have selected a page, a layout or a theme that are used in an application or in a custom profile, you will see an error message listing these resources and the applications where they are used. In the case, none of the pages you selected is deleted.

