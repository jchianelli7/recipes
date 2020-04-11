import React from "react";
import { render } from "react-dom";
import 'bootstrap/dist/css/bootstrap.min.css';
import $ from 'jquery';
import Popper from 'popper.js';
import 'bootstrap/dist/js/bootstrap.bundle.min';
import App from "../components/app";

// Using ReactDOM’s render method, rendered your App component in a div element, which was appended to the body of the page.
document.addEventListener("DOMContentLoaded", () => {
    render(<App/>,
        document.body.appendChild(document.createElement("div"))
    );
});