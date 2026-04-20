module HomeHelper
  FEATURES = [
    { icon: "fa-shield-halved", title: "Authentication",  desc: "Devise with email confirmation, password reset, and full account management." },
    { icon: "fa-user-gear",     title: "Admin Panel",     desc: "ActiveAdmin gives you a powerful admin interface with minimal configuration." },
    { icon: "fa-gears",         title: "Background Jobs", desc: "Sidekiq + Redis for reliable async processing and scheduled recurring tasks." },
    { icon: "fa-bolt",          title: "Hotwire",         desc: "Turbo + Stimulus for a fast, SPA-like experience without frontend complexity." },
    { icon: "fa-database",      title: "PostgreSQL",      desc: "Battle-tested relational database fully configured for all environments." },
    { icon: "fa-cube",          title: "Docker Ready",    desc: "docker-compose.yml ships with the template — full stack up in one command." },
  ].freeze
end
