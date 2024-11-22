import { CommonModule } from '@angular/common';
import { Component, OnInit } from '@angular/core';
import { Router, RouterLink } from '@angular/router';

@Component({
  selector: 'app-header',
  standalone: true,
  imports: [CommonModule, RouterLink],
  templateUrl: './header.component.html',
  styleUrl: './header.component.css'
})
export class HeaderComponent implements OnInit {
  logged_in: boolean = false;

  constructor(private router: Router) { }

  ngOnInit(): void {
  }

  ngDoCheck() {
    const user_sesson_id = sessionStorage.getItem("user_session_id");
    if(user_sesson_id){
      this.logged_in = true;
    }
  }
  
  logout(){
    sessionStorage.removeItem("user_session_id");
    sessionStorage.removeItem("role");
    this.router.navigateByUrl('/login');
    location.reload();
  }
}
