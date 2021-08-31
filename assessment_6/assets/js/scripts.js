(function () {
    var Module = {
        Data: {
            button: document.getElementById("btn")
        },
        Init: function () {
            this.Events.eventHandler();
        },
        Methods: {
            changeButtonText: function () {
                var text = document.getElementById("txtbutton").value;
                if (text.trim().lenght > 0) {
                    Module.Data.button.innerHTML = text;
                }
            }
        },
        Events: {
            eventHandler() {
                Module.Data.button.addEventListener("click", Module.Methods.changeButtonText)
            }
        }
    }

    Module.Init();
})();