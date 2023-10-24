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
