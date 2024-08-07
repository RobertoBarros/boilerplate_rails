import { Controller } from "@hotwired/stimulus";
import { useClickOutside } from "stimulus-use";
import { enter, leave } from "el-transition";

// Connects to data-controller="sidebar"
export default class extends Controller {
  static targets = ["panel", "backdrop", "close", "container"];

  connect() {
    useClickOutside(this, { element: this.panelTarget });
  }

  open() {
    this.containerTarget.classList.remove("hidden");
    enter(this.backdropTarget);
    enter(this.closeTarget);
    enter(this.panelTarget);
  }

  close() {
    Promise.all([
      leave(this.backdropTarget),
      leave(this.panelTarget),
      leave(this.closeTarget),
    ]).then(() => {
      this.containerTarget.classList.add("hidden");
    });
  }

  clickOutside(event) {
    this.close();
  }
}
