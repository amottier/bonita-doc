
1.13.4 Log files
================

During development, the Studio log file and UI designer log file contain messages about development activities, including any errors.
When you run a process for testing, messages are written to the Engine log file.

From the Bonita BPM Studio Help menu you can access the Studio log file
and the Engine log file. The UI designer log file is available in var\_bh\_code\_replace`/tomcat/logs/ui-designer.log`, but it is not accessible from the Studio Help menu.

See the [Logging overview](/logging-0) for details of how logging is implemented in Bonita BPM and how to add logging to Groovy scripts or Java code that you add to a process

Studio log file
---------------

To access the Studio log file, choose **Bonita BPM Studio log** from the **Help** menu.

For Bonita BPM Studio, you can set the level of logging. Edit the `config.ini` in the Studio root/configuration/ directory and set the value of
<span class="tt">eclipse.log.level</span> to <span class="tt">ERROR</span>, <span class="tt">WARNING</span>, <span class="tt">INFO</span>, or <span class="tt">ALL</span>.

|                                 |                                                                   |
|---------------------------------|-------------------------------------------------------------------|
| <span class="tt">ERROR</span>   | Only error messages are logged                                    |
| <span class="tt">WARNING</span> | Only error and warning messages are logged                        |
| <span class="tt">INFO</span>    | Error, warning, and Info message are logged (this is the default) |
| <span class="tt">ALL</span>     | All messages are logged, including debug information              |

Engine log file
---------------

When you run a process locally from Bonita BPM Studio for testing, you can access the Engine log file by choosing **Bonita BPM Engine log** from the **Help** menu.
The logging level for Engine when it is started from Studio is always `INFO`.

On a deployed system, you can configure the log level and you can access the log files directly, in <span class="tt">*BONITA\_HOME*/tomcat/logs</span>.
Each file name includes the date when the file was created. There are several log files:

-   <span class="tt">*bonita.date*.log</span> is the Bonita BPM Engine log file.
-   <span class="tt">*catalina.date*.log</span> is the log file for the Tomcat application server used by Bonita BPM Studio.
-   <span class="tt">*host-manager.date*.log</span>, <span class="tt">*localhost.date*.log</span>, and <span class="tt">*manager.date*.log</span> are internal Tomcat log files.

