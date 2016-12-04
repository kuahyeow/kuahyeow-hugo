{
  "title": "Convert array to hash of hashes...",
  "description": "Recursive code to produce russian doll hashes. I am not proud :/",
  "tags": ["ruby", "code"],
  "date": "2016-12-04"
}

I wanted to convert a array of `[item1, item2, item3]` to `{item1 => {item2 => item3}}`.
Here is the quick and dirty code I came up with...

<!--more-->

```
def convert_to_hash(array)                                                                                                                            
  last = array.slice(1..-1)                                                                                                                           
  value = last.empty? ? {} : convert_to_hash(last)                                                                                                    
  {array[0] => value}                                                                                                                                 
end
```

I am not proud :/
