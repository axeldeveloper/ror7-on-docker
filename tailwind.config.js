/** @type {import('tailwindcss').Config} */

module.exports = {
  content: [
    './app/views/**/*.html.erb',
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],

  theme: {
    extend: {},
    fontFamily: {
      body: ["Roboto Slab"],
    },
  },

  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/aspect-ratio'),
  ],
}