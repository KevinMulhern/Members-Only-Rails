import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["newButton", "form"];

  toggle(event) {
    event.preventDefault()
    this.toggleForm()
  }

  toggleForm() {
    this.formTarget.classList.toggle('hidden');
    this.newButtonTarget.classList.toggle('hidden')
  }
}
