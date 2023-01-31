# This file is an exemple of the maximum equal sum of three stacks

def max_sum(stack1, stack2, stack3, n1, n2, n3) # n1, n2 and n3 are the lengths of the stacks
    sum1, sum2, sum3 = 0, 0, 0 
  
    # Encontrando a soma inicial da stack1.
    for i in 0...n1
      sum1 += stack1[i] # To do the Sum each elementand assign  of stack to  sum1
    end
  
    # Encontrando a soma inicial da stack2.
    for i in 0...n2
      sum2 += stack2[i] 
    end
  
    # Encontrando a soma inicial da stack3.
    for i in 0...n3
      sum3 += stack3[i]
    end
  
    # Como dado na questão, o primeiro elemento é o topo
    # da pilha.
    top1, top2, top3 = 0, 0, 0 # To track the current position of elements at the top of stacks
    ans = 0                    # to store the final result of the maximum sum possible of the three stacks 
    loop do
      # Se alguma pilha estiver vazia
      if (top1 == n1 || top2 == n2 || top3 == n3)
        return 0
      end
  
      # Se a soma de todas as três pilhas for igual.
      if (sum1 == sum2 && sum2 == sum3)
        return sum1
      end
  
      # Finding the stack with the maximum sum and
      # remove the top element and update the sum
      if (sum1 >= sum2 && sum1 >= sum3)
        sum1 -= stack1[top1] 
        top1 += 1
      elsif (sum2 >= sum1 && sum2 >= sum3)
        sum2 -= stack2[top2]
        top2 += 1
      elsif (sum3 >= sum2 && sum3 >= sum1)
        sum3 -= stack3[top3]
        top3 += 1
      end
    end
  end
  
  # Programa Principal
  stack1 = [3, 2, 1, 1, 1]
  stack2 = [4, 3, 2]
  stack3 = [1, 1, 4, 1]
  
  n1 = stack1.length
  n2 = stack2.length
  n3 = stack3.length
  
  puts max_sum(stack1, stack2, stack3, n1, n2, n3)
  