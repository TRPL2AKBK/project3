document.addEventListener('DOMContentLoaded', function () {
    document.getElementById('exampleInputMatakuliah1').addEventListener('change', function () {
        var selectedOption = this.options[this.selectedIndex];
        var prodiId = selectedOption.getAttribute('data-prodi-id');
        console.log('Selected Prodi ID:', prodiId);
    });
});
