import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["close"]
  close() {
    this.element.classList.add("hidden");
  }
}