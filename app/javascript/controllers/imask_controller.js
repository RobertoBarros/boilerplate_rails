import { Controller } from "@hotwired/stimulus"
import IMask from 'imask';

// Connects to data-controller="imask"
export default class extends Controller {
  static values = { mask: String }

  connect() {
    const maskOptions = this.maskValue === 'currency' ? {
      mask: 'R$ num',  // Define a máscara com prefixo "R$"
      lazy: false,
      blocks: {
        num: {
          mask: Number,
          thousandsSeparator: '.',
          radix: ',',
          mapToRadix: ['.'],  // Permite que o usuário insira "." que será convertido para ","
          scale: 2,           // Define duas casas decimais
          signed: false,      // Não permite números negativos
          padFractionalZeros: true,  // Preenche zeros na fração para manter as duas casas decimais
          normalizeZeros: true,  // Remove zeros desnecessários no começo
          min: 0,  // Define o valor mínimo
          max: 9999999.99  // Define o valor máximo se necessário
        }
      }
    } : {
      mask: this.maskValue,
    };

    IMask(this.element, maskOptions);
  }
}
