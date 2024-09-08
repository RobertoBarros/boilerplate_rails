import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select"

// Connects to data-controller="tom-select"
export default class extends Controller {
  connect() {
    const tom = new TomSelect(this.element,{
      maxOptions: null
    })
    tom.on('focus', () => {
      this.element.parentElement.querySelector('.ts-control').classList.add('border-indigo-600', 'border-2')
    })
    tom.on('blur', () => {
      this.element.parentElement.querySelector('.ts-control').classList.remove('border-indigo-600', 'border-2')
    })

  }
}
