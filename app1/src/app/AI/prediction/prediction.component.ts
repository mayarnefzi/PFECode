import { Component } from '@angular/core';

@Component({
  selector: 'app-prediction',
  templateUrl: './prediction.component.html',
  styleUrls: ['./prediction.component.css']
})
export class PredictionComponent {





  showIframe2: boolean = false; // La deuxième iframe est cachée par défaut

  toggleIframe() {
    this.showIframe2 = !this.showIframe2; // Basculer l'affichage de la deuxième iframe
  }
















}
