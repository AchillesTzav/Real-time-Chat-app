import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["test"]
  close() {
    this.element.classList.add("hidden");
  }
}