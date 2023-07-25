image_speed = 0;
image_index = image_number-1;

_score_to_submit = 0;

with (oScoreHealth) _score_to_submit = score;

LootLockerSubmitScore("16220", _score_to_submit);

show_debug_message(LLHighscoresCenteredFormatted());