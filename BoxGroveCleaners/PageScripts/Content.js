$(document).ready(function () {
    SetupSummerNote();
});

function UpdateHiddenAnswer() {
    var $hiddenAnswer = $('#pnlFAQsForm [type="hidden"]');
    var value = $('#txtAddNewNote').code();
    var encodedValue = encodeURIComponent(value);

    $hiddenAnswer.val(encodedValue);
}

function SetupSummerNote() {
    $('#txtAddNewNote').summernote({
        toolbar: [
            ['style', ['bold', 'italic', 'underline', 'clear']]
            , ['para', ['ul', 'ol']]
        ]
    });
}