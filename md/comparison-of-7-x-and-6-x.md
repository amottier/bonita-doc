
1.2.4 Comparison of 7.x and 6.x
===============================

[Packaging comparison](#packingcomparison)\
[Concept comparison](#conceptcomparison)\
[Feature improvements in Bonita BPM Studio](#featureimprovstudio)\
[Feature improvements in Bonita BPM Portal](#featureimprovportal)\
[Feature improvements in Bonita BPM Engine](#featureimprovengine)\

<div id="packingcomparison">

</div>

Packaging comparison
--------------------

+--------------------------+--------------------------+--------------------------+
| Feature                  | Bonita BPM 6.x           | Bonita BPM 7.x           |
+==========================+==========================+==========================+
| Packaging                | Two versions are         | There is now a single    |
|                          | available for download:  | var\_bonita\_home,       |
|                          |                          | simplifying download     |
|                          | 1.  the Bonita BPM       | options and              |
|                          |     Subscription Pack    | installation. The        |
|                          |     edition version for  | edition is set in a      |
|                          |     the Performance,     | properties file. There   |
|                          |     Efficiency, and      | are no other differences |
|                          |     Teamwork editions    | to packaging.            |
|                          | 2.  and the Bonita BPM   |                          |
|                          |     Community edition    | See the [Installation    |
|                          |     version for the      | overview](/bonita-bpm-in |
|                          |     Community edition    | stallation-overview-0).  |
|                          |                          |                          |
|                          | For each version, there  |                          |
|                          | are several packaging    |                          |
|                          | options. Each edition    |                          |
|                          | has a specific           |                          |
|                          | var\_bonita\_home that   |                          |
|                          | must be downloaded and   |                          |
|                          | installed.               |                          |
+--------------------------+--------------------------+--------------------------+

<div id="conceptcomparison">

</div>

Concept comparison
------------------

+--------------------------+--------------------------+--------------------------+
| Feature                  | Bonita BPM 6.x           | Bonita BPM 7.x           |
+==========================+==========================+==========================+
| Contract                 | Not in 6.x               | A contract defines a     |
|                          |                          | clear separation between |
|                          |                          | the process and the      |
|                          |                          | forms, making it         |
|                          |                          | possible to update the   |
|                          |                          | process user interface   |
|                          |                          | on the live system.      |
|                          |                          |                          |
|                          |                          | See                      |
|                          |                          | [Contracts](/contracts-a |
|                          |                          | nd-contexts-0).          |
+--------------------------+--------------------------+--------------------------+
| Live update              | Not in 6.x               | A live update is a       |
|                          |                          | change that is applied   |
|                          |                          | to a process or          |
|                          |                          | application on the live  |
|                          |                          | system, without needing  |
|                          |                          | to pause the platform or |
|                          |                          | take a process out of    |
|                          |                          | service.                 |
|                          |                          |                          |
|                          |                          | See [Live                |
|                          |                          | update](/live-update).   |
+--------------------------+--------------------------+--------------------------+
| Form mapping             | Not in 6.x               | A form is mapped to      |
|                          |                          | process instantiation,   |
|                          |                          | to case overview, or to  |
|                          |                          | a task. Any form that    |
|                          |                          | respects the relevant    |
|                          |                          | contract can be          |
|                          |                          | used. This separation    |
|                          |                          | between the process and  |
|                          |                          | the forms makes it       |
|                          |                          | possible to to the live  |
|                          |                          | update feature.          |
+--------------------------+--------------------------+--------------------------+
| Business data            | A process or application | Now available in all     |
|                          | can use business data    | editions.                |
|                          | managed by the Bonita    |                          |
|                          | BPM Platform.            | See                      |
|                          | (Subscription editions   | [BDM](/business-data-mod |
|                          | only).                   | el-856)                  |
+--------------------------+--------------------------+--------------------------+
| Actor mapping            | Each actor in a process  | No change.               |
|                          | can be mapped to a       |                          |
|                          | Group, Role, Membership  | See [Actor               |
|                          | or User within an        | mapping](/actors-1#Mappi |
|                          | organization. The        | ng_an_actor)             |
|                          | mapping can be refined   | and [Actor               |
|                          | using an actor filter.   | filtering](/actor-filter |
|                          |                          | ing-0).                  |
+--------------------------+--------------------------+--------------------------+
| Environments             | An Environment is a set  | No change.               |
|                          | of configuration         |                          |
|                          | information for a        | See                      |
|                          | particular process. It   | [Environments](/environm |
|                          | contains the following   | ents-0).                 |
|                          | information:             |                          |
|                          |                          |                          |
|                          | -   Actor Mapping        |                          |
|                          | -   Actor filters        |                          |
|                          | -   Parameters           |                          |
|                          | -   Connector            |                          |
|                          |     implementations      |                          |
|                          | -   Dependencies for     |                          |
|                          |     processes and        |                          |
|                          |     applications         |                          |
|                          |                          |                          |
|                          | By having these          |                          |
|                          | Environments set up in   |                          |
|                          | the Studio, the          |                          |
|                          | developer can export     |                          |
|                          | processes that are ready |                          |
|                          | to be run for a specific |                          |
|                          | target platform. At any  |                          |
|                          | point in time, there is  |                          |
|                          | only one active          |                          |
|                          | Environment in Studio.   |                          |
+--------------------------+--------------------------+--------------------------+
| Parameters               | A Parameter is           | Now available in all     |
|                          | configuration            | editions.                |
|                          | information that can be  |                          |
|                          | attached to a process.   | See                      |
|                          | Parameters are           | [Parameters](/parameters |
|                          | configured for an        | -1)                      |
|                          | Environment. Parameter   | and                      |
|                          | values can be updated at | [Environments](/environm |
|                          | runtime.                 | ents-0).                 |
+--------------------------+--------------------------+--------------------------+
| Workspace API            | The Workspace API is     | No change. The Workspace |
|                          | provided to generate     | API can export pages     |
|                          | `.bar` files from the    | that are mapped to       |
|                          | command line, ready for  | process instantiation,   |
|                          | production.              | process overview, or to  |
|                          |                          | tasks. It cannot export  |
|                          | -   .BAR files are for   | application pages that   |
|                          |     deployment only and  | are not elements of a    |
|                          |     cannot be read by    | process.                 |
|                          |     the Studio.          |                          |
|                          | -   .BOS files are for   | See [Automating process  |
|                          |     Studio interchange   | builds](/automating-proc |
|                          |     only and cannot be   | ess-builds-1).           |
|                          |     deployed             |                          |
|                          |     to production.       |                          |
|                          | -   Each file format is  |                          |
|                          |     optimal in term of   |                          |
|                          |     content and is       |                          |
|                          |     optimized for the    |                          |
|                          |     target use case.     |                          |
+--------------------------+--------------------------+--------------------------+

<div id="featureimprovstudio">

</div>

Feature improvements in Bonita BPM Studio
-----------------------------------------

+--------------------------+--------------------------+--------------------------+
| Feature                  | Bonita BPM 6.x           | Bonita BPM 7.x           |
+==========================+==========================+==========================+
| UI designer              | Not in 6.x               | A new development        |
|                          |                          | environment for creating |
|                          |                          | sophisticated,           |
|                          |                          | data-driven pages and    |
|                          |                          | forms for process-based  |
|                          |                          | applications.            |
|                          |                          | The UI designer is       |
|                          |                          | accessed through the     |
|                          |                          | Studio.                  |
|                          |                          |                          |
|                          |                          | See [live                |
|                          |                          | update](/live-update).   |
|                          |                          |                          |
|                          |                          | The 6.x [form            |
|                          |                          | tooling](/6x-legacy-form |
|                          |                          | s)                       |
|                          |                          | is still supported, so   |
|                          |                          | that you can continue to |
|                          |                          | run 6.x processes and to |
|                          |                          | ease migration.          |
+--------------------------+--------------------------+--------------------------+
| Process migration        | A process exported from  | A process created in     |
|                          | Bonita Open Solution 5.9 | Bonita BPM 6.x will run  |
|                          | or 5.10 must be modified | in 7.x without any       |
|                          | to run in Bonita BPM.    | modification.            |
|                          | When you import a        | However, to take         |
|                          | process from 5.9 or 5.10 | advantage of the new     |
|                          | into Bonita BPM Studio,  | features in Bonita BPM   |
|                          | you see a report that    | 7.x, you need to add     |
|                          | guides you through the   | contracts and migrate    |
|                          | changes that are         | the forms.               |
|                          | necessary.               |                          |
|                          |                          | See                      |
|                          | See [Migrate a process   | [Contracts](/contracts-a |
|                          | from Bonita Open         | nd-contexts-0)           |
|                          | Solution 5.9 or          | and [Migrate a form from |
|                          | 5.10](/migrate-process-b | 6.x](/migrate-form-6x).  |
|                          | onita-open-solution-5x-1 |                          |
|                          | ).                       |                          |
+--------------------------+--------------------------+--------------------------+
| Application theme and    | Not in 6.x               | You can create custom    |
| layout                   |                          | layout and theme for a   |
|                          |                          | process-based            |
|                          |                          | application constructed  |
|                          |                          | from UI designer pages   |
|                          |                          | and forms.               |
|                          |                          |                          |
|                          |                          | See                      |
|                          |                          | [Appearance](/appearance |
|                          |                          | ).                       |
+--------------------------+--------------------------+--------------------------+
| REST API extensions      | Not in 6.x               | You can create custom    |
|                          |                          | REST API extensions, to  |
|                          |                          | supplement the standard  |
|                          |                          | REST API interfaces or   |
|                          |                          | to optimize REST API     |
|                          |                          | calls used UI designer   |
|                          |                          | pages and forms.         |
|                          |                          |                          |
|                          |                          | See [REST API            |
|                          |                          | extensions](/rest-api-ex |
|                          |                          | tensions).               |
+--------------------------+--------------------------+--------------------------+
| Improved UI              | Not in 6.x               | Improvements to the      |
|                          |                          | Details panel so that    |
|                          |                          | tab structure reflects   |
|                          |                          | typical worksflow.       |
+--------------------------+--------------------------+--------------------------+
| Variable definition      | Easy variable definition | Easy variable definition |
|                          | for process data, using  | for both business data   |
|                          | the expression editor to | and process data.        |
|                          | set the initial or       |                          |
|                          | default values.          | See [Business data       |
|                          |                          | model](/business-data-mo |
|                          |                          | del-856)                 |
|                          |                          | and [Process             |
|                          |                          | variables](/specify-data |
|                          |                          | -process-definition).    |
+--------------------------+--------------------------+--------------------------+
| Expression Editor        | This expression editor   | No changes to the        |
|                          | enables a developer to   | expression editor. It is |
|                          | define a constant, an    | not available from the   |
|                          | expression, a comparison | UI designer.             |
|                          | or a Groovy script. Very |                          |
|                          | often, there is no need  | See [Using expressions   |
|                          | to resort to a Groovy    | and                      |
|                          | script, a constant, a    | scripts](/using-expressi |
|                          | comparison or an         | ons-and-scripts-0).      |
|                          | expression being enough. |                          |
|                          | A number of predefined   |                          |
|                          | expressions are          |                          |
|                          | provided.                |                          |
|                          |                          |                          |
|                          | Convenience Groovy       |                          |
|                          | functions are provided   |                          |
|                          | to help write scripts    |                          |
|                          | more quickly. These      |                          |
|                          | functions provide simple |                          |
|                          | access to frequently     |                          |
|                          | used information, such   |                          |
|                          | as information on the    |                          |
|                          | current user and the     |                          |
|                          | process initiator. It is |                          |
|                          | now very easy to         |                          |
|                          | retrieve the manager or  |                          |
|                          | the email of the current |                          |
|                          | user or the process      |                          |
|                          | initiator.               |                          |
+--------------------------+--------------------------+--------------------------+
| Validation               | The validation view      | The existence of mapped  |
|                          | shows all validation     | forms is verified, but   |
|                          | errors in the same       | the form definition is   |
|                          | location in the Studio.  | not validated for forms  |
|                          | This enables developers  | created with the UI      |
|                          | to quickly locate        | designer.                |
|                          | validation errors        |                          |
|                          | wherever they appear.    | See [Process testing     |
|                          |                          | overview](/process-testi |
|                          |                          | ng-overview-0).          |
+--------------------------+--------------------------+--------------------------+
| Iteration                | Iteration can be by loop | No change.               |
|                          | or by                    |                          |
|                          | multi-instantiation.     | See                      |
|                          | Multi-instantiation no   | [Iteration](/iteration-1 |
|                          | longer requires a        | ).                       |
|                          | specific Bonita          |                          |
|                          | connector nor            |                          |
|                          | implementation of a      |                          |
|                          | specific java class. You |                          |
|                          | can use a variable of    |                          |
|                          | type Collection or       |                          |
|                          | specify the cardinality  |                          |
|                          | using an expression. The |                          |
|                          | completion condition is  |                          |
|                          | a simple expression.     |                          |
+--------------------------+--------------------------+--------------------------+
| Connectors               | A number of standard     | No change.               |
|                          | connector are provided,  |                          |
|                          | and it is possible to    | See                      |
|                          | create your own custom   | [Connectivity](/connecti |
|                          | connectors.              | vity-overview-0).        |
+--------------------------+--------------------------+--------------------------+
| Organization for testing | Several organizations    | No change.               |
|                          | can be defined in the    |                          |
|                          | Studio, for test         | See [Organization        |
|                          | purposes. The            | overview](/organization- |
|                          | organization can be then | overview-0).             |
|                          | pushed to the Portal     |                          |
|                          | (published) for testing, |                          |
|                          | or exported and imported |                          |
|                          | into the Portal for      |                          |
|                          | deployment.              |                          |
+--------------------------+--------------------------+--------------------------+
| Anonymous user           | You can define a process | Not supported.           |
|                          | that has an unknown      |                          |
|                          | initiator.               |                          |
|                          |                          |                          |
|                          | See [Start a process as  |                          |
|                          | an anonymous             |                          |
|                          | user](/actors-1).        |                          |
+--------------------------+--------------------------+--------------------------+

<div id="featureimprovportal">

</div>

Feature improvements in Bonita BPM Portal
-----------------------------------------

+--------------------------+--------------------------+--------------------------+
| Feature                  | Bonita BPM 6.x           | Bonita BPM 7.x           |
+==========================+==========================+==========================+
| Dynamic reconfiguration  | The process              | New live update feature  |
|                          | configuration is defined | expands the dynamic      |
|                          | in Bonita BPM Studio.    | reconfiguration to other |
|                          | With the Performance     | editions and to other    |
|                          | Edition, you can modify  | items. The following     |
|                          | the configuration in     | items can be updated     |
|                          | Bonita BPM Portal after  | "live":                  |
|                          | the process is deployed. |                          |
|                          | You can dynamically      | -   Groovy scripts       |
|                          | update the following     |     (Efficiency and      |
|                          | configuration items:     |     Performance editions |
|                          |                          | )                        |
|                          | -   Actor mapping        | -   Process forms        |
|                          |     (all editions)       |     (Efficiency and      |
|                          | -   Parameters           |     Performance editions |
|                          |     (Performance edition | )                        |
|                          | )                        | -   Actor mapping        |
|                          | -   Connector            |     (all editions)       |
|                          |     implementation       | -   Parameters           |
|                          |     (Performance edition |     (all editions)       |
|                          | )                        | -   Connector            |
|                          | -   Dependencies         |     implementation       |
|                          |     (Performance edition |     (all editions)       |
|                          | )                        | -   Dependencies         |
|                          | -   Actor filter replay  |     (all editions)       |
|                          |     by Java call         | -   Actor filter replay  |
|                          |     (Performance edition |     by Java call         |
|                          | ).                       |     (Performance edition |
|                          |                          | )                        |
|                          |                          |                          |
|                          |                          | See [Live                |
|                          |                          | update](live-update).    |
+--------------------------+--------------------------+--------------------------+
| User interface           | For users, a simple      | No change for users. For |
|                          | interface for starting   | adminsitrators, the case |
|                          | cases and performing     | process and case         |
|                          | tasks. For               | monitoring views have    |
|                          | administrators, an       | been improved, new live  |
|                          | interface for managing   | update features have     |
|                          | processes and            | been added, and the      |
|                          | applications, and the    | application editor has   |
|                          | organization, with views | been improved.           |
|                          | for monitoring process   |                          |
|                          | and case status.         | See [Bonita BPM Portal   |
|                          |                          | interface                |
|                          |                          | overview](/bonita-bpm-po |
|                          |                          | rtal-interface-overview- |
|                          |                          | 855).                    |
+--------------------------+--------------------------+--------------------------+
| Task management          | Users can choose how to  | No change for users. An  |
|                          | manage tasks. They can   | administrator or process |
|                          | perform one task after   | manager (or a user with  |
|                          | another in list order,   | an appropriate custom    |
|                          | or select my tasks for   | profile) can see at a    |
|                          | themselves then perform  | glance that status of    |
|                          | them in the order they   | all tasks in a case, and |
|                          | choose.                  | can perform a task for a |
|                          |                          | user.                    |
|                          |                          |                          |
|                          |                          | See [Manage a            |
|                          |                          | task](/tasks-3).         |
+--------------------------+--------------------------+--------------------------+
| Mobile web portal        | A specially designed     | No change.               |
|                          | mobile interface to      |                          |
|                          | Bonita BPM Portal        | See [Mobile              |
|                          | enables users to carry   | overview](/mobile-portal |
|                          | out tasks from a browser | -overview-1).            |
|                          | on mobile devices.       |                          |
+--------------------------+--------------------------+--------------------------+
| Subtasks                 | A Subtask is a part of a | No change.               |
|                          | self-assigned existing   |                          |
|                          | task. A Subtask must be  | See [Manage a            |
|                          | assigned to a specific   | subtask](/subtasks-1).   |
|                          | person, by name. The     |                          |
|                          | assignee can be the      |                          |
|                          | creator.                 |                          |
+--------------------------+--------------------------+--------------------------+
| Replay tasks and         | It is now possible for   | No change.               |
| connectors in error      | the administrator to     |                          |
|                          | replay a task or a       | See [Process             |
|                          | connector that is in     | configuration            |
|                          | error. This enables a    | overview](/process-confi |
|                          | resolution of failed     | guration-overview-0)     |
|                          | tasks and better service | and [Mobile              |
|                          | to end users. and        | overview](/mobile-portal |
|                          | connectors in error      | -overview-1).            |
+--------------------------+--------------------------+--------------------------+
| Anonymous user           | You can now complete a   | Not supported.           |
|                          | task as an [anonymous    |                          |
|                          | user](/anonymous-user),  |                          |
|                          | that is, without being   |                          |
|                          | registered in the        |                          |
|                          | organization.            |                          |
|                          | For example, on an       |                          |
|                          | e-commerce site, a new   |                          |
|                          | user can browse stock    |                          |
|                          | and save items to a      |                          |
|                          | basket, then register    |                          |
|                          | with the site if they    |                          |
|                          | want to save their       |                          |
|                          | basket for later or to   |                          |
|                          | buy something.           |                          |
+--------------------------+--------------------------+--------------------------+

<div id="featureimprovengine">

</div>

Feature improvements in Bonita BPM Engine
-----------------------------------------

+--------------------------+--------------------------+--------------------------+
| Feature                  | Bonita BPM 6.x           | Bonita BPM 7.x           |
+==========================+==========================+==========================+
| var\_bonita\_home        | A separate               | A common                 |
|                          | var\_bonita\_home for    | var\_bonita\_home used   |
|                          | each edition and for     | for all editions,        |
|                          | cluster.                 | simplifying download and |
|                          |                          | installation. Improved   |
|                          |                          | structure for            |
|                          |                          | var\_bonita\_home/server |
|                          |                          | that is easier to        |
|                          |                          | maintain and customize.  |
|                          |                          |                          |
|                          |                          | See [Bonita              |
|                          |                          | Home](/bonita-home-0).   |
+--------------------------+--------------------------+--------------------------+

