## Setup And Talk

- Install As A VS Code Editor
  - WITH relative line numbers!
- Vim Editing Language Vs. Vim The Terminal App
  - Differences
  - Advantages of using Terminal Vim
    - The terminal app allows you to quickly change a file without having to launch a new Code window or workspace.
    - Since it's installed everywhere, you know you can use it when you log into any server. Super important for work on the server to be able to use vim for quick edits.
    - Many people "live in the terminal", which means popping in and out of vim is a good choice.
    - For those people, it's also quick to run terminal commands from within vim to search files and make search-and-replace commands.
    - Many people like letting their OS manage the windows, rather than an app. So having multiple terminals that you can move anywhere you want can give you better control of how to view files.
    - In all, terminal vim programming is about letting your operating system, and particularly the terminals in it, be the text editor app.
  - Why not use terminal vim?
    - You can configure it more fully than anywhere else, but... you also HAVE to configure it.
    - A more full text editor like VS Code is less of a leap when you're getting used to the vim language.
    - And full text editors come with so many features!
    - Best of both worlds!

## Keep Calm and Hit Esc

We're not going to go into insert mode for a while, so if you accidentally hit a key and start typing things, just hit ESC to come back to Normal Mode! From anywhere.

And if you really mess up this document, you can hit `u` on your keyboard to undo.

And if you REALLY mess up this document, you can clone it back down. VC FTW!

## Concepts

### Modes

Instead of your default state being "typing" and needing special modifier keys to perform editing tasks, vim puts you in editing mode, and you need to switch modes to type. Once you get past how weird that is, it starts to feel completely natural!

#### Why Modes?

You know how annoying it is to find your command and option and control and shift keys? And then reach the letter you want? And sometimes you need two of these "modifier" keys at the same time (plus, again, a letter)? And that you can't possibly keep more than, at most, a few dozen memorized?

The big advantage of having modes is that, by giving people the ability to switch to a kind of modifier-key-mode (called "Normal Mode" in Vim), you free up every letter on your keyboard to, with one press, do something cool.

So instead of Command-Shift-K to delete the line you're on in VS Code's key bindings, you'll press `dd` in vim. Instead of Ctrl-Tab to switch tabs, you'll press `gt`. Instead of Command-F: `/`. Instead of Command-C: `y`.

There are other advantages of modes that you'll get as you go, but that's the obvious win.

#### Which Modes Are There?

Plenty! Normal, Insert, Visual, Command-Line/Ex, Replace, Visual Line, Visual Block, and many others. But you'll use Normal and Insert modes 98% of the time.

We'll stick to Normal Mode for a bit, which you can think of as "editing mode". "Normal" is a funny name for a mode, but it's purposeful: when you're writing code, you're going to be moving code around and deleting code a _lot_ more often than writing it. And by staying in this editing mode by default, as your "normal", default setting, you'll allow yourself to stay in that paradigm.

The other mode you'll use often is Insert Mode, where you'll actually _write_ things. We'll get there soon!

### Motions

- h j k l
  - Although j and k are useful to work on lines, and the hjkl concept is overall really neat, h and l are the worst way to move horizontally
  - throw in x to delete a character
  - r to replace a character
- your first operators for a while: `x` and `r`
- w, b, e
- W, B, E
  - Python makes excellent example:

```python
first_name = 'Colin'
last_name = 'Jaffe'

full_name = first_name + last_name
```

- f and F for searching for a specific character, followed by ; and , to move forward/backward
- t and T for up "til" those characters, very useful when we come to operators soon
- `/` and `?` for searching, then `n` and `N` to go to the next/previous result

### counts!

- useful for moving by multiples
- especially useful for making big vertical jumps

### Insert Mode

- `i` and `a` for inserting and appending within a line
- `o` and `O` for adding a line above or below

### operators - let's do things!

Moving around wherever you want and then inserting is a pretty big win, but where things get really good is when you can enter commands that can combine with those motions and counts we just worked with.

Combining an operator with a motion allows you to use a sentence like "Delete to the end of this word." Or, with a count: "Delete 3 words."

- x is an operator we've been using, but it takes no object, like "disappear".
- But these ones do!

#### Our first real operator: delete.

- d to delete
  - with a motion:
    - `de` (delete to the end of the current word)
    - `dw` (delete to the start of the next word)
    - `dj` (delete the current line and the one below)
    - `dd` (a common special case: repeating an operator performs it on the whole current line)
    - `D` (another common special case: capitalizing an operator performs it to the end of the line)
  - with a motion AND a count:
    - `d2w` (delete two words)
    - `d5k` (delete the current line and 5 above)
  - with a _really cool_ motion:
    - `dtr` (deletes up to but not including the next `r` character on the line)
    - `df=` (deletes up to and including the next `=` character on the line)
    - `d/function` (deletes up to the next search result for `function`)

#### Every Operator Works Like This!

If you learn a new motion, you can use all operators with that motion.

For example, say you learn `gg` and `G`. The first one takes you to the start of the document, while the second takes you to the end.

Now you can use `dgg` to delete to the start, and `dG` to delete to the end.

And if you knew `c` and `y` (and you will!), then you'd have learned `cgg` and `cG` and `ygg` and `yG` as well.

It really is like learning a new language!

#### And if you learn a new operator?

Let's do it!

#### A variation on deleting: changing.

The `c` operator changes things. What that means is that it deletes, and puts you insert mode.

So:

- `cw` (change the word to whatever you type next)
- `ce` change the end of the word to whatever you type next)
- `C` change to the end of the line
- `cc` (change the entire line)
- `ct)` (change up to but not including the next close parens)

#### "yanking"

"yank" is the vim terminology for copying. You "yank" text to the clipboard.

- `yy` (copy the current line)
- `yj` (copy the current line and the one below)
- `yw` (copy the current word)

You can paste with `p`!

### Text Objects

Coming soon!
