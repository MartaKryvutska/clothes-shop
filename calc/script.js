const reset = document.querySelector(".reset")
const sign = document.querySelector(".sign")
const percantage = document.querySelector(".percentage")
const divide = document.querySelector(".divide")
const seven = document.querySelector(".seven")
const eight = document.querySelector(".eight")
const nine = document.querySelector(".nine")
const multiply = document.querySelector(".multiply")
const four = document.querySelector(".four")
const five = document.querySelector(".five")
const six = document.querySelector(".six")
const minus = document.querySelector(".minus")
const one = document.querySelector(".one")
const two = document.querySelector(".two")
const three = document.querySelector(".three")
const add = document.querySelector(".add")
const zero = document.querySelector(".zero")
const decimal = document.querySelector(".decimal")
const equal = document.querySelector(".equal")

const screen = document.querySelector(".screen")

// displaying symbols
const displaySymbol = function (symbol) {
    symbol.addEventListener("click", function () {
        screen.textContent += +symbol.textContent

    })
}
minus.addEventListener("click", function () {
    screen.textContent += minus.textContent

})
add.addEventListener("click", function () {
    screen.textContent += add.textContent

})
displaySymbol(seven)
displaySymbol(eight)
displaySymbol(nine)
displaySymbol(multiply)
displaySymbol(four)
displaySymbol(five)
displaySymbol(six)
// displaySymbol(minus)
displaySymbol(one)
displaySymbol(two)
displaySymbol(three)
// displaySymbol(add)
displaySymbol(zero)
displaySymbol(decimal)

// calculating

equal.addEventListener("click", function () {
    console.log(screen.textContent)

})