import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-form"
export default class extends Controller {
  static targets = ["loginForm", "registerForm"];

  connect() {
    this.showLogin();
  }

  showLogin() {
    this.loginFormTarget.classList.remove("hidden");
    this.registerFormTarget.classList.add("hidden");
  }

  showRegister() {
    this.registerFormTarget.classList.remove("hidden");
    this.loginFormTarget.classList.add("hidden");
  }
}
