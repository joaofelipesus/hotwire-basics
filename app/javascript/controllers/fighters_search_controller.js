import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="fighters-search"
export default class extends Controller {
  static targets = ['searchForm']

  search () {
    this.searchFormTarget.requestSubmit()
  }
}
