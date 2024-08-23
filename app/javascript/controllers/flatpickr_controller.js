import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
import "flatpickr/dist/l10n/pt"
import IMask from 'imask';


// Connects to data-controller="flatpickr"
export default class extends Controller {
  static targets = [ "input" ]
  connect() {
    const mask = IMask(this.inputTarget, {
      mask: '00/00/0000',
      lazy: false, // para aplicar a máscara mesmo com o input vazio
    });

    flatpickr(this.element, {
      dateFormat: "d/m/Y",
      locale: "pt",
      wrap: true,
      allowInput: true,
      clickOpens: false,
      onChange: function(selectedDates, dateStr, instance) {
        this.element.value = dateStr;
        mask.updateValue(); // força a atualização da máscara com o novo valor
      }
    });
  }
}
