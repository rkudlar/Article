// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import "bootstrap"

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

<<<<<<< HEAD
=======
import "bootstrap"
import "../stylesheets/application"

document.addEventListener("turbolinks:load", () => {
  $('[data-toggle="tooltip"]').tooltip()
  $('[data-toggle="popover"]').popover()
})

>>>>>>> 5293dd27ba199ddab756264a4761ce63531eef6c
Rails.start()
Turbolinks.start()
ActiveStorage.start()
