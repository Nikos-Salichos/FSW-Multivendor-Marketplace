export default {
    baseURL: 'https://localhost:44308/api/',
    api: {
        Login: 'Authenticate/login',
        GetProductsByVendor: 'Products/GetProductsByVendor',
        UpdateProductById: 'Products/UpdateProductById/',
        GetAllProducts: 'Products/GetAllProducts',
        Products: 'Products',
        DeleteProduct: 'Products/DeleteProduct/',
        GetTopFourProducts: 'Products/GetTopFourProducts',
        Categories: 'Categories/',
        GetByProductId: 'Products/GetByProductId/',
        GetCategoryStructure: 'Categories/GetCategoryStructure', //todo
        GetCategoryProducts: 'Products/GetCategoryProducts', // 3,6,7 categ 8
        SubCategoryTypes: 'SubCategoryTypes/',
        GetProductsByCategoryId: 'Products/GetProductsByCategoryId/',
        GetShoppingCart: 'ShoppingCarts/GetShoppingCart',
        ShoppingCarts: 'ShoppingCarts',
        ShoppingItems: 'ShoppingItems',
        Orders: 'ShoppingCarts/GetOrderInfoUser',
        ChangePassword: 'Authenticate/Change-password-LoggedIn-User',
        UserRegister: 'Authenticate/register-user',
        VendorRegister: 'Authenticate/register-vendor',
        GetCartInfo: 'ShoppingCarts/GetCartInfo',
        GetShoppingItems: 'ShoppingItems/GetShoppingItemsByCartId',
        Paid: 'ShoppingCarts/',
        ProductAttributes: 'ProductAttributes'
    },
    paypalclientid: 'ASUj0oCRn--sMFq6FZ7ZpCCEwUP6iU04hSUyWPNjYfeV3FyJknQWV7Lriu7KzkGqne902PUNyXpa0oLM',
    debugMode: false
};

/*
E-mail:
sb-bo6q94366123@personal.example.com

Password:
86&6rSvs
*/
