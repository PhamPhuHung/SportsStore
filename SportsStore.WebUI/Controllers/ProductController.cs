using SportsStore.Domain.Abstract;
using SportsStore.WebUI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace SportsStore.WebUI.Controllers
{
    public class ProductController : Controller
    {
        private IProductRepository repository;
        private int PageSize = 4;
        public ProductController(IProductRepository repositoryParam)
        {
            repository = repositoryParam;
        }
        // GET: Product
        public ViewResult List(string category, int page = 1)
        {
            ProductListViewModel model = new ProductListViewModel
            {
                Products = repository.Products.Where(p => category == null || p.Category == category )
                                                    .OrderBy(p=>p.ProductID)
                                                    .Skip((page-1)*PageSize)
                                                    .Take(PageSize),
                PagingInfo = new PagingInfo
                {
                    TotalItems = repository.Products.Where(p => category == null || p.Category == category).Count(),
                    ItemsPerPage = PageSize,
                    CurrentPage = page,
                },
                CurrentCategory = category
            };
            return View(model);
        }
    }
}