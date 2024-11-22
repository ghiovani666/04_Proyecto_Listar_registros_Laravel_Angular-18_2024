import { Routes } from '@angular/router';

export default [
  {
    path: 'list',
    loadComponent: () => import('./components/product-list/product-list.component'),
  },

] as Routes;
