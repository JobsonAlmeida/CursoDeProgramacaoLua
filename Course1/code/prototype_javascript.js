o = {a: 1, b:2}
p = {c: 10, __proto__: o}

console.log(p.a)

// A metatable associada ao metapetodo __index em lua fornece a mesma funcionalidade que o objeto associado 
// à propriedade __proto__
