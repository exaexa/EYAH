
# Exercise Yourself a Haskell for Great Profit

This is intended as a lightly curated repository of Haskell exercises grouped
by topic. You are welcome to add anything and send a pull request, we'll
organize things a bit and make sure the thing will get published in several
nice forms.

## How do I add exercises?

There is a directory structure that roughly corresponds to the structure of
Learn Yourself A Haskell. Files in each directory are exercises. Exercises are
formatted as TeX commands: `\exercise{metadata}{Name}{text}`.

### Sorting exercises to sections

In the book, exercises will appear in directory order. Each directory can have
a `_dir.tex` file that is included before all exercises in the directory. This
is used to separate the contents into sections, add some explanations around,
etc.

### Available metadata

- `level` is a number from 0 to infinity
- `tag` can be any space-separated list of stuff, tags are hierarchical using a
  slash (e.g. tags `types/dependent` subsumes tag `types`)

Use in combination, e.g. `\exercise{level=4

(This is not processed yet, but will be.)

## Getting the result

Run `./maketex.sh`, if everything goes just right, you should receive an
A5-book of haskell exercises in `tex\_out/eyah.pdf`.

There will be a script that transforms this thing into a github page.

## Contributing

Modify this in any way, add exercises and send a pull requests!
