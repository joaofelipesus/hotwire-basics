import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="fighters-form"
export default class extends Controller {
  static targets = [
    'name', 'weightClass', 'fightRecord',
    'formButton', 'errorMessage'
  ]

  connect() {
    this.validatesRequiredFields()
  }

  validatesRequiredFields() {
    let isNameEmpty = this.nameTarget.value === ''
    let isWeightClassEmpty = this.weightClassTarget.value === ''
    let isFightRecordEmpty = this.fightRecordTarget.value === ''

    if (isNameEmpty || isWeightClassEmpty || isFightRecordEmpty) {
      this.formButtonTarget.disabled = true
      this.errorMessageTarget.style.display = 'block'
      this.formButtonTarget.classList.add('btn-disabled')
    } else {
      this.formButtonTarget.disabled = false
      this.errorMessageTarget.style.display = 'none'
      this.formButtonTarget.classList.remove('btn-disabled')
    }
  }
}
