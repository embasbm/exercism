exports.compute = function (bits1, bits2) {
    var hamming_distance = 0 ;
    if (bits1.length !== bits2.length)
    {
      throw new Error("DNA strands must be of equal length.");
    } else if (bits1 === bits2){
      return hamming_distance;
    } else {
      for (var index = 0; index < bits1.length; index++)
      {
        if (bits1[index] !== bits2[index])
        {
          hamming_distance++;
        }
      }      
    }
    return hamming_distance;
};