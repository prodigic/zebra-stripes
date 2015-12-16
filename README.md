# zebra-stripes
https://atom.io/packages/zebra-stripes

Provides alternate line shading to increase legibility in text editors.

The settings panel allows you to enable/disable the plugin and toggle logging to the console.

![Settings](https://github.com/prodigic/zebra-stripes/blob/master/zebra-stripes-settings.png?raw=true)

## Examples

### Dark Theme

![Preview dark theme](https://github.com/prodigic/zebra-stripes/blob/master/zebra-stripes-dark-theme.png?raw=true)

### Light Theme
![Preview light theme](https://github.com/prodigic/zebra-stripes/blob/master/zebra-stripes-light-theme.png?raw=true)

## Installation

install from either the settings panel

![Preview Settings Panel](https://github.com/prodigic/zebra-stripes/blob/master/zebra-stripes-settings-panel.png?raw=true)

or use apm on the command line

`apm install zebra-stripes`

## Supported Syntax Themes

1. Atom Dark
2. Atom Light
3. One Dark
4. One Light
5. Base16 Tomorrow Dark
6. Base16 Tomorrow Light
7. Solarized Dark
8. Solarized Light
9. Monokai Seti


## Adding support to an existing syntax theme

You can easily add support for installed syntax themes by adding a selector to the appropriate block to the zebra-stripes.less file in the plugins styles folder.

### Using zebra-stripes.less (local changes)
``` css

.zebra-stripes {

  &.theme-my-syntax-dark-theme,
  &.theme-atom-dark-syntax,
  &.theme-monokai-seti,
  &.theme-base16-tomorrow-dark-theme,
  &.theme-one-dark-syntax,
  &.theme-solarized-dark-syntax  {

    atom-text-editor::shadow {
      .line:nth-child(odd) {
        background-color:rgba(255, 255, 255,0.042);
      }
    }
  }
}

.zebra-stripes {

  &.theme-my-syntax-light-theme,
  &.theme-base16-tomorrow-light-theme,
  &.theme-one-light-syntax,
  &.theme-solarized-light-syntax,
  &.theme-atom-light-syntax {

    atom-text-editor::shadow {
      .line:nth-child(odd) {
        background-color:rgba(0, 0, 0,0.1);
      }
    }
  }
}

```

Drop me a pull request if you want specific support added to the zebra-stripes plugin for your theme.



### building support directly into the theme.

To add built-in support to custom themes you need to implement a CSS rule to provide the stripe effect. This is also useful if you wish to use a different color for the alternate line shading.

``` css

.zebra-stripes {

  .theme-my-syntax-theme {

    atom-text-editor::shadow {
      .line:nth-child(odd) {
        background-color:rgba(25, 25, 25,0.084); /* set alternate color here */
      }
    }
  }
}

```
