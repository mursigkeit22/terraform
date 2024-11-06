
Создать сеть, подсеть и ВМ: папка vm_in_new_network

Сеть и подсеть уже есть, нужно создать новую ВМ в подсети: папка vm_in_existing_network



### Подготовка

- установленный Terraform

- Облако и каталог в Yandex Cloud

    Консоль управления Yandex Cloud: https://console.cloud.yandex.ru/

- Командная строка Yandex Cloud

    Как установить: https://cloud.yandex.com/ru/docs/cli/quickstart

    Проверить настройки профиля CLI:
    ```
    yc config list
    ```
    Нужно убедиться, что id каталога в профиле совпадает с id каталога, в котором планируется создать ВМ.


- публичный и приватный ssh-ключи