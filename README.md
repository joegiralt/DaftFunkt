# DaftFunkt
 A lodash/fp inspired Library for Ruby

This is a Work In Progress.


Example

```ruby 
class Foo

  daft_funkts :flow_fn, :map_fn, :upcase_fn, :reverse_fn

  def mutate(array)
    flow_fn.(
      map_fn.(upcase_fn),
      map_fn.(reverse_fn),
      reverse_fn
    ).(array)
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
