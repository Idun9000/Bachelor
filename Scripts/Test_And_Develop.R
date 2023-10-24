# Define your custom function with additional arguments
your_function <- function(igraph_object, index, MATRIX) {
    cat("Element name:", index, "\n")
    cat("Element value:", vcount(igraph_object), "\n")
    #' Add the new word to the igraph
    igraph_object <- FUNC_Add_new_word_to_graph(
        GRAPH_OBJECT = igraph_object,
        NEW_WORD_STRING = index,
        ADJ_MATRIX = MATRIX)
    cat("Element value after added vertice:", vcount(igraph_object), "\n")
    return(igraph_object)  # You can return the modified graph or any other result
}

# Apply the function to all graphs in all nested lists using purrr::map
save_test <- imap(List_of_List_of_Graphs[[1]], your_function, MATRIX = SEMANTIC_EDGES_MATRIX)

names(List_of_List_of_Graphs[[1]][75]) = "breaks"
names(List_of_List_of_Graphs[[1]][75])









# Create a nested list with names
nested_list <- list(
    List1 = list(apples = 3, bananas = 5, oranges = 7),
    List2 = list(apples = 2, pears = 4, grapes = 6)
)

# Define the value you want to replace the names with
x <- "apples"  # Replace "apples" with your desired value

# Define a function to change the names in a list
change_names <- function(lst, replace, replace_with) {
    names(lst)[names(lst) == x] <- new_name
    return(lst)
}

# Use lapply() to apply the function to each nested list
result_list <- lapply(nested_list, function(inner_list) {
    change_names(inner_list, x, "new_name")
})

# Print the modified nested list
print(nested_list)
print(result_list)




