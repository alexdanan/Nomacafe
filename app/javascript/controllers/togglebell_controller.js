import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ "dropdownnotifs"]

  connect() {
    console.log("connect")
    document.body.addEventListener("click", () => {
      console.log("click event")
      this.dropdownnotifsTarget.classList.add('d-none');
      this.dropdownnotifsTarget.classList.remove('d-block');

    })
  };

  toggle(event) {
    event.stopPropagation()
    console.log("bla")
    this.dropdownnotifsTarget.classList.add('d-block');
    this.dropdownnotifsTarget.classList.remove('d-none');
  }

}
