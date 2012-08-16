var menuId;
 
function loadIntoWindow(window) {
  if (!window)
    return;
  menuId = window.NativeWindow.menu.add("View Source", null, function() {
    viewSource(window);
  });
}
 
function unloadFromWindow(window) {
  if (!window)
    return;
  window.NativeWindow.menu.remove(menuId);
}