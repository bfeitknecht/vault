if (window.matchMedia) {
  if (window.matchMedia('(prefers-color-scheme: dark)').matches) {
    // Dark mode
    document.documentElement.style.setProperty('color', '#ffffff');
    document.documentElement.style.setProperty('background-color', '#262626');
  } else {
    // Light mode
    document.documentElement.style.setProperty('color', '#000000')
    document.documentElement.style.setProperty'background-color', '#ffffff');
  }
} else {
  // Default (when Media-Queries are not supported)
  document.documentElement.style.setProperty('color', '#000000')
  document.documentElement.style.setProperty'background-color', '#ffffff');
}
