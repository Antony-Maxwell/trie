class TrieNode{
  final children ={};
  bool end = false;
}

class Trie{
  TrieNode root = TrieNode();

  void insert(String word){
    TrieNode node = root;
    for(int i=0;i<word.length;i=i+1){
      String letter = word[i];
      if(!node.children.containsKey(letter)){
        node.children[letter] = TrieNode();
      }
      node = node.children[letter];
    }
    node.end = true;
  }

  search(String word){
    TrieNode node = root;
    for(int i=0;i<word.length;i=i+1){
      // String letter = word[i];
      if(!node.children.containsKey(word[i])){
       false;
      }
      node = node.children[word[i]];
    }
    return node.end;
  }
}

void main(){
  Trie trie = Trie();
  trie.insert('apple');
  trie.insert('app');
  trie.insert('apricot');
  print(trie.search('apple'));
}