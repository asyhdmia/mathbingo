// music.js
let bgMusic;

function initMusic() {
  // Prevent multiple audio tags
  if (!document.getElementById('globalMusic')) {
    bgMusic = document.createElement('audio');
    bgMusic.id = 'globalMusic';
    bgMusic.src = 'bg.mp3';
    bgMusic.loop = true;
    bgMusic.volume = 0.1;
    document.body.appendChild(bgMusic);
  } else {
    bgMusic = document.getElementById('globalMusic');
  }

  const savedState = localStorage.getItem('musicOn');
  const isOn = savedState === null || savedState === 'true';

  if (isOn) {
    bgMusic.play().catch(() => {
      // May be blocked until user interaction
      console.warn("Autoplay blocked, will play on user interaction.");
    });
  } else {
    bgMusic.pause();
  }

  return isOn;
}

function toggleMusic(btn) {
  const isOn = !bgMusic.paused;

  if (isOn) {
    bgMusic.pause();
    localStorage.setItem('musicOn', 'false');
    if (btn) btn.innerText = '🔇 Sound Off';
  } else {
    bgMusic.play();
    localStorage.setItem('musicOn', 'true');
    if (btn) btn.innerText = '🔊 Sound On';
  }
}

function updateToggleButton(btn) {
  const isOn = !bgMusic.paused;
  btn.innerText = isOn ? '🔊 Sound On' : '🔇 Sound Off';
}
