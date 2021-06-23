import { Controller } from "stimulus"

export default class extends Controller {
    static targets = ["slot"]

    select(e) {
        this.slotTargets.forEach(slot => {
            slot.classList.remove("d-block")
            slot.classList.add("d-none")
        })
        this.slotTargets[e.target.dataset.index].classList.toggle("d-none")
        this.slotTargets[e.target.dataset.index].classList.toggle("d-block")
    }
}


