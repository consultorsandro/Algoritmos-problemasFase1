# This file is a exemple of minimum spanning tree (MST)
# This model is called PRIM because it does not sort the graph by weight
#before starting to build the tree.

# Imports the 'SET' set library to store the graph
require 'set'

def prim(graph)
    #Initialize the vertice group visited and the minimum spanning tree as empty
    visited = Set.new
    mst = []

    #Choose an arbitrary starting vertex
    # start_vertex get the first element of the array, actually the first vertex
    start_vertex = graph.keys.first 
    visited.add(start_vertex) # Method that adds element to set

    #while there are unvisited vertices
    while visited.size != graph.size
    # Initialize source vertex and destination vertex to null
    min_edge = [nil, nil, Float::INFINITY] # 

    # For each vertex visited
        visited.each do |vertex1|
            # For each vertex adjacent to the visited vertex
            graph[vertex1].each do | vertex2, weight|

            # If the adjacent vertex has not been visited and the weight of the edge 
            #is less than the weight of the current edge
            if !visited.include?(vertex2) && weight < min_edge[2]
            # Update source vertex, destination vertex and edge weight
            min_edge = [vertex1, vertex2, weight]
            end
        end
    end

    # Add the destination vertex to the set of visited vertices
    visited.add(min_edge[1])

    # Add the edge to the MST
    mst << min_edge
    end

return mst
end

# Exemple by use
graph = {
    'A' => {'B' => 1, 'D' => 3 },
    'B' => {'A' => 1, 'D' => 3, 'C' => 1 },
    'C' => { 'B' => 1, 'E' => 5 },
    'D' => { 'A' => 3, 'B' => 3, 'E' => 1 },
    'E' => { 'D' => 1, 'C' => 5 }
}

puts prim(graph)



           


