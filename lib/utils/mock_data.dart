const List<Map<String, dynamic>> mockQuestions = [
  {
    "type": "fill",
    "questionText": "What is the capital of France?",
    "correctAnswer": "Paris"
  },
  {
    "type": "image_match",
    "questionText": "Select the image that represents the Eiffel Tower.",
    "options": ["Image 1", "Image 2", "Image 3", "Image 4"],
    "imageUrl": "https://example.com/eiffel_tower.jpg",
    "correctAnswer": "Image 2"
  },
  {
    "type": "audio",
    "questionText": "Listen to the audio and identify the animal sound.",
    "options": ["Dog", "Cat", "Cow", "Sheep"],
    "audioUrl": "https://example.com/animal_sound.mp3",
    "correctAnswer": "Cow"
  },
  {
    "type": "sentence",
    "questionText": "Complete the sentence: The quick brown ___ jumps over the lazy dog.",
    "correctAnswer": "fox"
  }
];
