/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./index.html", "./src/**/*.bs.mjs"],
  theme: {
    extend: {
      fontFamily: {
        logo: ["Pacifico", "sans-serif"],
      },
    },
  },
  plugins: [],
};
