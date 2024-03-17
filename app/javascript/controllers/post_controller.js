import { Controller } from "@hotwired/stimulus"
export default class extends Controller {
    static targets = ["usersList"]

    connect() {
        console.log("chamando api");
        this.loadUsers()
    }
}