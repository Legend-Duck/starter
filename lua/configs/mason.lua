local options = {
  ui = {
    check_outdated_packages_on_open = false,
  },
}

return require('utils').ext('mason', options)
