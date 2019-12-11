function korzen = root(id, array)

  while id ~= array(id)
            id = array(id);
  end
  korzen = id
end