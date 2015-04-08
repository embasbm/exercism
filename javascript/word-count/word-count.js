function wordAnalyzer (string) {
  my_array = string.split(/[\s\t\n]+/);
  var counts = {};

  for(var i = 0; i< my_array.length; i++) {
      var key = "'"+my_array[i]+"'";
      // counts[key] = counts[key] ? counts[key]+1 : 1;
      if (counts[key])
      {
        counts[key] = counts[key]+1;
      }
      else
      {
        counts[key] = 1;
      }
  }
  return clean_my_hash(counts);
};

function clean_my_hash(my_hash)
{
  var new_hash = {}

  Object.keys(my_hash).forEach(function (key) {
    var new_key = key.replace(/'/g,'');
    new_hash[new_key] = my_hash[key];
  });
  return new_hash;
}

if (module) {
  module.exports = wordAnalyzer;
}
