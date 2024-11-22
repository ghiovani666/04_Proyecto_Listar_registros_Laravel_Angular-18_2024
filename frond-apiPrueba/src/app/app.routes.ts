import { Routes } from '@angular/router';
import { HomeComponent } from './features/home/home.component';//Home
import { AuthComponent } from './features/auth/auth.component';//Auth
import { PageNotFoundComponent } from './shared/ui/layout/not-found/page-not-found.component';//Not Found
import { AdminAuthGaurdService, } from './core/guards/auth-guard.service';//Servivces

export const routes: Routes = [
  { path: "", redirectTo: "home", pathMatch: "full" },
  { path: "home", component: HomeComponent },
  { path: "login", component: AuthComponent },
  {
    path: '', canActivate: [AdminAuthGaurdService], children: [
      {
        path: 'products',
        loadChildren: () => import('./features/product/product.routes'),//Product
      },
    ]
  },

  { path: "**", component: PageNotFoundComponent }
];;
