import { HttpClient, HttpHeaders, HttpParams } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, catchError, throwError } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class ApiService {
  httpOptions = {
    headers: new HttpHeaders({
      "Content-Type": "application/json",
      "Access-Control-Allow-Origin": "*",
      'Authorization': `Bearer ${sessionStorage.getItem("token")}`
    })
  }

  constructor(private http: HttpClient) { }

  private formatErrors(error: any) {
    return throwError(error.error)
  }

  get(path: string, params: HttpParams = new HttpParams()): Observable<Response> {
    return this.http.get<Response>(path, { headers: this.httpOptions.headers, params: params }).pipe(catchError(this.formatErrors))
  }

  post(path: string, body: Object = {}): Observable<any> {
    return this.http.post(path, JSON.stringify(body), this.httpOptions).pipe(catchError(this.formatErrors))
  }

}
