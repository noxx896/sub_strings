#Substrings

dicctionary = ["es", "la", "como", "cual", "este", "te","bebida", "música", "perro", "cocina", "tabla", "el"]

def substrings(text, dicctionary)
  resultado_final = Hash.new
  dicctionary.reduce(Hash.new(0)) do |resultado, palabra|
    text.downcase.split(" ").each {
      |texto_palabra|
        texto_palabra.include?(palabra) ? resultado[palabra] += 1 : resultado[palabra] += 0
    }
    resultado_final = resultado
  end
  resultado_final.select { |palabra, contador| contador != 0}
end

puts substrings("Este es un texto de prueba. El perro rompe la tabla de la cocina", dicctionary)
