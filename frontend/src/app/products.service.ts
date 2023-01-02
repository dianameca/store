import { Injectable } from '@angular/core';
import { HttpClient, HttpParams } from '@angular/common/http';
import { BehaviorSubject } from 'rxjs';
import { environment } from 'src/environments/environment';
import { Product } from './product.model';


@Injectable({
  providedIn: 'root'
})

export class ProductsService {
  products = new BehaviorSubject<Product[]>([]);

  constructor(private httpClient: HttpClient) {}

  getProducts() {
    return this.httpClient.get(`${environment.backendUrl}/products`);
  }
}
