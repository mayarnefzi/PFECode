import { ComponentFixture, TestBed } from '@angular/core/testing';

import { Report2Component } from './report2.component';

describe('Report2Component', () => {
  let component: Report2Component;
  let fixture: ComponentFixture<Report2Component>;

  beforeEach(() => {
    TestBed.configureTestingModule({
      declarations: [Report2Component]
    });
    fixture = TestBed.createComponent(Report2Component);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
