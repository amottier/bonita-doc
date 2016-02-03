
3.2 Languages
=============

Languages available by default
------------------------------

-   English (US)
-   French
-   Spanish (Latin American)
-   Japanese (from 7.1.3)

How to change the Bonita BPM Portal user interface language
-----------------------------------------------------------

To change the language of the user interface, go to the top right corner, click on ***Settings***/***Language*** and select a language from the list.

How to change the language of the Bonita BPM Portal Mobile user interface
-------------------------------------------------------------------------

1.  Click on the ***Tools icon***
2.  Click on ***Languages***
3.  Select a new language from the dropdown list

How to add a new language from the Community to Bonita BPM Portal
-----------------------------------------------------------------

1.  Go to [Crowdin](http://translate.bonitasoft.org/) and click the ***Download*** icon to download the zip archive file containing the translations into all the available languages.
    The archive is called `bonita-bpm-60.zip` even for Bonita BPM 7.x versions.
    This zip file is a snapshot of the translation that are finished and are in progress. The steps in this section assume you are adding a validated translation. You can also add a translation that is in progress. However, the results can be unpredictable, so you should do this only if you are sure of the translation status (perhaps if you are the translator).
2.  Go to the `master` folder, which contains the translations that are complete and validated.
3.  Go to the `/bonita-web/portal` folder.
4.  Find the `.po` files for the language you want to add. Each `.po` file has a language indicator and a locale indicator.
    For example, the files for the Russian language contain `ru_RU`. Extract the files with the language and locale that you want to add to the Portal.
5.  For a Subscription version of the Portal, you also need the files from `/bonita-web-sp/portal` for your chosen language and locale.
6.  Optionally, customize the translation by editing the `.po` files with a UTF-8 editor such as [Poedit](http://www.poedit.net/).
7.  Copy the `.po` files to `bonita_home/client/platform/work/i18n/`.
    In a development environment where you are launching Bonita BPM Portal from Bonita BPM Studio, add the files to `/workspace/tomcat/bonita/client/platform/work/i18n` (the bonita\_home used by the Portal).
8.  Restart your application server (or restart Bonita BPM Studio). The next time Bonita BPM Portal starts, it will detect the new language and add it to the list in the **Settings** menu.

Note: do not compile .po files into .mo files, because they will not be used.

Example: how to install the Russian language in a Subscription edition Portal
-----------------------------------------------------------------------------

1.  Log in to [Crowdin](http://translate.bonitasoft.org/) and download the archive file `bonita-bpm-60.zip`.
2.  Unzip the `bonita-bpm-60.zip` file to a folder, and go to the `/master` folder. Find the following files:
    -   `/bonita-web/portal/portal_ru_RU.po`
    -   `/bonita-web/portal/portal-js_ru_RU.po`
    -   `/bonita-web-sp/portal/mobile_ru_RU.po`
    -   `/bonita-web-sp/portal/portal-js-sp_ru_RU.po`
    -   `/bonita-web-sp/portal/portal-sp_ru_RU.po`

3.  Copying these files to the Portal localization folder, `bonita_home/client/platform/work/i18n/`.
4.  Restart your application server (or restart Bonita BPM Studio).

For the Community version, you only need the files from the `/bonita-web` folder, not those from `/bonita-web-sp`.

How to translate Bonita BPM Portal to any other language
--------------------------------------------------------

1.  Go to [crowdin.com](http://crowdin.com).
2.  Create an account and join the project **Bonita BPM 6.0**. The same project is used for 6.x and 7.x translations.
3.  Once you have joined the [project](http://crowdin.com/project/bonita-bpm-60), there are 2 possible cases:

#### Complete an ongoing translation

-   Complete an ongoing language translation by *clicking on one of the languages* listed in the section **Needs Translation**.
-   Once you have clicked on a language, you need to click on any ***Translate*** button to enter the translator view.
-   In the translator view, you can select the option **All strings** from the **Project menu** in order to view all the strings.
-   You can then use the filter **missing translation** to only display the strings to be translated.

#### A language is not listed

-   If the language you need is not listed, you can contact us on our [Community forum](http://community.bonitasoft.com/groups/community-tools/new-bug-tracker-and-traduction-tools-jira-and-crowdin).

For more information about translations of Bonita BPM and how you can get involved, see the [Community translations site](http://community.bonitasoft.com/contribute/translate).
