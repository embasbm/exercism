// I had to google this solution because what I was tryin is just not working,
// So, would appreciate any other solution so I can compare and get it better :)
// If someone explains to me why is this made this way, instead of the default solution, that would be great.
// I had to google it so I can go further, more than one day in the same problem is frustrating :(
module.exports = function () {
  'use strict';

  var isSilence, isYelling, isQuestion;

  isSilence = function (message) {
    return !message.match(/\S/);
  };

  isYelling = function (message) {
    return !message.match(/[a-z]/);
  };

  isQuestion = function (message) {
    return !message.match(/[^?]$/);
  };

  return {
    hey: function (message) {
      if (isSilence(message)) { return 'Fine. Be that way!'; }
      if (isYelling(message)) { return 'Woah, chill out!'; }
      if (isQuestion(message)) { return 'Sure.'; }
      return 'Whatever.';
    }
  };
};