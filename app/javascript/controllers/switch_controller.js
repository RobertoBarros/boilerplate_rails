// app/javascript/controllers/toggle_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["label", "switch", "checkbox"]

  connect() {
    // Adiciona os ouvintes para os eventos de focus e blur
    this.checkboxTarget.addEventListener('focus', this.handleFocus.bind(this))
    this.checkboxTarget.addEventListener('blur', this.handleBlur.bind(this))
    this.update()
  }

  toggle() {
    this.update()
  }

  update() {
    if (this.checkboxTarget.checked) {
      this.labelTarget.classList.remove('bg-gray-200')
      this.labelTarget.classList.add('bg-indigo-600')
      this.switchTarget.classList.remove('translate-x-0')
      this.switchTarget.classList.add('translate-x-5')
    } else {
      this.labelTarget.classList.remove('bg-indigo-600')
      this.labelTarget.classList.add('bg-gray-200')
      this.switchTarget.classList.remove('translate-x-5')
      this.switchTarget.classList.add('translate-x-0')
    }
  }

  handleFocus() {
    this.labelTarget.classList.add("outline-none", "ring-2", "ring-indigo-600", "ring-offset-2");
  }

  handleBlur() {
    this.labelTarget.classList.remove("outline-none", "ring-2", "ring-indigo-600", "ring-offset-2");
  }
}
