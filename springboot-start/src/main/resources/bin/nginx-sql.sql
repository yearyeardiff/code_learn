
-- -------------kl.test.9now.net---------cmapi.mwee.cn.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]-----------------msk---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'msk', 'msk', '', 'msk', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3003',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3003',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- [2]-----------------mboss---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'mboss', 'mboss', '', 'mboss', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3004',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3004',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- [3]-----------------mboss_pos---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'mboss_pos', 'mboss_pos', '', 'mboss_pos', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3005',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3005',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- [4]-----------------mboss_erp---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'mboss_erp', 'mboss_erp', '', 'mboss_erp', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3006',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3006',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- -------------kl.test.9now.net---------cmapi.mwee.cn.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';

-- -------------kl.test.9now.net---------kl.test.9now.net.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';

-- [2]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';

-- -------------kl.test.9now.net---------kl.test.9now.net.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';

-- [2]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';

-- -------------kl.test.9now.net---------cmapi.mwee.cn.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]-----------------msk---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'msk', 'msk', '', 'msk', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3003',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3003',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- [2]-----------------mboss---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'mboss', 'mboss', '', 'mboss', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3004',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3004',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- [3]-----------------mboss_pos---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'mboss_pos', 'mboss_pos', '', 'mboss_pos', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3005',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3005',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- [4]-----------------mboss_erp---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'mboss_erp', 'mboss_erp', '', 'mboss_erp', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3006',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3006',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- -------------kl.test.9now.net---------cmapi.mwee.cn.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';

-- -------------kl.test.9now.net---------kl.test.9now.net.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';

-- [2]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';

-- -------------kl.test.9now.net---------kl.test.9now.net.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';

-- [2]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';

-- -------------kl.test.9now.net---------cmapi.mwee.cn.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]-----------------msk---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'msk', 'msk', '', 'msk', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3003',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3003',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- [2]-----------------mboss---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'mboss', 'mboss', '', 'mboss', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3004',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3004',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- [3]-----------------mboss_pos---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'mboss_pos', 'mboss_pos', '', 'mboss_pos', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3005',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3005',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- [4]-----------------mboss_erp---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'mboss_erp', 'mboss_erp', '', 'mboss_erp', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3006',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3006',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- -------------kl.test.9now.net---------cmapi.mwee.cn.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';

-- -------------kl.test.9now.net---------kl.test.9now.net.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';

-- -------------kl.test.9now.net---------cmapi.mwee.cn.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]-----------------msk---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'msk', 'msk', '', 'msk', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3003',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3003',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- [2]-----------------mboss---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'mboss', 'mboss', '', 'mboss', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3004',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3004',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- [3]-----------------mboss_pos---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'mboss_pos', 'mboss_pos', '', 'mboss_pos', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3005',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3005',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- [4]-----------------mboss_erp---------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select 'mboss_erp', 'mboss_erp', '', 'mboss_erp', 1, 0, 1, 0,ch.id from c_host ch where ch.host='cmapi.mwee.cn';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.164','3006',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';
INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.1.33.165','3006',7 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='cmapi.mwee.cn';

-- -------------kl.test.9now.net---------cmapi.mwee.cn.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';

-- -------------kl.test.9now.net---------kl.test.9now.net.conf---------------
insert into c_host(host,gateway_id,host_desc,enable) select 'kl.test.9now.net',cg.id,'description','1' from c_gateway cg where cg.gateway_code = 'GATEWAY_SERVICE';


-- [1]------------------default----------------
insert into c_api_group (group_name, group_context, upstream_domain_name, upstream_service_id, enable_balancing, need_auth, lb_algo, enable, host_id) select '-default-', '-default-', '', '-default-', 1, 0, 1, 0,ch.id from c_host ch where ch.host='kl.test.9now.net';

INSERT INTO c_group_target (group_id, host, port, weight) SELECT ap.id,'10.0.21.175','8080',10 FROM c_api_group ap JOIN c_host ch ON ap.host_id=ch.id WHERE ch.host='kl.test.9now.net';
