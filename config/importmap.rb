# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin "popperjs", to: "https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
pin "bootstrap", to: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
pin "jquery", to: "https://code.jquery.com/jquery-3.7.1.min.js"
pin "jquery-ui", to: "https://code.jquery.com/ui/1.14.0/jquery-ui.min.js"
pin "font-awesome", to: "https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"

pin_all_from "app/javascript/controllers", under: "controllers"
