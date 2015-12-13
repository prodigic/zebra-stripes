# Zebra-stripes

Provides alternate line shading to increase legibility in text editors.

The settings panel allows you to enable/disable logging to the console.

![Settings](https://github.com/prodigic/zebra-stripes/blob/master/zebra-stripes-settings.png)

## Examples

### Dark Theme
![Preview dark theme](https://github.com/prodigic/zebra-stripes/blob/master/zebra-stripes-dark-theme.png)

### Light Theme
![Preview light theme](https://github.com/prodigic/zebra-stripes/blob/master/zebra-stripes-light-theme.png)

## Installation
`
apm install zebra-stripes
`

## Supported Themes

1. Atom Dark
2. Atom Light
3. One Dark
4. One Light
5. Base16 Tomorrow Dark
6. Base16 Tomorrow Light
7. Solarized Dark
8. Solarized Light


## Adding support to an existing theme
`
.zebra-stripes.theme-base16-tomorrow-dark-theme,
.zebra-stripes.theme-one-dark-syntax,
.zebra-stripes.theme-solarized-dark-syntax,
.zebra-stripes.theme-atom-dark-syntax  {
  // To style other content in the text editor's shadow DOM, use the ::shadow expression
  atom-text-editor::shadow {
    .line:nth-child(odd) {
      background-color:rgba(255, 255, 255,0.042);
    }
  }
}

.zebra-stripes.theme-base16-tomorrow-light-theme,
.zebra-stripes.theme-one-light-syntax,
.zebra-stripes.theme-solarized-light-syntax,
.zebra-stripes.theme-atom-light-syntax  {
  // To style other content in the text editor's shadow DOM, use the ::shadow expression
  atom-text-editor::shadow {
    .line:nth-child(odd) {
      background-color:rgba(0, 0, 0,0.1);
    }
  }
}
`
