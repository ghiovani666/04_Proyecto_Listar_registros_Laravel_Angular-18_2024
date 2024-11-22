import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { Router } from '@angular/router';
import { LoginSignupService } from './services/auth.service';

@Component({
  selector: 'app-login',
  standalone: true,
  imports: [CommonModule, FormsModule],
  templateUrl: './auth.component.html',
  styleUrl: './auth.component.css'
})
export class AuthComponent {
  regForm: boolean = false;

  href: string = '';
  loginFormValue: any = {};

  constructor(private router: Router, private loginService: LoginSignupService) { }

  ngOnInit(): void {
    this.href = this.router.url;
    if (this.href == '/login') {
      this.regForm = false;
    }
  }

  onSubmitLogin() {
    this.loginService.authLogin(this.loginFormValue.userEmail, this.loginFormValue.userPassword).subscribe(response => {
      sessionStorage.setItem("user_session_id", response.data.id);
      sessionStorage.setItem("token", response.access_token);
      sessionStorage.setItem("role", "admin");
      this.router.navigateByUrl('/product/list');//Referenciamos las  rutas
    }, error => {
      console.log("Error", error)
    })
  }
}
//3