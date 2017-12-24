
# Exercise Yourself a Haskell for Great Profit

This is intended as a lightly curated repository of Haskell exercises grouped
by topic. You are welcome to add anything and send a pull request, we'll
organize things a bit and make sure the thing will get published in several
nice forms.

Simplest way to add an exercise is to open an issue with the text of (possibly
several) exercises, someone will certainly format them. If you have more
exercises or are generally git-aware, follow the standard
fork&commit&pull-request way of contributing.

## How do I add exercises to the source?

There is a directory structure that roughly corresponds to the structure of
Learn Yourself A Haskell. Files in each directory are exercises. Exercises are
formatted as TeX commands: `\exercise{metadata}{Name}{text}`.

To add an exercise, either add it to some `.tex` file, or create a new file for
it.

### Available metadata

Metadata currently consist of the "extra marker" icons that show up on the
margins, marking some difficult or technical exercises.

Available markers can be seen in `tex/header.tex`, they should now include:

- stars
- lambdas
- pencils

Do not use more than around 5 markers together.

### Example
```
\exercise{stars=2}{Movement}{Make your computer literally jump 5 times. Haskell
is a great language for that.}
```

### Sorting exercises to sections

In the book, exercises will appear in directory order. Each directory can have
a `_dir.tex` file that is included before all exercises in the directory. This
is used to separate the contents into sections, add some explanations around,
etc.

## Getting the result

Run `./maketex.sh`, if everything goes just right, you should receive an
A5-book of haskell exercises in `tex_out/eyah.pdf`.

There will be a script that transforms this thing into a website.
