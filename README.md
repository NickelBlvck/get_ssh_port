Добавьте UserParameter в конфигурацию Zabbix агента

Откройте файл конфигурации Zabbix агента (/etc/zabbix/zabbix_agentd.conf или /etc/zabbix/zabbix_agent2.conf для Agent2) и добавьте следующее:
UserParameter=ssh.port,/usr/local/bin/get_ssh_port.sh

Перезапустите Zabbix агент для применения изменений:
sudo systemctl restart zabbix-agent   # Для классического агента
sudo systemctl restart zabbix-agent2  # Для Agent2


В веб-интерфейсе Zabbix:
Имя: Порт SSH.
Тип: Zabbix агент.
Ключ: ssh.port.
Тип информации: Строка (для отображения порта как текста).
