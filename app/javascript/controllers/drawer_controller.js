import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="drawer"
export default class extends Controller {

  static targets = [ "drawer", "panel" ]
  static values = { animate: Boolean }


  connect() {
    // this.panelTarget.classList.add("translate-x-full")
    // this.drawerTarget.classList.add('hidden')
    this.open()
  }

  open() {
    this.drawerTarget.classList.remove('hidden')

    if (this.animateValue) {
      // Força reflow para permitir a transição
      this.drawerTarget.offsetHeight
    }

    this.panelTarget.classList.remove("translate-x-full")
    this.panelTarget.classList.add("translate-x-0")
  }

  close() {
    this.panelTarget.classList.remove("translate-x-0")
    this.panelTarget.classList.add("translate-x-full")
    this.panelTarget.addEventListener('transitionend', () => {
      this.drawerTarget.classList.add('hidden')
    }, { once: true })
  }
}
