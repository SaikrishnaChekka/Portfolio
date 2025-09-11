// Theme toggle and simple contact handler
(function(){
  const root = document.documentElement;
  const toggle = document.getElementById('themeToggle');
  const year = document.getElementById('year');
  const form = document.getElementById('contactForm');
  const status = document.getElementById('formStatus');

  year.textContent = new Date().getFullYear();

  // load theme from localStorage
  if(localStorage.getItem('theme') === 'dark') document.documentElement.classList.add('dark');

  toggle.addEventListener('click', ()=>{
    document.documentElement.classList.toggle('dark');
    const isDark = document.documentElement.classList.contains('dark');
    localStorage.setItem('theme', isDark ? 'dark' : 'light');
  });

  form.addEventListener('submit', (e)=>{
    e.preventDefault();
    const email = document.getElementById('email').value.trim();
    const message = document.getElementById('message').value.trim();
    if(!email || !message){
      status.textContent = 'Please fill out both fields.';
      return;
    }
    // For an easy static site, we'll just prepare a mailto link.
    const subject = encodeURIComponent('Portfolio contact from ' + email);
    const body = encodeURIComponent(message + '\n\n— ' + email);
    window.location.href = `mailto:schekka@rockets.utoledo.edu?subject=${subject}&body=${body}`;
  });
})();