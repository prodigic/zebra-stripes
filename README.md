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

1.  apex-syntax,
1.  atom-dark-syntax,
1.  atom-light-syntax
1.  base16-tomorrow-dark,
1.  base16-tomorrow-light,
1.  firewatch-green-syntax,
1.  firewatch-syntax,
1.  monokai-seti,
1.  monokai,
1. my-syntax-dark,
1. my-syntax-light,
1. one-dark-syntax,
1. one-light-syntax,
1. pure-syntax,
1. seti-syntax
1. solarized-dark-syntax  
1. solarized-light-syntax,




## Adding support to an existing syntax theme

You can easily add support for installed syntax themes by adding a selector to the appropriate block to the zebra-stripes.less file in the plugins styles folder.

### Using zebra-stripes.less (local changes)
``` css

/* Add zebra-stripes to dark syntax themes */
.zebra-stripes {
  /* <ADD THEME SELECTOR HERE> */
  &.theme-my-syntax-dark-theme,
  &.theme-atom-dark-syntax,
  &.theme-firewatch-syntax,
  &.theme-firewatch-green-syntax,
  &.theme-monokai,
  &.theme-pure-syntax,
  &.theme-monokai-seti,
  &.theme-base16-tomorrow-dark-theme,
  &.theme-one-dark-syntax,
  &.theme-solarized-dark-syntax {

    atom-text-editor {
      .line:nth-child(odd) {
        background-color:rgba(255, 255, 255,0.042);
      }
    }
  }
}

/* Add zebra-stripes to light syntax themes */
.zebra-stripes {
  /* <ADD THEME SELECTOR HERE> */
  &.theme-apex-syntax,
  &.theme-my-syntax-light-theme,
  &.theme-base16-tomorrow-light-theme,
  &.theme-one-light-syntax,
  &.theme-solarized-light-syntax,
  &.theme-atom-light-syntax {

    atom-text-editor {
      .line:nth-child(odd) {
        background-color:rgba(0, 180, 0,0.1);
      }
    }
  }
}

/* Add specific syntax theme support */
.zebra-stripes {
  &.theme-seti-syntax  {
    atom-text-editor {
      .line:nth-child(odd) {
        background-color:rgba(255, 255, 255,0.12);
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

    atom-text-editor {
      .line:nth-child(odd) {
        background-color:rgba(25, 25, 25,0.084); /* set alternate color here */
      }
    }
  }
}

```
