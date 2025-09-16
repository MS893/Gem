

def word_counter(corpus, dictionary)
  word_counts = {} # Initialise un hash vide pour stocker les comptes

  # Parcourt chaque mot du dictionnaire
  dictionary.each do |word|
    # Utilise une expression régulière pour trouver toutes les occurrences du mot dans le corpus
    occurrences = corpus.scan(/#{Regexp.escape(word)}/i)    # Le drapeau 'i' rend la recherche insensible à la casse
    count = occurrences.length

    # Ajoute au hash seulement si le compte est supérieur à 0
    word_counts[word] = count if count > 0
  end

  word_counts # Retourne le hash contenant les mots et leurs comptes (uniquement > 0)
end


# tests avec shakespeare.txt et swearWords.txt
corpus = File.read "shakespeare.txt"
dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]
puts word_counter(corpus, dictionnary)

swearWords = File.readlines "swearWords.txt"
puts word_counter(corpus, swearWords)
