<<<<<<< HEAD
# EMPTY PLAYGROUND!
### PROBLEMS WITH NON_SUBSETTED STUDENTS NEED TO FIND GENERAL SOLUTION
row_length <- as.data.frame(unlist(map(List_of_subsets, nrow)))
row_length$child_id <- rownames(row_length)
    

###
# Define a global variable
global_counter <- 0

# Create a function that prints and increases the global variable
my_function <- function() {
    # Access the global variable
    global_counter <<- global_counter + 1
    
    # Print the updated value
    cat("Function has been run ", global_counter, " times\n")
}

# Call the function multiple times to see the global variable increase
my_function()  # Call the function
my_function()  # Call the function again
my_function()  # Call the function again

# The global_counter has been increased by 3 times




=======
# Define your custom function with additional arguments
your_function <- function(igraph_object, index, MATRIX) {
    #' Add the new word to the igraph
    igraph_object <- FUNC_Add_new_word_to_graph(
        GRAPH_OBJECT = igraph_object,
        NEW_WORD_STRING = index,
        ADJ_MATRIX = MATRIX)

    
    return(igraph_object)  # You can return the modified graph or any other result
}

# Apply the function to all graphs in all nested lists using purrr::map
save_test <- imap(List_of_List_of_Graphs[[1]], FUNC_Add_new_word_to_graph, MATRIX = SEMANTIC_EDGES_MATRIX)


rethinking::precis(
    filter(save_test_2, unlist(save_test) != 0)
)
>>>>>>> parent of c82a452 (Able to get centrality out for all children in subset, trying to generalize to all data)
