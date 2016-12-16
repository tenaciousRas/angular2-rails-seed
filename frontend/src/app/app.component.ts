/// <reference path="../../../typings/globals/node/index.d.ts" />

import { Component } from '@angular/core';

const templateUrl = require('./app.component.html');
const templateCSSUrl = require('./app.component.css');

@Component({
  selector: 'app-root',
  templateUrl: templateUrl,
  styleUrls: [templateCSSUrl]
})
export class AppComponent {
  title = 'app works!';
}
