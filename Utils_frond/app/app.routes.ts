import { Routes } from '@angular/router';
import { HomeComponent } from './features/home/home.component';
import { AuthComponent } from './features/auth/auth.component';
import { PageNotFoundComponent } from './shared/ui/layout/not-found/page-not-found.component';
import { AdminAuthGaurdService, } from './core/guards/auth-guard.service';

export const routes: Routes = [
  { path: "", redirectTo: "home", pathMatch: "full" },
  { path: "home", component: HomeComponent },
  { path: "login", component: AuthComponent },

  //Acceso admin
  {
    path: '', canActivate: [AdminAuthGaurdService], children: [
      {
        path: 'product',
        loadChildren: () => import('./features/product/product.routes'),
      },
    ]
  },

  { path: "**", component: PageNotFoundComponent }
];

//1