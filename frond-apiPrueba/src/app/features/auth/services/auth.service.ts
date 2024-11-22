import { Injectable } from '@angular/core';
import { ApiService } from '../../../core/services/api.service';
import { Observable } from 'rxjs';
import { environment } from '../../../../environments/environment';

@Injectable({
  providedIn: 'root'
})
export class LoginSignupService {

  constructor(private apiService: ApiService) { }

  authLogin(user_name: any, password: any): Observable<any> {
    const varUser = {
      email: "admin@gmail.com",
      password: "123456789"
    }
    return this.apiService.post(environment.server_url + '/login', varUser)
  }

}
//4