def kruskal(graph)
    # Cria uma lista vazia para armazenar as arestas da MST
    mst = []
    
    # Cria uma lista de conjuntos vazios para armazenar os vértices
    sets = graph.keys.map { |v| Set.new([v]) }
    
    # Ordena as arestas pelo peso
    edges = []
    graph.each do |v, e|
      e.each do |v2, w|
        edges << [v, v2, w]
      end
    end
    edges.sort_by! { |v1, v2, w| w }
    
    # Para cada aresta, adiciona-a à MST se não formar ciclo
    edges.each do |v1, v2, w|
      set1 = sets.find { |s| s.include?(v1) }
      set2 = sets.find { |s| s.include?(v2) }
      
      if set1 != set2
        mst << [v1, v2, w]
        sets.delete(set1)
        sets.delete(set2)
        sets << set1.union(set2)
      end
    end
    
    # Retorna a MST
    mst
  end


  graph = {
    'A' => { 'B' => 7, 'D' => 5 },
    'B' => { 'A' => 7, 'C' => 8, 'D' => 9, 'E' => 7 },
    'C' => { 'B' => 8, 'E' => 5 },
    'D' => { 'A' => 5, 'B' => 9, 'E' => 15, 'F' => 6 },
    'E' => { 'B' => 7,}
}

  puts Kruskal(graph)
