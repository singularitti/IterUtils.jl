export unpack_tuple

function unpack_tuple(iter)
    iter_first = iterate(iter)
    if iter_first === nothing
        return ()  # Handle the case where the iterator is empty
    end
    elements_first, state = iter_first  # Extract the first tuple from the iterator
    # Initialize a tuple of empty arrays based on the number of elements in the tuple
    N = length(elements_first)
    arrays = ntuple(i -> [elements_first[i]], N)
    # Iterate through the remaining elements in the iterator
    while true
        iter_next = iterate(iter, state)
        if iter_next === nothing
            break
        end
        elements, state = iter_next
        for (array, element) in zip(arrays, elements)
            push!(array, element)
        end
    end
    return arrays  # Return the tuple of arrays
end
