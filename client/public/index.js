import { Elm } from "../src/Main.elm";
import "@fortawesome/fontawesome-pro/css/all.css";
import "../src/styles/app.scss";

Elm.Main.init({
  node: document.querySelector("#app"),
});
