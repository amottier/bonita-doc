
1.2.3 New features
==================

<span>Below are the features/enhancements introduced in Bonita BPM 7.2.0</span>

-   <span><span>**Studio Switch Repository** (Teamwork Edition): </span></span>\
    <span>There is now one Bonita Home folder (bonita\_home) per Studio repository. The folder is located at the root of the repository.</span>\
    <span>The embedded Tomcat is configured to use the bonita\_home folder of the repository currently in use. That is to say that each time a developer switches repository, the Tomcat switches Bonita Home. As a consequence each repository uses a different database; this allow to keep data consistency between runtime data and current repository content.</span>\
    <span>On a repository switch we do not lose Living Applications, Processes, BDM, Organization data...</span>

<!-- -->

-   **REST API Extension Development tooling**<span> (Teamwork Edition)</span>\
    <span>New development tooling to speed up REST API extension implementation. It improves developer efficiency with automated testing and deployment.</span>\
    <span><span><span><span>This helps Java developers creating new custom APIs by assisting and automating the development, testing, and deployment of REST API extensions. It also helps front-end developers to access and use REST API extensions directly from UI Designer. The guided development framework reinforces the best practice of creating REST API extensions to read data needed in forms or pages</span></span></span></span><span><span>.\
    </span></span><span><span>**\
    **</span></span>
-   <span><span>**Office connectors** (Teamwork Edition)</span></span>\
    <span>Insert information into a Microsoft Word \*.docx or OpenOffice \*.odt template to produce a document based on data collected in a process case. In addition to Word and OpenOffice output format you can also generate a PDF document.</span>
    -   <span><span><span>Insert data in a .docx/.odt template</span></span></span>
    -   <span><span><span>Generate PDF from an Office document</span></span></span><span><span><span>.\
        </span></span></span>

<!-- -->

-   **BDM Paged results**\
    <span>Retrieve results of a query on business data a page at a time. Previously, a BDM query returned all the matching results.</span>\
    <span>The paged results feature enables you to know how many pages of results exist when calling a BDM query via the REST API. It ensures a better integration of BDM with UI Designer DataTable widget.</span>\
    <span>To benefit from this improvement and use the UI Designer DataTable widget for custom BDM queries, you need to create a count query for each custom query that returns multiple results. The name of the count query must be the name of base query prefixed by “countFor”. For instance, for a custom query named “queryName”, the related count query must be named “countForQueryName”. In addition, make sure that the count query returns a long.</span><span> <span> The result of the count query is visible in the HTTP response header, in the Content-Range field </span>for the REST API API/bdm/businessData/businessDataType?q=queryName. This header will be available for all queries returning multiple results for which there is a related count query.</span>\
    <span>\
    </span>

<!-- -->

-   **UI Designer Data Management**\
    We have changed the variable management mechanism, and made
    every variable read-write. It'll avoid confusion on the way data are managed by UI Designer(some are read-only
    but some are not, some are always recalculated and some are not).\
    This means that you can retrieve data
    using a REST API call and manipulate the results inside a JavaScript expression variable. The user can then
    update the variable, which is then submitted. As a result of these modifications, all variables are now
    evaluated even when they are not used. You need to be aware of the consequences of this for each type of variable.
    -   A JavaScript Expression variable is reset to the expression evaluation every time the result of the
        expression evaluation changes. For instance, consider an expression variable processing a selectedUser
        from a displayed table to have information more readable. Consider that this selectedUser can be updated
        via a displayed form. When the user clicks on another user in the table, the form is updated with the
        value of the new selectedUser. Previous selectedUser data is lost if not managed correctl
    -   A URL or REST API variable resources are reloaded every time the URL value changes.

We have also introduced an initial naive algorithm to find the dependencies of a given variable (the other variables
it relies upon). This way, we can wait for non-dependant variables to be resolved before resolving ones that have
dependencies.

-   **UI Designer enhanced home page**\
    UI Designer Homepage has been revamped. It can manage in a
    more efficient/scalable way the typical volume of UI artifacts of a typical BPM Apps project :
    -   Capability to create any type of web artefacts: Application Pages, Process Forms, Application Layout, 
        Fragments, Custom Widget.
    -   Artefacts are presented per type on the different tabs.
    -   Search bar to retrieve quickly any artefact based on its name. Number of artefacts matching a search are
        displayed on the tabs badges.
    -   Add favorites artefacts and retrieve them quickly in a dedicated panel.\
        \

**UI Designer usability improvements**\
<span>Many improvements to existing features: </span>

<span>Container widget</span><span> (added in 7.1.3) Added a default variable, \$collection, used when repeating content in container to manipulate sub-collections.</span><span> </span>

<span>Button widget</span><span> (modified in 7.1.3) Additional HTTP actions GET and DELETE, and actions to update a collection.</span>

<span>Artifact import</span><span> New checks on import: </span>

-   <span>If the uploaded artifact does not overwrite anything, the import completes and the import report is displayed to the user.</span>

-   <span>If the uploaded artifact overwrite something: a popup is displayed to the user indicating the elements that will be overwritten by the import. The user can choose whether to continue the import and overwrite the listed elements,  or cancel the whole import.</span>

<span>Link widget</span><span> has now the capability to choose the target window. </span>

<span>Add an dropdown on Preview window to view a multi-language page in a specified language based on the languages defined in the localization.json file.</span>

<span>Capability to download an asset </span><span>added in a page/form or on a custom widget</span>.

Changes

-   Italian, German and Portuguese translations are no more included into the product (You can find into the
    documentation how to add your own language pack for the Bonita Portal).
-   Removal of the profile pop up at Bonita Studio startup
-   <span>Relocating some artifacts that were on the file system (Bonita Home) into the  database:</span>
    -   <span>process definition</span>
    -   <span>parameters</span>
    -   <span>business archive (all files contained in .bar)</span>
-   Request Key generator script now asks for licensing model (instances-based or legacy by CPU).
-   <span>UI Designer Datepicker widget</span><span> updates to remove timezone issues.</span>
