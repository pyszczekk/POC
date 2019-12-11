function modifiedArray = union(p, q, array)

modifiedArray = array;

startId = p;
endId = q;

if startId > endId
    startId = q;
    endId = p;
end

startId= root(startId,array)

endId= root(endId,array)

modifiedArray(startId) = endId;
end