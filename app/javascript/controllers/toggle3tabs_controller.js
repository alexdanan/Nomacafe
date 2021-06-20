import { Controller } from "stimulus";

export default class extends Controller {
  static targets = [ "tab1", "tab2", "tab3",
  "tab1content", "tab2content", "tab3content"]

  initialize() {
    this.tab1contentTarget.classList.remove('ninja');
    this.tab2contentTarget.classList.add("ninja");
    this.tab3contentTarget.classList.add("ninja");


    this.tab1Target.classList.add("active");
    this.tab2Target.classList.remove("active");
    this.tab3Target.classList.remove("active");

  };

  tab1cont() {
    this.tab1contentTarget.classList.remove('ninja');
    this.tab2contentTarget.classList.add("ninja");
    this.tab3contentTarget.classList.add("ninja");

    this.tab1Target.classList.add("active");
    this.tab2Target.classList.remove("active");
    this.tab3Target.classList.remove("active");

  };

  tab2cont() {
    this.tab1contentTarget.classList.add('ninja');
    this.tab2contentTarget.classList.remove("ninja");
    this.tab3contentTarget.classList.add("ninja");

    this.tab1Target.classList.remove("active");
    this.tab2Target.classList.add("active");
    this.tab3Target.classList.remove("active");

  };

  tab3cont() {
    this.tab1contentTarget.classList.add('ninja');
    this.tab2contentTarget.classList.add("ninja");
    this.tab3contentTarget.classList.remove("ninja");

    this.tab1Target.classList.remove("active");
    this.tab2Target.classList.remove("active");
    this.tab3Target.classList.add("active");

  };
}


