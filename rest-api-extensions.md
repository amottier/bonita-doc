# 4.4.11 Creating a REST API extension

REST API extensions provide data sources for forms and pages. They can be used to query [business data](/business-data-model-856) or an external information system (such as a database, web service, or LDAP directory).
They also help to keep a clean separation between the front-end (forms, pages, and interfaces visible to users) and the back-end (processes).
In the Bonita BPM Studio, a REST API Extension is a [Maven artifact](http://maven.apache.org/).


Prerequisites for developing a REST API extension:

* Basic knowledge of Maven
* Groovy/Java development expertise

The following sections show how to create and deploy a REST API extension. As an example, they show a REST API extension that queries the corporate LDAP directory to get the list of all users.


