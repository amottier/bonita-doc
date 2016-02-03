
4.5.5 Manage a process
======================

In this page:

[List the deployed processes](#list_deployed)
[Enable a process and start an instance](#enable_start)
[Set variables in a process instance](#set_variables)
[Set string variables and start a process instance](#set_string_start)
[Set variables of any type and start a process instance](#set_start)
[Create a map of variables and values and start a process instance](#create_map)
[For a running process instance, set the value of a custom data type variable](#set_custom_variable)
[Execute a task](#execute_task)
[List the processes I started](#list_i_started)
[List the open instances of a process](#list_open)
[Get the history for a case](#get_history)
[Query archived process instances](#query_archived)
[Stop a process instance](#stop_instance)
[Deploy a process](#deploy)
[Deploy and enable a process from a bar file](#from_bar)
[Deploy and enable a process from the processDefinitionBuilder](#from_builder)
[Get the process design definition](#get_design)
[Undeploy a process](#undeploy)
List the deployed processes {#list_deployed}
---------------------------

This example shows you how to get a list of the deployed processes.

The search options specify that the list is sorted by deployment date, the maximum number of results to list is 100, and the list starts with the first results (that is, the processes that were deployed first).

` final ProcessAPI processAPI = TenantAPIAccessor.getProcessAPI(apiSession); final SearchOptions searchOptions = new SearchOptionsBuilder(0, 100).sort(ProcessDeploymentInfoSearchDescriptor.DEPLOYMENT_DATE, Order.DESC).done(); final SearchResult deploymentInfoResults = processAPI.searchProcessDeploymentInfos(searchOptions);`{type="java"}
Enable a process and start an instance {#enable_start}
--------------------------------------

After a process is deployed it must be enabled.

If a process is not enabled, it is not possible to start a process instance.

To **enable a process**, call the method <span class="tt">enableProcess</span> specifying the processDefinition id:

` // enable the process processAPI.enableProcess(processDefinition.getId()); System.out.println("A new process was enabled: " + processDefinition.getId());`{type="java"}
The next step is to **start an instance** of the deployed process:

` // start the process             final ProcessInstance processInstance = processAPI.startProcess(processDefinition.getId()); System.out.println("A new process instance was started with id: " + processInstance.getId());`{type="java"}
Set variables in a process instance {#set_variables}
-----------------------------------

This section contains some examples of how to set the values of some variables using a list of operations when starting an instance of a process and in a running process instance.

### Set string variables and start a process instance {#set_string_start}

In this example, `createInstance` takes the process definition name, the process version, a map of text variables and their values, and the session identifier.
The `startProcess` method, which creates the process instance, takes a list of operations, not a map of variables, so the map must be converted into a list of operations that will set the
values of the variables in the process instance. The example calls `buildAssignOperation` for each variable in turn,
to build an operation that will assign the value to the variable when the process instance is created. Each operation is built as an assignment expression.

` public void createInstance(String processDefinitionName,           String processVersion,           Map variables,           APISession apiSession)  {     ProcessAPI processAPI;     try {         processAPI = TenantAPIAccessor.getProcessAPI(apiSession);         long processDefinitionId = processAPI.getProcessDefinitionId(processDefinitionName, processVersion);                  List listOperations = new ArrayList();         for (String variableName : variables.keySet()) {             if (variables.get(variableName) == null) continue;            Operation operation = buildAssignOperation(variableName, variables.get(variableName).toString(),                  String.class.getName(), ExpressionType.TYPE_CONSTANT);            listOperations.add(operation);        }        processAPI.startProcess(processDefinitionId, listOperations, null);     } catch (Exception e) {         e.printStackTrace();     } }  private Operation buildAssignOperation(final String dataInstanceName,      final String newConstantValue,      final String className,      final ExpressionType expressionType) throws InvalidExpressionException  { final LeftOperand leftOperand = new LeftOperandBuilder().createNewInstance().setName(dataInstanceName).done();     final Expression expression = new ExpressionBuilder().createNewInstance(dataInstanceName).setContent(newConstantValue).setExpressionType(expressionType.name()).setReturnType(className).done();     final Operation operation;     operation = new OperationBuilder().createNewInstance().setOperator("=").setLeftOperand(leftOperand).setType(OperatorType.ASSIGNMENT).setRightOperand(expression).done();     return operation;}`{type="java"}
### Set variables of any type and start a process instance {#set_start}

In this example, `createCase` takes the process definition name, the process version, a map of variable names and objects, and the session identifier.
The `startProcess` method, which creates the process instance, takes a list of operations, not a map of variables, so the map must be converted into a list of operations that will set the
values of the variables in the process instance. For each variable in turn, the example builds an expression that assigns the value to the variable to the object supplied in the map,
specifying the data type by identifying the class of the object.
These expressions are concatenated into a list of operations, which is used to initialize the variables when the process instance is created.

` public void createCase(String processDefinitionName, String processVersion, Map variables, ProcessAPI processAPI) {      try {              long processDefinitionId = processAPI.getProcessDefinitionId(processDefinitionName, processVersion);             // ----- create list of operations -----             List listOperations = new ArrayList();             Map listVariablesSerializable = new HashMap();              for (String variableName : variables.keySet()) {                  if (variables.get(variableName) == null || (!(variables.get(variableName) instanceof Serializable)))                     continue;             Object value = variables.get(variableName);             Serializable valueSerializable = (Serializable) value;              variableName = variableName.toLowerCase();             Expression expr = new ExpressionBuilder().createExpression(variableName, variableName, value.getClass().getName(), ExpressionType.TYPE_INPUT);             Operation op = new OperationBuilder().createSetDataOperation(variableName, expr);             listOperations.add(op);             listVariablesSerializable.put(variableName, valueSerializable);             }              // ----- start process instance -----             processAPI.startProcess(processDefinitionId, listOperations, listVariablesSerializable);              // System.out.println("*** End Create Case ****");          } catch (Exception e) {               e.printStackTrace();     } }`{type="java"}
### Create a map of variables and values and start a process instance {#create_map}

Version 6.1 of Bonita BPM introduces a new method for starting a case of process and setting the variables.

Create a map specifying the values of the variables required to start a case, then pass it to the `instantiateProcess`
method, as shown in the following example:

` public void instantiateProcess(String processDefinitionName, String processVersion, Map variables, APISession apiSession)  {     try {         ProcessAPI processAPI = TenantAPIAccessor.getProcessAPI(apiSession);         long processId = processAPI.getProcessDefinitionId(processDefinitionName, processVersion);         processAPI.startProcess(processId, variables);     } catch (Exception e) {         e.printStackTrace();     } }`{type="java"}
### For a running process instance, set the value of a custom data type variable {#set_custom_variable}

To update the value of a variable with a custom data type, you need to call a Groovy script expression that returns the new value of the variable., as shown in the example below:

` final ProcessAPI processAPI = TenantAPIAccessor.getProcessAPI(session); final String dataInstanceName = "acase"; final long activityInstanceId = 2;  final LeftOperand leftOperand = new LeftOperandBuilder().createNewInstance().setName(dataInstanceName)                 .setType(LeftOperand.TYPE_DATA).done(); final Expression expression = new ExpressionBuilder().createGroovyScriptExpression("updateDataCaseTest",                 "new com.bonitasoft.support.Case(\"title\", \"description\")",                 Case.class.getName()); final Operation operation = new OperationBuilder().createNewInstance().setOperator("=").setLeftOperand(leftOperand).setType(OperatorType.ASSIGNMENT)                 .setRightOperand(expression).done();  final List operations = new ArrayList(); operations.add(operation); processAPI.updateActivityInstanceVariables(operations, activityInstanceId, null);`{type="java"}
Note: this applies starting from version 6.3.4.

Another method, `updateActivityDataInstance` also exists. However, this cannot be used with custom data types if you are using a remote connection, because the data type definition is not present in the Engine.

Execute a task {#execute_task}
--------------

This example shows you how to execute a task.

The task is specified by an activityInstanceID.

` final ProcessAPI processAPI = TenantAPIAccessor.getProcessAPI(apiSession); processAPI.executeFlowNode(activityInstanceID);`{type="java"}
List the processes I started {#list_i_started}
----------------------------

This example shows you how to list the open process instances started by the current user.

The search options specify that a maximum of 100 items are listed, starting with the first one.

` final ProcessAPI processAPI = TenantAPIAccessor.getProcessAPI(apiSession); final SearchOptionsBuilder builder = new SearchOptionsBuilder(0, 100); builder.filter(ProcessInstanceSearchDescriptor.STARTED_BY, apiSession().getUserId()); final SearchResult processInstanceResults = processAPI.searchOpenProcessInstances(builder.done());`{type="java"}
List the open instances of a process {#list_open}
------------------------------------

This example shows you how to list the open instances of a specified process.

The process is specified by the processDefinitonID. The search options specify that a maximum of 100 items are listed, starting with the first one.

` final ProcessAPI processAPI = TenantAPIAccessor.getProcessAPI(apiSession); final SearchOptionsBuilder builder = new SearchOptionsBuilder(0, 100); builder.filter(ProcessInstanceSearchDescriptor.PROCESS_DEFINITION_ID, processDefinitionID); final SearchResult processInstanceResults = processAPI.searchOpenProcessInstances(builder.done());`{type="java"}
Get the history for a case {#get_history}
--------------------------

This example shows how to get the history for a case.

A case is a process instance. To get the history, you retrieve the archived process instance, which is specified by processInstanceID.

` final ProcessAPI processAPI = TenantAPIAccessor.getProcessAPI(apiSession); final ArchivedProcessInstance archivedProcessInstance = processAPI.getArchivedProcessInstance(processInstanceID);`{type="java"}
Query archived process instances {#query_archived}
--------------------------------

This example shows how to get a list of archived process instances that meet a specified filter.

Note that this type of query is only possible with archived process instances.

` final ProcessAPI processAPI = TenantAPIAccessor.getProcessAPI(apiSession); final SearchOptionsBuilder builder = new SearchOptionsBuilder(0, 100); builder.filter(ArchivedProcessInstancesSearchDescriptor., ); final SearchResult archivedProcessInstanceResults = processAPI.searchArchivedProcessInstances(builder.done());`{type="java"}
Stop a process instance {#stop_instance}
-----------------------

This example shows how to stop (or cancel) an active process instance.

No further activities in this process instance are started.

` final ProcessAPI processAPI = TenantAPIAccessor.getProcessAPI(apiSession); processAPI.cancelProcessInstance(processInstanceID);`{type="java"}
Deploy a process {#deploy}
----------------

[](){#top}This example will show you how to use the Bonita BPM Engine API to deploy and enable a process.

The process can be in a business archive (`.bar`) file or can be built using the `processDefinitionBuilder`.

### Deploy and enable a process from a bar file {#from_bar}

First create a business archive from the bar file. In this example, the bar file is `/deploy/travelRequest`.
The process is deployed and enabled in a single step.

` // create a business archive final BusinessArchive businessArchive = BusinessArchiveFactory.readBusinessArchive(new File("/deploy/travelRequest"));`{type="java"}
Now **deploy and enable the process**:

` // deploy and enable the process final ProcessDefinition processDefinition = getProcessAPI().deployAndEnableProcess(businessArchive);`{type="java"}
### Deploy and enable a process from the processDefinitionBuilder {#from_builder}

In this example, there are three steps: deploy the process, map the actor, and enable the process.

First deploy the process:
` // deploy the process final ProcessDefinition processDefinition = processAPI.deploy(processDefinitionBuilder.done()); System.out.println("A new process was deployed with id: " + processDefinition.getId());`{type="java"}

Once the process is deployed, it's necessary to **map the actors** defined in the process to existing users in the database
before enabling the process. In this example, the actor defined in the process will be mapped to the current logged in user, whose id is available
in the session (attention, this user cannot be the technical user):

` // map the actor "delivery" to the current logged in user final List actors = processAPI.getActors(processDefinition.getId(), 0, 1, ActorCriterion.NAME_ASC); processAPI.addUserToActor(actors.get(0).getId(), session.getUserId());`{type="java"}
At this point, the process is deployed but not enabled. This means that no instances of this process can be started.
To **enable the process**, call the method <span class="tt">enableProcess</span>:

` // enable the process processAPI.enableProcess(processDefinition.getId()); System.out.println("A new process was enabled: " + processDefinition.getId());`{type="java"}
Get the process design definition {#get_design}
---------------------------------

This example shows how to retrieve the definition of a deployed process.

` //Create a process definition final ProcessDefinitionBuilder processBuilder = new ProcessDefinitionBuilder().createNewInstance("name", "1.0"); processBuilder.addDescription("description"); processBuilder.addAutomaticTask("AutomaticTask");          //Deploy and enable the process final ProcessDefinition processDefinition = getProcessAPI().deploy(         new BusinessArchiveBuilder().createNewBusinessArchive().setProcessDefinition(processBuilder.done()).done()); getProcessAPI().enableProcess(processDefinition.getId());  //Get the design process definition final DesignProcessDefinition resultDesignProcessDefinition = getProcessAPI().getDesignProcessDefinition(processDefinition.getId());`{type="java"}
Undeploy a process {#undeploy}
------------------

This example shows you how to undeploy a process.

A process is undeployed by deleting the processDefinition, specified by a processDefinitionID.

After the process is undeployed, no new instance can be started. Existing instances continue to completion.

` final ProcessAPI processAPI = TenantAPIAccessor.getProcessAPI(apiSession); processAPI.deleteProcessDefinition(processDefinitionId)`{type="java"}
