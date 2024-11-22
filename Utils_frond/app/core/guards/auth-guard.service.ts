import { Injectable } from '@angular/core';
import { Router, ActivatedRouteSnapshot, RouterStateSnapshot, CanActivate } from '@angular/router';

//login
@Injectable({
  providedIn: 'root'
})
export class AdminAuthGaurdService implements CanActivate {
  constructor(private router: Router) { }
  canActivate(route: ActivatedRouteSnapshot, state: RouterStateSnapshot) {
    let role = sessionStorage.getItem("role");
    if (role == 'admin') {
      return true; 
    } else {
      this.router.navigate(["/login"]);
      return false;
    }
  }
}
