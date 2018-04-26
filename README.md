# DaftFunkt
 A lodash/fp inspired Library for Ruby

This is a Work In Progress.


Example

```ruby 
class SomeEtlTool

  daft_funkts :flow_fn, :map_fn, :upcase_fn, :reverse_fn

  def capitalize_all!
    map_fn.(upcase_fn)
  end

  def reverse_names!
    map_fn.(reverse_fn)
  end
  
  def reverse_collection!
    reverse_fn
  end

  def proccess_names(list_of_names)
    flow_fn.(
      capitalize_all!,
      reverse_names!,
      reverse_collection!
    ).(list_of_names)
  end
end
```
or if you prefer

```ruby
class Foo

  daft_funkts :flow_fn, :map_fn, :upcase_fn, :reverse_fn

  def mutate(array)
    flow_fn[
      map_fn[upcase_fn],
      map_fn[reverse_fn],
      reverse_fn
    ][array]
  end
end
```

## Development

Send PRs to the master branch. Don't worry about specifics; we can do code
review in the PR. I am happy to review any PRs, of any "quality", so don't
worry about it being "good enough" or something, just hit send. :) I also open to new api considerations as well!

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/joegiralt/DaftFunkt.

