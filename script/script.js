// data
const data =[
    {"product_id":1,"product_name":"T-Shirt","product_type":"Clothing","price":20,"quantity":50},
    {"product_id":2,"product_name":"Jeans","product_type":"Clothing","price":50,"quantity":30},
    {"product_id":3,"product_name":"Sneakers","product_type":"Footwear","price":80,"quantity":20},
    {"product_id":4,"product_name":"Socks","product_type":"Accessories","price":5,"quantity":100},
    {"product_id":5,"product_name":"Dress","product_type":"Clothing","price":70,"quantity":15}
];

const user = {
    name: "marta",
    user:"marta123",
    password:"12345"
}
// variables
const logo = document.querySelector(".logo")
const btnShop = document.querySelector(".collection__btn");
const section2Header = document.querySelector(".section--shop__header");
const section2 = document.querySelector(".section--shop");
const section1 = document.querySelector(".section--intro");
const itemsContainer = document.querySelector(".items")
const sortButtons = document.querySelectorAll(".section--shop__bar__filter__button")
const searchBar = document.querySelector(".section--shop__bar__search__input");
const btnCart = document.querySelectorAll(".nav__bar__item");
const cart = document.querySelector(".cart");
const collectionContainer = document.querySelector(".collection");
const cartItemsContainer = document.querySelector(".cart__items");
const btnBuy = document.querySelector(".cart__buy");
const cartHeader = document.querySelector(".cart__header");
const btnLog = document.querySelector(".login__btn")
const userName = document.querySelector(".login__username");
const userPass = document.querySelector(".login__password");

// login
btnLog.addEventListener("click",function(e){
    if(userName.value == user.user && userPass.value == user.password) {
        logo.textContent = `Welcome, ${user.name}!`
        userName.value = ""
        userPass.value = ""
    }
})

// html markup
const markupArr = data.map(el=> `
<div class="items__item">
<div class="items__item__img"><img src="${el.product_name}.jpg" alt="${el.product_name}"></div>  
<h4 class="items__item__name">${el.product_name}:${el.price}<span class="addToCart">🛒</span>/<span class="deleteItem">❌</span></h4>
</div> 
    `)
const markup= markupArr.join(",").replaceAll(",", " ");
itemsContainer.insertAdjacentHTML("afterbegin", markup)


// sort items
sortButtons.forEach(el=>el.addEventListener("click",function(e){
    if(e.target.textContent === "⬆"){
        const sortedData = data.sort((a, b) => a.product_name.localeCompare(b.product_name)).map(el=> `
        <div class="items__item">
        <div class="items__item__img"><img src="${el.product_name}.jpg" alt="${el.product_name}"></div>  
        <h4 class="items__item__name">${el.product_name}:${el.price}<span class="addToCart">🛒</span></h4>
</div> 
        `)
        const markup= sortedData.join(",").replaceAll(",", " ");
        itemsContainer.innerHTML = "";
        itemsContainer.insertAdjacentHTML("afterbegin", markup)
    }
    if(e.target.textContent === "⬇"){
        const sortedData = data.sort((a, b) => b.product_name.localeCompare(a.product_name)).map(el=> `
        <div class="items__item">
        <div class="items__item__img"><img src="${el.product_name}.jpg" alt="${el.product_name}"></div>  
        <h4 class="items__item__name">${el.product_name}:${el.price}<span class="addToCart">🛒</span></h4>
</div> 
        `)
        const markup= sortedData.join(",").replaceAll(",", " ");
        itemsContainer.innerHTML = "";
        itemsContainer.insertAdjacentHTML("afterbegin", markup)
    }
}))

// find items
searchBar.addEventListener("input",function(e){
    if(e.target.value!==""){
    const sortedData = data.filter(el=> el.product_name.toLowerCase().includes(e.target.value)).map(el=> `
    <div class="items__item">
            <div class="items__item__img"><img src="${el.product_name}.jpg" alt="${el.product_name}"></div>  
            <h4 class="items__item__name">${el.product_name}:${el.price}<span class="addToCart">🛒</span></h4>
    </div> 
    `)
    const markup= sortedData.join(",").replaceAll(",", " ");
    itemsContainer.innerHTML = "";
    itemsContainer.insertAdjacentHTML("afterbegin", markup)
    const btnAdd = document.querySelectorAll(".addToCart");
    btnAdd.forEach(el=>el.addEventListener("click", function(e){
        console.log(e.target.closest(".items__item").innerHTML)
        cartItemsContainer.insertAdjacentHTML("afterbegin", e.target.closest(".items__item").innerHTML)
    }))
}
    if(e.target.value===""){
    itemsContainer.insertAdjacentHTML("afterbegin", markup)
    const btnAdd = document.querySelectorAll(".addToCart");
    const btnDel = document.querySelectorAll(".deleteItem");
    btnAdd.forEach(el=>el.addEventListener("click", function(e){
        console.log(e.target.closest(".items__item").innerHTML)
        cartItemsContainer.insertAdjacentHTML("afterbegin", e.target.closest(".items__item").innerHTML)
    }))
    btnDel.forEach(el=>el.addEventListener("click", function(e){
        e.target.closest(".items__item").style.display = "none";
    }))
    }
})

// create add to cart button
const addToCart = document.querySelectorAll(".addToCart");
const deleteItem = document.querySelectorAll(".deleteItem");

// header buttons fuctionality
btnShop.addEventListener("click",function(){
    const headerCoords = section2Header.getBoundingClientRect()
    console.log(headerCoords);
    scroll({
        top:headerCoords.y,
        behavior:"smooth"
    });
})

// deleting item
deleteItem.forEach(el=> el.addEventListener(("click"),function(e){
    e.target.closest(".items__item").style.display = "none";
}))


// cart functionality
const cartItems = [];
addToCart.forEach(el=>el.addEventListener("click",function(e){
    const item = (e.target.closest(".items__item").cloneNode(true))
    console.log(item)
    // cartItemsContainer.insertAdjacentHTML("afterbegin", e.target.closest(".items__item").innerHTML)
    cartItemsContainer.append(item)

}))

btnCart.forEach(el=> el.addEventListener("click", function(e){
    if(e.target.textContent === "Shop"){
        const headerCoords = section2Header.getBoundingClientRect()
        scroll({
        top:headerCoords.y,
        behavior:"smooth"
    });
    }
    
    if(e.target.textContent=== "Check Out"){
        cart.classList.toggle("hidden");
        section2.classList.toggle("hidden");
        collectionContainer.classList.toggle("hidden");
        section1.style.clipPath = "none"
        const btnDel = document.querySelectorAll(".deleteItem")
        btnDel.forEach(el=>el.addEventListener("click", function(e){
            e.target.closest(".items__item").style.display = "none";
        }))
    }
}))

btnBuy.addEventListener("click",function(e){
    cartHeader.textContent = "Thank You For Your Purchase!"
    cartItemsContainer.innerHTML = "";
})

