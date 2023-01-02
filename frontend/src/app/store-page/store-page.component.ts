import { Component, OnInit } from '@angular/core';
import { ProductsService } from '../products.service';


@Component({
  selector: 'app-store-page',
  templateUrl: './store-page.component.html',
  styleUrls: ['./store-page.component.css']
})

export class StorePageComponent implements OnInit {
  products: any;

  constructor(private service:ProductsService) {}

  ngOnInit() {
    this.service.getProducts()
      .subscribe(response => {
        this.products = response;
    });
  }
}
