document.addEventListener('DOMContentLoaded', () => {
    // Вход по Enter
    const loginForm = document.getElementById('loginForm');
    if (loginForm) {
        loginForm.addEventListener('keypress', (e) => {
            if (e.key === 'Enter') {
                loginForm.submit();
            }
        });
    }

    // Обработка формы внесения РПО
    const rpoForm = document.getElementById('rpoForm');
    if (rpoForm) {
        rpoForm.addEventListener('submit', async (e) => {
            e.preventDefault();
            const response = await fetch('/rpo_entry', {
                method: 'POST',
                body: new FormData(rpoForm)
            });
            const result = await response.json();
            alert(result.message);
            rpoForm.reset();
        });
    }

    // Цвета для выпадающих списков в "Факт выполнения"
    const selects = document.querySelectorAll('select');
    selects.forEach(select => {
        updateSelectColor(select);
        select.addEventListener('change', () => updateSelectColor(select));
    });
});

function updateSelectColor(select) {
    select.className = 'gray'; // Сброс класса
    if (select.value === 'Оформление') select.classList.add('gray');
    else if (select.value === 'Подготовка') select.classList.add('blue');
    else if (select.value === 'Проведение') select.classList.add('yellow');
    else if (select.value === 'Завершено') select.classList.add('green');
    else if (select.value === 'Срыв') select.classList.add('red');
}