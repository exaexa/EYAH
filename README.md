
# Exercise Yourself a Haskell for Great Profit

This is intended as a lightly curated repository of Haskell exercises grouped
by topic. You are welcome to add anything and send a pull request, we'll
organize things a bit and make sure the thing will get published in several
nice forms.

## How do I add exercises?

There is a directory structure that roughly corresponds to the structure of
Learn Yourself A Haskell. Files in each directory are exercises. Exercises are
formatted as markdown, with some metadata. Metadata are in section 'Meta' as a
single list. It will eventually be used in the view to provide a better
categorization of the exercises.

### Available metadata

- `level` can be one of `beginner` `simple` `intermediate` `challenging`
  `advanced` and `insane`
- `tag` can be any space-separated list of stuff, tags are hierarchical using a
  slash (e.g. tags `types/dependent` subsumes tag `types`)
- `lyah` is the path to corresponding LYAH chapter (a better form of tag)

(it's probably too early to decide on this though)

### Exercise example

Simple exercise from the first chapter:

```
# Compute circle area

Know there is a constant called `pi` available in the prelude, compute an area
of the circle with diameter 33 feet.

# Meta

- level: beginner
- lyah: Starting Out/Ready, Set, Go!
```

Advanced, well-tagged exercise from yet-unpublished chapter:

```
# Solve halting problem.

Using what we learnt so far, write an oneliner function of type
`TuringMachine -> TMInput -> ()`
that terminates if and only if the given turing machine does not terminate on
given input.

# Meta

- level: intermediate
- tag: decidability theory turing_machines
```

## Contributing

Modify this in any way, add exercises and send a pull requests!
