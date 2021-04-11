-- Посмотрим количество свободных портов на всех коммутаторах
SELECT
 id,
 (SELECT model_name FROM switch_model WHERE switch_model.id = switch.switch_model_id) AS switch_model,
 address,
 ip_addr,
 (SELECT ports_count FROM switch_model WHERE switch_model.id = switch.switch_model_id) - 
 (SELECT COUNT(*) FROM customer WHERE customer.switch_id = switch.id) AS free_ports
FROM isp.switch
ORDER BY free_ports DESC;