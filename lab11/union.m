function modifiedArray = union(p, q, array)

modifiedArray = array;

startId = p;
endId = q;

if startId > endId
    startId = q;
    endId = p;
end

while startId ~= array(startId)
    startId = array(startId);
end
while endId ~= array(endId)
    endId = array(endId);
end
modifiedArray(startId) = endId;
end