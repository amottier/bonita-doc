
1.7.2.5 Repeat a container for a collection of data
===================================================

The content of a container can be included multiple times in a page, once for each element in a collection of data. The content is repeated as many times as necessary to display all the data in the collection.

A collection is an array of data referenced by a variable. The UI Designer provides some built-in variables that you can use to specify the collection or an element within it:

-   *\$index*: the index of the current iteration of the collection (counting from zero)
-   *\$item*: the element of the current iteration
-   *\$collection*: the current collection (not available in releases earlier than 7.1.3)

![Collection variables](images/images-6_0/UID_ContainerCollection.png){width="70%"}
The rest of this page contains some examples of how to repeat the content of a container over a collection.

[Simple collection](#simple-repeat-contents)\
[Modifiable simple collection](#simple-repeat-contents)\
[Structured collection](#structured-repeat-contents)\
[Nested collections](#structured-repeat-contents)

Follow the examples in sequence, because each one builds on the previous example.

Simple collection {#simple-repeat-contents}
-----------------

This section explains how display the elements from a simple collection in a repeatable container.

In this example, the collection of data is a list of fruits. You want to display this list in a table and enables users to modify the name of a fruit. To create the table in a page:

1.  In a UI designer page, create a variable to specify the collection, which must be an array.
    In a typical application, a collection is defined by a JavaScript or External API variable, but for easy page development, you can use a fixed JSON array.
    For this example, create a JSON variable called *fruits* containing `["banana","apple","pineapple","cherry"]`.
2.  Add a container widget to your page and bind the variable *fruits* to the **Repeat contents** property.
3.  In the container, add an input widget with the following properties:
    -   Bind the **Value** property to *\$item*.
    -   Set the **Label** property to *Fruit type*.
    -   Set the **Label position** property to *Left*.

4.  Check the Preview, which should look something like this:

![Simple collection repeated](images/images-6_0/UID_ContainerSimpleFruits.png){width="70%"}
A user can modify the name of a fruit by typing in the input field.

Modifiable simple collection {#simple-repeat-contents}
----------------------------

This section shows how to update the container that you defined in the previous section, to enable the user to add an element to a collection or to remove an element.
Adding an element adds a repeat of the container content. Removing an element removes the repeat.

1.  In the page, add a button widget above the container (not in the container) the following properties:
    -   **Label**: *Add a fruit*
    -   **Alignment**: *right*
    -   **Style**: *success*
    -   **Action**: *Add to collection*
    -   **Collection**: *fruits*
    -   **Add**: *Last*, to add the new item at the end of the collection
    -   **Value to add**: leave this empty because there is no specific structure to add

2.  In the container, add a button widget on the same line as the input widget labelled Fruit type, with the following properties:
    -   **Label**: *Remove this fruit*
    -   **Alignment**: *right*
    -   **Style**: *danger*
    -   **Action**: *Remove from collection*
    -   **Collection**: *\$collection*, to point to the current collection, fruits
    -   **Remove**: *Item*, to remove the current item related to this line
    -   **Item to remove**: *\$item*, to reference the current element

3.  Check the Preview, which should look something like this:

![Simple collection repeated](images/images-6_0/UID_ContainerSimpleFruitsAddRemove.png){width="70%"}
A user can now add a new fruit or remove a fruit, dynamically changing the collection.

Structured collection {#structured-repeat-contents}
---------------------

This section explains how to update the container to display a structured collection using repeated content.
The previous examples used a simple array of names of fruits, where each item was a primitive String type.
This example uses a more complex array with a list of producing countries nested within each item in the list of fruits. It has the following structure:

    {
       "fruit":"fruit name",
       "producingCountries":
                   ["country1","country2"]
    }

1.  Create a new variable,*fruitsProducingCountries*, with the following value:

        [
          {
           "fruit":"banana",
           "producingCountries":
                       ["India","China"]
           },
           {
            "fruit":"apple",
            "producingCountries":
                        ["China","USA"]
            }
        ]

2.  Select the container and change the **Repeat contents** property so that it binds to *fruitsProducingCountries* instead of to *fruits*.
3.  Select the input widget that displays the fruit and change the **Value** property to bind to *\$item.fruit*.
4.  Select the *Add fruit* button and change the **Collection** property to bind to *fruitsProducingCountries*.
5.  Check the Preview. You see the same result as in the previous example.
    The country information is present in the data collection but is not displayed. You can still change the name of a fruit, and add or remove an entry.

Nested collections {#structured-repeat-contents}
------------------

This section explains how to update the container configuration to handle a structured collection that includes nested structures, to enable a user to add or remove elements at any level of the collection.
The updated page displays the producing countries for each fruit. A user can rename, add, or remove a fruit, and add or remove a producing country for a fruit.

1.  Add a button widget in the existing container, below the row that contains the *Fruit type* input widget and the *Remove this fruit* button. Configure the button widget properties as follows:
    -   **Label**: *Add producing country*
    -   **Alignment**: *left*
    -   **Style**: *success*
    -   **Action**: *Add to collection*
    -   **Collection**: *\$item.producingCountries*, to specify the element of the data structure to which the element is added
    -   **Add**: *Last*, to add the new item is added at the end of the collection
    -   **Value to add**: leave this empty because there is no specific structure to add

2.  Add a new Container widget inside the existing container below the *Add producing country* button.
3.  To repeat the content of this new container for the collection of producing countries associated with each fruit type, bind the **Repeat contents** property of this container to *\$item.producingCountries*.
4.  Add an input widget in the new container to display the producing countries. Set the widget properties as follows:
    -   **Label**: *Producing country*
    -   **Label position**: *left*
    -   **Value**: bind to *\$item*, to specify the current item within the collection *producingCountries*.

5.  To enable the user to remove a producing country item, add a button widget in the container in the same row as the *Producing country* input widget. Configure the button widget properties as follows:
    -   **Label**: *Remove this producing country*
    -   **Alignment**: *righ*
    -   **Style**: *danger*
    -   **Action**: *Remove from collection*
    -   **Collection**: *\$collection*, to specify the current collection, producingCountries
        (you could also specify the collection explicitly as *fruitsProducingCountries.producingCountries*, but for better maintainability this is not recommended because
        if you specify the collection explicitly and subsequently change the collection name or the parent collection name, you need to remember to update this property setting)
    -   **Remove**: *Item*, to remove the current item related to this line
    -   **Item to remove**: *\$item*, to specify the current element

6.  Check the Preview, which should look something like this:

![Simple collection repeated](images/images-6_0/UID_ContainerStructuredFruitsAddRemove.png){width="70%"}
You can rename, add, and remove fruits, and add or remove countries, dynamically changing the structure of your collection.

