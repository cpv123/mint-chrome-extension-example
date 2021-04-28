const STORAGE_COUNT_KEY = 'mint_count'

function chromeGetCount() {
  return new Promise((resolve) => {
    window.chrome.storage.sync.get(STORAGE_COUNT_KEY, (storage) => {
      resolve(storage[STORAGE_COUNT_KEY] || 0);
    });
  });
}

  
function chromeSetCount(count) {
  return new Promise((resolve) => {
    window.chrome.storage.sync.set({ [STORAGE_COUNT_KEY]: count }, () => {
      resolve();
    });
  });
}