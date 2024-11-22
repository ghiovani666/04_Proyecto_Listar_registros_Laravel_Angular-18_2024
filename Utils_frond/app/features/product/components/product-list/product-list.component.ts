import { Component, OnInit, inject, } from '@angular/core';
import { toSignal } from '@angular/core/rxjs-interop';
import { ProductService, } from '../../services/product.service';
import { NgFor, CommonModule } from '@angular/common';
import { switchMap, BehaviorSubject } from "rxjs";
import { FormsModule, ReactiveFormsModule, Validators } from '@angular/forms';

@Component({
  selector: 'app-product-list',
  standalone: true,
  imports: [NgFor, CommonModule, FormsModule, ReactiveFormsModule],
  templateUrl: './product-list.component.html',
  styles: ``,
})

export default class ProductListComponent implements OnInit {

  private refresh$ = new BehaviorSubject<void>(undefined);
  constructor() { }

  ngOnInit(): void { }

  productService = inject(ProductService);
  dataList$ = this.refresh$.pipe(switchMap(() => this.productService.getProducts()))
  dataSignal = toSignal(this.dataList$)

  //Llama al refresh
  getAllProduct() {
    this.refresh$.next();
  }

}
