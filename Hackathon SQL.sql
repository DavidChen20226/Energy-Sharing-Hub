-- Drop Tables
DROP TABLE Device_Usage_Log;
DROP TABLE devices;
DROP TABLE users;
DROP TABLE energy_costs;
-- Create devices table
CREATE TABLE devices (
    device_id VARCHAR2(50) PRIMARY KEY,
    device_name VARCHAR2(100),
    device_type VARCHAR2(50),
    location VARCHAR2(100),
    manufacturer VARCHAR2(100),
    purchase_date DATE,
    wattage NUMBER
);

-- Create users table
CREATE TABLE users (
    user_id NUMBER PRIMARY KEY,
    username VARCHAR2(50),
    department VARCHAR2(100)
);

-- Create Device_Usage_Log table
CREATE TABLE Device_Usage_Log (
    log_id NUMBER PRIMARY KEY,
    device_id VARCHAR2(50),
    user_id NUMBER,
    usage_type VARCHAR2(50),
    start_date TIMESTAMP,
    duration NUMBER,
    energy_consumed NUMBER(4,2),
    notes VARCHAR2(4000),
    FOREIGN KEY (device_id) REFERENCES devices(device_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

-- Create energy_costs table
CREATE TABLE energy_costs (
    entry_id NUMBER PRIMARY KEY,
    bill_date DATE,
    cost_per_kwh NUMBER(4,2),
    notes VARCHAR2(4000)
);


-- Inserting Users
INSERT INTO users VALUES(7774037802,'hsainz0','Biology');
INSERT INTO users VALUES(643538704,'vriddles1','Physics');
INSERT INTO users VALUES(9706128743,'mbenninger2','History');
INSERT INTO users VALUES(3472543272,'afebre3','History');
INSERT INTO users VALUES(4075519716,'dgiraldez4','English');
INSERT INTO users VALUES(9392636873,'ttorpie5','Computer Science');
INSERT INTO users VALUES(1821229118,'lpage6','Biology');
INSERT INTO users VALUES(9107058535,'jchoake7','Biology');
INSERT INTO users VALUES(6337214145,'rseagrave8','Computer Science');
INSERT INTO users VALUES(7499129926,'dbarkess9','Physics');
INSERT INTO users VALUES(5994911852,'dlinnella','Physics');
INSERT INTO users VALUES(6270514207,'mbowerb','Physics');
INSERT INTO users VALUES(5923152797,'kschefflerc','Computer Science');
INSERT INTO users VALUES(2756171379,'klinked','History');
INSERT INTO users VALUES(3572334179,'fvandecastelee','English');
INSERT INTO users VALUES(7601669467,'rcaultonf','History');
INSERT INTO users VALUES(1165027283,'cbozwardg','English');
INSERT INTO users VALUES(3579823132,'bmarringtonh','Physics');
INSERT INTO users VALUES(7527981822,'ahulburti','Biology');
INSERT INTO users VALUES(3511729157,'cewensj','Mathematics');
INSERT INTO users VALUES(109007557,'moheneghank','Computer Science');
INSERT INTO users VALUES(7286391739,'ablowingl','History');
INSERT INTO users VALUES(5513863278,'ccliffem','History');
INSERT INTO users VALUES(1038201330,'othewlessn','Mathematics');
INSERT INTO users VALUES(9785216942,'mmacguffogo','English');
INSERT INTO users VALUES(8496897605,'vgebbep','English');
INSERT INTO users VALUES(6673773618,'kpainterq','Mathematics');
INSERT INTO users VALUES(3764582170,'rleggr','English');
INSERT INTO users VALUES(3050783850,'pcranneys','Mathematics');
INSERT INTO users VALUES(8210706845,'gstannardt','Biology');
INSERT INTO users VALUES(7647310100,'ogoldhawku','Biology');
INSERT INTO users VALUES(3425297651,'mpellingarv','Mathematics');
INSERT INTO users VALUES(5103122405,'nantoschw','History');
INSERT INTO users VALUES(2251918892,'bfrankissx','Mathematics');
INSERT INTO users VALUES(3883103381,'nshilladayy','Physics');
INSERT INTO users VALUES(3568567288,'sfouracresz','Biology');
INSERT INTO users VALUES(8509549486,'mmcluckie10','Physics');
INSERT INTO users VALUES(6351608023,'kdeverose11','History');
INSERT INTO users VALUES(993969399,'bedmenson12','History');
INSERT INTO users VALUES(7212247359,'jhinks13','Biology');
INSERT INTO users VALUES(9898026286,'tdesseine14','English');
INSERT INTO users VALUES(9252332707,'swilbor15','Mathematics');
INSERT INTO users VALUES(7716144421,'bdamrel16','Mathematics');
INSERT INTO users VALUES(3188923074,'ngass17','Computer Science');
INSERT INTO users VALUES(6574893089,'skyne18','Mathematics');
INSERT INTO users VALUES(3319178040,'browdell19','Biology');
INSERT INTO users VALUES(5835913621,'cskillen1a','English');
INSERT INTO users VALUES(3476811778,'aeasom1b','History');
INSERT INTO users VALUES(653205260,'oevitts1c','Physics');
INSERT INTO users VALUES(4921119783,'rpiller1d','Computer Science');

INSERT INTO devices VALUES('01HWDZVCN2YDPQNKF4CNC06M8J','laptop_23','laptop','Lecture Hall 2','Samsung',TO_DATE('27/04/2023 05:33:05', 'DD/MM/YYYY HH24:MI:SS'),671);
INSERT INTO devices VALUES('01HWDZVCN7V4XPMW086Q2S8P71','monitor_54','monitor','Lecture Hall 1','Asus',TO_DATE('04/01/2021 04:30:37', 'DD/MM/YYYY HH24:MI:SS'),924);
INSERT INTO devices VALUES('01HWDZVCN8GSW0QQ64AP4VBNWT','lights_38','lights','Lab 202','Asus',TO_DATE('22/02/2022 11:01:45', 'DD/MM/YYYY HH24:MI:SS'),677);
INSERT INTO devices VALUES('01HWDZVCN916MSAEPNME70EBQJ','monitor_76','monitor','Auditorium','Apple',TO_DATE('22/02/2022 04:47:32', 'DD/MM/YYYY HH24:MI:SS'),129);
INSERT INTO devices VALUES('01HWDZVCNA9VCN3V94QFMZTZZ2','desktop computer_99','desktop computer','Lab 203','HP',TO_DATE('26/04/2021 19:18:58', 'DD/MM/YYYY HH24:MI:SS'),292);
INSERT INTO devices VALUES('01HWDZVCNFP3NTDD59QEWEV0MC','scanner_40','scanner','Lecture Hall 3','Samsung',TO_DATE('09/05/2023 00:00:41', 'DD/MM/YYYY HH24:MI:SS'),927);
INSERT INTO devices VALUES('01HWDZVCNGZBG896JDKAEPFTBZ','lights_95','lights','Auditorium','HP',TO_DATE('25/01/2023 13:45:19', 'DD/MM/YYYY HH24:MI:SS'),824);
INSERT INTO devices VALUES('01HWDZVCNG8SB5PZJR5MS3QSPW','desktop computer_54','desktop computer','Auditorium','Lenovo',TO_DATE('12/09/2021 06:50:48', 'DD/MM/YYYY HH24:MI:SS'),177);
INSERT INTO devices VALUES('01HWDZVCNM7BV2YXEAG0N3DFEB','laptop_80','laptop','Lecture Hall 4','LG',TO_DATE('12/01/2023 15:49:44', 'DD/MM/YYYY HH24:MI:SS'),224);
INSERT INTO devices VALUES('01HWDZVCNP614E3FRJ9SA76HZ1','lights_10','lights','Lecture Hall 2','Sony',TO_DATE('11/11/2022 11:59:18', 'DD/MM/YYYY HH24:MI:SS'),901);
INSERT INTO devices VALUES('01HWDZVCNT1F6FCTBRPGFK5X33','lights_83','lights','Lecture Hall 2','HP',TO_DATE('21/12/2022 11:29:03', 'DD/MM/YYYY HH24:MI:SS'),172);
INSERT INTO devices VALUES('01HWDZVCNWAST3ZRRPE076MPRY','projector_12','projector','Lecture Hall 3','LG',TO_DATE('22/11/2023 11:45:22', 'DD/MM/YYYY HH24:MI:SS'),157);
INSERT INTO devices VALUES('01HWDZVCNXEYKAD588JRFXAAZA','monitor_56','monitor','Auditorium','Acer',TO_DATE('18/12/2021 06:04:42', 'DD/MM/YYYY HH24:MI:SS'),383);
INSERT INTO devices VALUES('01HWDZVCP2FNDN75FDHNCFTQAY','scanner_79','scanner','Lecture Hall 3','Microsoft',TO_DATE('06/12/2021 14:26:06', 'DD/MM/YYYY HH24:MI:SS'),209);
INSERT INTO devices VALUES('01HWDZVCP3D4H83E943KGB0VQ1','desktop computer_40','desktop computer','Lecture Hall 4','Sony',TO_DATE('07/10/2022 05:46:04', 'DD/MM/YYYY HH24:MI:SS'),217);
INSERT INTO devices VALUES('01HWDZVCP7P31NFGZAGKQ26F2X','monitor_65','monitor','Lecture Hall 3','Lenovo',TO_DATE('22/01/2022 22:47:59', 'DD/MM/YYYY HH24:MI:SS'),794);
INSERT INTO devices VALUES('01HWDZVCP91VTA8JCVMFKBPBR7','scanner_9','scanner','Lecture Hall 3','Microsoft',TO_DATE('24/11/2022 04:12:27', 'DD/MM/YYYY HH24:MI:SS'),626);
INSERT INTO devices VALUES('01HWDZVCPD28MZSRK37559TGT1','printer_46','printer','Lab 202','Acer',TO_DATE('19/05/2022 15:25:08', 'DD/MM/YYYY HH24:MI:SS'),400);
INSERT INTO devices VALUES('01HWDZVCPF2HF5BA8J42A2XQM5','desktop computer_42','desktop computer','Lecture Hall 2','Sony',TO_DATE('16/07/2022 09:21:31', 'DD/MM/YYYY HH24:MI:SS'),565);
INSERT INTO devices VALUES('01HWDZVCPG69KY62XSW8N0G6R1','monitor_12','monitor','Lab 203','Sony',TO_DATE('11/06/2023 17:25:25', 'DD/MM/YYYY HH24:MI:SS'),441);
INSERT INTO devices VALUES('01HWDZVCPJJYS1RM92FVT6AK5B','laptop_29','laptop','Lecture Hall 3','HP',TO_DATE('25/02/2023 11:42:25', 'DD/MM/YYYY HH24:MI:SS'),985);
INSERT INTO devices VALUES('01HWDZVCPNKS1BDYRSGVFP178C','desktop computer_15','desktop computer','Lecture Hall 3','Sony',TO_DATE('01/03/2021 00:07:58', 'DD/MM/YYYY HH24:MI:SS'),664);
INSERT INTO devices VALUES('01HWDZVCPPENVG44QMRQPWG33Q','lights_93','lights','Lecture Hall 2','Dell',TO_DATE('22/02/2021 16:09:16', 'DD/MM/YYYY HH24:MI:SS'),486);
INSERT INTO devices VALUES('01HWDZVCPT4XZY36F1ZF60VD51','desktop computer_10','desktop computer','Lab 203','HP',TO_DATE('03/03/2021 13:57:37', 'DD/MM/YYYY HH24:MI:SS'),688);
INSERT INTO devices VALUES('01HWDZVCPVR49G0VK3PSH11Q0J','monitor_9','monitor','Lab 202','Asus',TO_DATE('17/08/2021 14:10:22', 'DD/MM/YYYY HH24:MI:SS'),701);
INSERT INTO devices VALUES('01HWDZVCPYGV9RNQFFZE9JCBN8','lights_53','lights','Lecture Hall 1','LG',TO_DATE('18/02/2023 02:00:42', 'DD/MM/YYYY HH24:MI:SS'),475);
INSERT INTO devices VALUES('01HWDZVCQ19BBEHEG79W4HYBEB','monitor_71','monitor','Auditorium','Microsoft',TO_DATE('23/12/2021 04:40:52', 'DD/MM/YYYY HH24:MI:SS'),372);
INSERT INTO devices VALUES('01HWDZVCQ5V39E23Y8V4VFS4BE','laptop_47','laptop','Lecture Hall 2','Lenovo',TO_DATE('13/08/2022 16:34:17', 'DD/MM/YYYY HH24:MI:SS'),457);
INSERT INTO devices VALUES('01HWDZVCQ72PPX6JDBC8F43HGQ','laptop_8','laptop','Lecture Hall 3','Microsoft',TO_DATE('15/02/2022 05:49:06', 'DD/MM/YYYY HH24:MI:SS'),889);
INSERT INTO devices VALUES('01HWDZVCQ91F877Z7B45Y6N08R','monitor_46','monitor','Lecture Hall 4','Samsung',TO_DATE('15/01/2023 09:08:24', 'DD/MM/YYYY HH24:MI:SS'),947);
INSERT INTO devices VALUES('01HWDZVCQA1PWWR09TG4N9EDK5','scanner_32','scanner','Lecture Hall 3','Asus',TO_DATE('09/01/2022 04:58:03', 'DD/MM/YYYY HH24:MI:SS'),418);
INSERT INTO devices VALUES('01HWDZVCQCVRRTBXJGMFQ5EDSR','desktop computer_72','desktop computer','Lecture Hall 1','Lenovo',TO_DATE('11/04/2022 10:11:08', 'DD/MM/YYYY HH24:MI:SS'),522);
INSERT INTO devices VALUES('01HWDZVCQGRXF8E8ZJK26WFBT1','laptop_7','laptop','Lab 201','Microsoft',TO_DATE('27/09/2022 03:38:16', 'DD/MM/YYYY HH24:MI:SS'),755);
INSERT INTO devices VALUES('01HWDZVCQJKDS5GJDV1DW5B4GJ','projector_73','projector','Lecture Hall 3','Apple',TO_DATE('07/06/2021 09:53:05', 'DD/MM/YYYY HH24:MI:SS'),743);
INSERT INTO devices VALUES('01HWDZVCQKDQZVHP2BPR4Z0DDB','laptop_62','laptop','Lecture Hall 3','Acer',TO_DATE('14/07/2022 19:19:30', 'DD/MM/YYYY HH24:MI:SS'),462);
INSERT INTO devices VALUES('01HWDZVCQMA57KH8J4M0AS4C3E','monitor_87','monitor','Lecture Hall 1','HP',TO_DATE('26/05/2021 13:40:03', 'DD/MM/YYYY HH24:MI:SS'),324);
INSERT INTO devices VALUES('01HWDZVCQN9V0FN14KF9TEKB2T','desktop computer_73','desktop computer','Lab 204','Acer',TO_DATE('02/06/2022 10:48:18', 'DD/MM/YYYY HH24:MI:SS'),995);
INSERT INTO devices VALUES('01HWDZVCQS3YKXT2P6DHJZ2KY9','projector_61','projector','Lecture Hall 4','Lenovo',TO_DATE('24/01/2023 20:13:27', 'DD/MM/YYYY HH24:MI:SS'),454);
INSERT INTO devices VALUES('01HWDZVCQV66SZVPYC82JRMS68','desktop computer_50','desktop computer','Auditorium','Microsoft',TO_DATE('05/05/2023 00:07:55', 'DD/MM/YYYY HH24:MI:SS'),868);
INSERT INTO devices VALUES('01HWDZVCQZ5YQSMB5NWDPSJENE','laptop_85','laptop','Lab 203','Apple',TO_DATE('08/06/2023 10:09:40', 'DD/MM/YYYY HH24:MI:SS'),837);
INSERT INTO devices VALUES('01HWDZVCR1X1H0EZEFNQX4PV9D','printer_71','printer','Lab 203','LG',TO_DATE('10/10/2022 13:39:30', 'DD/MM/YYYY HH24:MI:SS'),673);
INSERT INTO devices VALUES('01HWDZVCR5SF8FWDRCQBAKG5T5','monitor_23','monitor','Lab 202','Samsung',TO_DATE('21/08/2022 04:10:31', 'DD/MM/YYYY HH24:MI:SS'),789);
INSERT INTO devices VALUES('01HWDZVCR6AFW889KCQ9C4G8M9','laptop_88','laptop','Lecture Hall 2','Dell',TO_DATE('10/03/2022 18:22:54', 'DD/MM/YYYY HH24:MI:SS'),832);
INSERT INTO devices VALUES('01HWDZVCR63PXTCQQ4DV66BDPB','laptop_79','laptop','Lab 202','Samsung',TO_DATE('30/03/2021 17:41:17', 'DD/MM/YYYY HH24:MI:SS'),901);
INSERT INTO devices VALUES('01HWDZVCR7VNXFQY75V0QB72PV','monitor_58','monitor','Lecture Hall 1','HP',TO_DATE('07/08/2021 03:21:18', 'DD/MM/YYYY HH24:MI:SS'),417);
INSERT INTO devices VALUES('01HWDZVCR7QXR7X44KKS4H9KHQ','laptop_48','laptop','Lab 202','Microsoft',TO_DATE('23/01/2022 09:56:16', 'DD/MM/YYYY HH24:MI:SS'),366);
INSERT INTO devices VALUES('01HWDZVCR89W2FH8P5H6Z8A3KN','scanner_56','scanner','Lecture Hall 1','Apple',TO_DATE('02/01/2022 22:53:33', 'DD/MM/YYYY HH24:MI:SS'),952);
INSERT INTO devices VALUES('01HWDZVCRC4T2ZQT7ZAMZMT23P','lights_50','lights','Auditorium','Acer',TO_DATE('05/02/2021 19:29:14', 'DD/MM/YYYY HH24:MI:SS'),174);
INSERT INTO devices VALUES('01HWDZVCRDN89N3EZYKS4VVVZA','scanner_84','scanner','Lab 204','Asus',TO_DATE('08/06/2022 16:46:05', 'DD/MM/YYYY HH24:MI:SS'),635);
INSERT INTO devices VALUES('01HWDZVCREPHRVY49VNR88CBGJ','lights_62','lights','Lab 201','Lenovo',TO_DATE('02/05/2021 22:07:47', 'DD/MM/YYYY HH24:MI:SS'),756);

INSERT INTO Device_Usage_Log VALUES(1739370430,'01HWDZVCQKDQZVHP2BPR4Z0DDB',5103122405,'Passive',TO_DATE('05/09/2023 01:23:39', 'DD/MM/YYYY HH24:MI:SS'),92,0.33,'a libero nam dui proin leo odio porttitor id consequat in consequat ut nulla sed accumsan');
INSERT INTO Device_Usage_Log VALUES(1461615992,'01HWDZVCNT1F6FCTBRPGFK5X33',7212247359,'intense',TO_DATE('10/06/2023 00:19:19', 'DD/MM/YYYY HH24:MI:SS'),194,22.73,'mi in porttitor pede justo eu massa donec dapibus duis');
INSERT INTO Device_Usage_Log VALUES(538691921,'01HWDZVCR5SF8FWDRCQBAKG5T5',8210706845,'Active',TO_DATE('12/09/2023 17:34:29', 'DD/MM/YYYY HH24:MI:SS'),177,5.22,'et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer adipiscing');
INSERT INTO Device_Usage_Log VALUES(7061725672,'01HWDZVCNT1F6FCTBRPGFK5X33',1165027283,'Active',TO_DATE('07/06/2023 11:07:30', 'DD/MM/YYYY HH24:MI:SS'),196,41.47,'dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce');
INSERT INTO Device_Usage_Log VALUES(5138931318,'01HWDZVCR63PXTCQQ4DV66BDPB',7774037802,'Active',TO_DATE('12/08/2023 19:12:00', 'DD/MM/YYYY HH24:MI:SS'),33,17.06,'accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a');
INSERT INTO Device_Usage_Log VALUES(348999968,'01HWDZVCP3D4H83E943KGB0VQ1',5103122405,'intense',TO_DATE('28/05/2023 11:17:31', 'DD/MM/YYYY HH24:MI:SS'),13,1.35,'tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis nibh ligula');
INSERT INTO Device_Usage_Log VALUES(2472309767,'01HWDZVCPYGV9RNQFFZE9JCBN8',3579823132,'intense',TO_DATE('21/04/2024 19:46:14', 'DD/MM/YYYY HH24:MI:SS'),18,33.32,'lectus pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur');
INSERT INTO Device_Usage_Log VALUES(5642080059,'01HWDZVCN916MSAEPNME70EBQJ',3050783850,'intense',TO_DATE('12/02/2024 18:37:02', 'DD/MM/YYYY HH24:MI:SS'),239,41.02,'ligula nec sem duis aliquam convallis nunc proin at turpis a pede posuere nonummy integer');
INSERT INTO Device_Usage_Log VALUES(5070346644,'01HWDZVCQN9V0FN14KF9TEKB2T',3883103381,'intense',TO_DATE('15/01/2024 15:42:08', 'DD/MM/YYYY HH24:MI:SS'),174,18.14,'lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu felis');
INSERT INTO Device_Usage_Log VALUES(6710690911,'01HWDZVCNG8SB5PZJR5MS3QSPW',3511729157,'intense',TO_DATE('28/09/2023 09:51:44', 'DD/MM/YYYY HH24:MI:SS'),139,20.27,'nam congue risus semper porta volutpat quam pede lobortis ligula sit amet eleifend pede libero quis orci nullam molestie');
INSERT INTO Device_Usage_Log VALUES(7243770843,'01HWDZVCPJJYS1RM92FVT6AK5B',9392636873,'Active',TO_DATE('24/08/2023 06:40:45', 'DD/MM/YYYY HH24:MI:SS'),147,34.78,'rutrum nulla tellus in sagittis dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium');
INSERT INTO Device_Usage_Log VALUES(4376029181,'01HWDZVCQZ5YQSMB5NWDPSJENE',7499129926,'Active',TO_DATE('07/11/2023 23:09:36', 'DD/MM/YYYY HH24:MI:SS'),195,11.52,'tempus sit amet sem fusce consequat nulla nisl nunc nisl duis');
INSERT INTO Device_Usage_Log VALUES(4068065497,'01HWDZVCP3D4H83E943KGB0VQ1',7527981822,'intense',TO_DATE('13/05/2023 00:27:25', 'DD/MM/YYYY HH24:MI:SS'),143,17.5,'orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat morbi a ipsum integer a nibh');
INSERT INTO Device_Usage_Log VALUES(5153087271,'01HWDZVCN8GSW0QQ64AP4VBNWT',3511729157,'Passive',TO_DATE('18/04/2024 01:52:36', 'DD/MM/YYYY HH24:MI:SS'),17,1.38,'erat vestibulum sed magna at nunc commodo placerat praesent blandit');
INSERT INTO Device_Usage_Log VALUES(9174641034,'01HWDZVCN8GSW0QQ64AP4VBNWT',3319178040,'Passive',TO_DATE('30/08/2023 20:40:08', 'DD/MM/YYYY HH24:MI:SS'),10,34.3,'cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus augue vel accumsan tellus nisi eu');
INSERT INTO Device_Usage_Log VALUES(9245900002,'01HWDZVCNA9VCN3V94QFMZTZZ2',5835913621,'Passive',TO_DATE('22/01/2024 07:11:52', 'DD/MM/YYYY HH24:MI:SS'),153,28.03,'ut blandit non interdum in ante vestibulum ante ipsum primis in');
INSERT INTO Device_Usage_Log VALUES(3678657583,'01HWDZVCP3D4H83E943KGB0VQ1',2756171379,'Active',TO_DATE('06/12/2023 13:05:46', 'DD/MM/YYYY HH24:MI:SS'),127,45.37,'ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque');
INSERT INTO Device_Usage_Log VALUES(1290152144,'01HWDZVCQKDQZVHP2BPR4Z0DDB',7647310100,'Passive',TO_DATE('24/04/2024 01:16:58', 'DD/MM/YYYY HH24:MI:SS'),104,10.91,'ultrices libero non mattis pulvinar nulla pede ullamcorper augue a suscipit');
INSERT INTO Device_Usage_Log VALUES(2381295801,'01HWDZVCNWAST3ZRRPE076MPRY',9252332707,'intense',TO_DATE('05/08/2023 22:31:36', 'DD/MM/YYYY HH24:MI:SS'),69,4.06,'vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non');
INSERT INTO Device_Usage_Log VALUES(5675311114,'01HWDZVCPF2HF5BA8J42A2XQM5',8509549486,'Active',TO_DATE('03/08/2023 06:21:18', 'DD/MM/YYYY HH24:MI:SS'),201,34.51,'vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum');
INSERT INTO Device_Usage_Log VALUES(5053722722,'01HWDZVCQMA57KH8J4M0AS4C3E',3425297651,'Active',TO_DATE('22/07/2023 07:36:48', 'DD/MM/YYYY HH24:MI:SS'),141,16.43,'dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis');
INSERT INTO Device_Usage_Log VALUES(6737384560,'01HWDZVCPPENVG44QMRQPWG33Q',7601669467,'Active',TO_DATE('25/05/2023 23:33:24', 'DD/MM/YYYY HH24:MI:SS'),81,47.52,'tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam');
INSERT INTO Device_Usage_Log VALUES(5084764842,'01HWDZVCPYGV9RNQFFZE9JCBN8',5103122405,'Active',TO_DATE('14/07/2023 04:29:16', 'DD/MM/YYYY HH24:MI:SS'),28,39.95,'nisl duis bibendum felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis');
INSERT INTO Device_Usage_Log VALUES(2828760529,'01HWDZVCPG69KY62XSW8N0G6R1',9785216942,'intense',TO_DATE('18/10/2023 23:54:04', 'DD/MM/YYYY HH24:MI:SS'),51,42.88,'sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc');
INSERT INTO Device_Usage_Log VALUES(7747770022,'01HWDZVCPD28MZSRK37559TGT1',6673773618,'Passive',TO_DATE('28/02/2024 19:56:36', 'DD/MM/YYYY HH24:MI:SS'),46,21.68,'tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu');
INSERT INTO Device_Usage_Log VALUES(3886354547,'01HWDZVCR1X1H0EZEFNQX4PV9D',109007557,'intense',TO_DATE('15/08/2023 18:57:12', 'DD/MM/YYYY HH24:MI:SS'),225,42.22,'odio cras mi pede malesuada in imperdiet et commodo vulputate');
INSERT INTO Device_Usage_Log VALUES(746781288,'01HWDZVCPJJYS1RM92FVT6AK5B',5103122405,'intense',TO_DATE('20/10/2023 08:56:57', 'DD/MM/YYYY HH24:MI:SS'),71,41.37,'sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere');
INSERT INTO Device_Usage_Log VALUES(4393226607,'01HWDZVCQS3YKXT2P6DHJZ2KY9',5994911852,'intense',TO_DATE('15/07/2023 11:40:45', 'DD/MM/YYYY HH24:MI:SS'),215,13.76,'congue eget semper rutrum nulla nunc purus phasellus in felis donec');
INSERT INTO Device_Usage_Log VALUES(4430195307,'01HWDZVCPT4XZY36F1ZF60VD51',9107058535,'intense',TO_DATE('11/04/2024 13:34:39', 'DD/MM/YYYY HH24:MI:SS'),111,4.4,'orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti cras');
INSERT INTO Device_Usage_Log VALUES(6235911351,'01HWDZVCQS3YKXT2P6DHJZ2KY9',1821229118,'intense',TO_DATE('05/11/2023 22:42:17', 'DD/MM/YYYY HH24:MI:SS'),199,43,'quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis');
INSERT INTO Device_Usage_Log VALUES(3751559981,'01HWDZVCR7QXR7X44KKS4H9KHQ',7774037802,'Passive',TO_DATE('11/12/2023 04:23:12', 'DD/MM/YYYY HH24:MI:SS'),8,7.27,'posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac');
INSERT INTO Device_Usage_Log VALUES(5625490422,'01HWDZVCNWAST3ZRRPE076MPRY',2251918892,'Active',TO_DATE('18/03/2024 17:13:20', 'DD/MM/YYYY HH24:MI:SS'),118,39.74,'luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec');
INSERT INTO Device_Usage_Log VALUES(8074893677,'01HWDZVCNFP3NTDD59QEWEV0MC',7716144421,'Passive',TO_DATE('03/06/2023 18:42:07', 'DD/MM/YYYY HH24:MI:SS'),9,36.93,'duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec');
INSERT INTO Device_Usage_Log VALUES(9870727662,'01HWDZVCN2YDPQNKF4CNC06M8J',1038201330,'Passive',TO_DATE('15/07/2023 14:21:16', 'DD/MM/YYYY HH24:MI:SS'),119,34.16,'nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum');
INSERT INTO Device_Usage_Log VALUES(8482504711,'01HWDZVCQN9V0FN14KF9TEKB2T',5923152797,'intense',TO_DATE('11/11/2023 04:40:01', 'DD/MM/YYYY HH24:MI:SS'),74,8.85,'pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus');
INSERT INTO Device_Usage_Log VALUES(8392754468,'01HWDZVCNP614E3FRJ9SA76HZ1',3579823132,'Passive',TO_DATE('07/06/2023 06:11:58', 'DD/MM/YYYY HH24:MI:SS'),148,20.49,'eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia');
INSERT INTO Device_Usage_Log VALUES(5483627806,'01HWDZVCPG69KY62XSW8N0G6R1',3511729157,'intense',TO_DATE('04/10/2023 05:08:34', 'DD/MM/YYYY HH24:MI:SS'),62,17.84,'nunc purus phasellus in felis donec semper sapien a libero');
INSERT INTO Device_Usage_Log VALUES(6968767716,'01HWDZVCNFP3NTDD59QEWEV0MC',8210706845,'Active',TO_DATE('10/09/2023 07:27:48', 'DD/MM/YYYY HH24:MI:SS'),233,43.21,'pede venenatis non sodales sed tincidunt eu felis fusce posuere felis sed');
INSERT INTO Device_Usage_Log VALUES(8611722779,'01HWDZVCREPHRVY49VNR88CBGJ',7286391739,'Passive',TO_DATE('21/12/2023 22:07:32', 'DD/MM/YYYY HH24:MI:SS'),188,38.11,'felis sed interdum venenatis turpis enim blandit mi in porttitor pede justo eu massa donec');
INSERT INTO Device_Usage_Log VALUES(2798618479,'01HWDZVCQ19BBEHEG79W4HYBEB',5513863278,'intense',TO_DATE('04/02/2024 12:36:17', 'DD/MM/YYYY HH24:MI:SS'),58,36.42,'ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed augue aliquam');
INSERT INTO Device_Usage_Log VALUES(1384546863,'01HWDZVCPF2HF5BA8J42A2XQM5',5103122405,'intense',TO_DATE('17/05/2023 03:49:19', 'DD/MM/YYYY HH24:MI:SS'),90,20.29,'in libero ut massa volutpat convallis morbi odio odio elementum');
INSERT INTO Device_Usage_Log VALUES(7669019352,'01HWDZVCQS3YKXT2P6DHJZ2KY9',3425297651,'Active',TO_DATE('07/11/2023 20:50:58', 'DD/MM/YYYY HH24:MI:SS'),68,14.92,'in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue luctus');
INSERT INTO Device_Usage_Log VALUES(9602676760,'01HWDZVCPJJYS1RM92FVT6AK5B',8210706845,'intense',TO_DATE('08/01/2024 04:24:38', 'DD/MM/YYYY HH24:MI:SS'),75,23.5,'etiam pretium iaculis justo in hac habitasse platea dictumst etiam');
INSERT INTO Device_Usage_Log VALUES(379366258,'01HWDZVCPPENVG44QMRQPWG33Q',5923152797,'Passive',TO_DATE('05/02/2024 07:10:30', 'DD/MM/YYYY HH24:MI:SS'),148,17.97,'scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed ante vivamus tortor duis mattis egestas metus aenean');
INSERT INTO Device_Usage_Log VALUES(285054961,'01HWDZVCRDN89N3EZYKS4VVVZA',109007557,'Active',TO_DATE('16/11/2023 18:13:32', 'DD/MM/YYYY HH24:MI:SS'),30,47.45,'in libero ut massa volutpat convallis morbi odio odio elementum eu interdum');
INSERT INTO Device_Usage_Log VALUES(2545026433,'01HWDZVCPF2HF5BA8J42A2XQM5',2251918892,'Active',TO_DATE('18/07/2023 18:09:36', 'DD/MM/YYYY HH24:MI:SS'),174,26.29,'consequat lectus in est risus auctor sed tristique in tempus sit amet');
INSERT INTO Device_Usage_Log VALUES(8828341513,'01HWDZVCP3D4H83E943KGB0VQ1',8496897605,'Passive',TO_DATE('22/08/2023 11:14:19', 'DD/MM/YYYY HH24:MI:SS'),84,31.87,'at velit eu est congue elementum in hac habitasse platea');
INSERT INTO Device_Usage_Log VALUES(2088943102,'01HWDZVCP2FNDN75FDHNCFTQAY',8496897605,'Passive',TO_DATE('21/09/2023 13:40:27', 'DD/MM/YYYY HH24:MI:SS'),184,28.38,'lacus purus aliquet at feugiat non pretium quis lectus suspendisse potenti in');
INSERT INTO Device_Usage_Log VALUES(6579684003,'01HWDZVCR7QXR7X44KKS4H9KHQ',2251918892,'intense',TO_DATE('03/02/2024 04:00:25', 'DD/MM/YYYY HH24:MI:SS'),146,35.63,'amet sapien dignissim vestibulum vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus');
INSERT INTO Device_Usage_Log VALUES(8250304055,'01HWDZVCQS3YKXT2P6DHJZ2KY9',4075519716,'Passive',TO_DATE('14/06/2023 13:23:02', 'DD/MM/YYYY HH24:MI:SS'),168,45.56,'porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc purus phasellus');

INSERT INTO energy_costs VALUES(101,TO_DATE('28/01/2021 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(102,TO_DATE('28/02/2021 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(103,TO_DATE('28/03/2021 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.24,'Reduced rate for sustainability program');
INSERT INTO energy_costs VALUES(104,TO_DATE('28/04/2021 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.24,'Reduced rate for sustainability program');
INSERT INTO energy_costs VALUES(105,TO_DATE('28/05/2021 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.24,'Reduced rate for sustainability program');
INSERT INTO energy_costs VALUES(106,TO_DATE('28/06/2021 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.24,'Reduced rate for sustainability program');
INSERT INTO energy_costs VALUES(107,TO_DATE('28/07/2021 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(108,TO_DATE('28/08/2021 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(109,TO_DATE('28/09/2021 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(110,TO_DATE('28/10/2021 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.24,'Reduced rate for sustainability program');
INSERT INTO energy_costs VALUES(111,TO_DATE('28/11/2021 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.99,'Increased cost due to seasonal demand');
INSERT INTO energy_costs VALUES(112,TO_DATE('28/12/2021 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.24,'Reduced rate for sustainability program');
INSERT INTO energy_costs VALUES(113,TO_DATE('28/01/2022 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.99,'Increased cost due to seasonal demand');
INSERT INTO energy_costs VALUES(114,TO_DATE('28/02/2022 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.99,'Increased cost due to seasonal demand');
INSERT INTO energy_costs VALUES(115,TO_DATE('28/03/2022 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(116,TO_DATE('28/04/2022 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(117,TO_DATE('28/05/2022 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(118,TO_DATE('28/06/2022 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.99,'Increased cost due to seasonal demand');
INSERT INTO energy_costs VALUES(119,TO_DATE('28/07/2022 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.24,'Reduced rate for sustainability program');
INSERT INTO energy_costs VALUES(120,TO_DATE('28/08/2022 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.99,'Increased cost due to seasonal demand');
INSERT INTO energy_costs VALUES(121,TO_DATE('28/09/2022 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(122,TO_DATE('28/10/2022 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(123,TO_DATE('28/11/2022 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(124,TO_DATE('28/12/2022 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(125,TO_DATE('28/01/2023 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.24,'Reduced rate for sustainability program');
INSERT INTO energy_costs VALUES(126,TO_DATE('28/02/2023 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.99,'Increased cost due to seasonal demand');
INSERT INTO energy_costs VALUES(127,TO_DATE('28/03/2023 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.99,'Increased cost due to seasonal demand');
INSERT INTO energy_costs VALUES(128,TO_DATE('28/04/2023 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.24,'Reduced rate for sustainability program');
INSERT INTO energy_costs VALUES(129,TO_DATE('28/05/2023 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(130,TO_DATE('28/06/2023 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(131,TO_DATE('28/07/2023 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.64,'Standard electricity cost');
INSERT INTO energy_costs VALUES(132,TO_DATE('28/08/2023 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.24,'Reduced rate for sustainability program');
INSERT INTO energy_costs VALUES(133,TO_DATE('28/09/2023 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.24,'Reduced rate for sustainability program');
INSERT INTO energy_costs VALUES(134,TO_DATE('28/10/2023 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.99,'Increased cost due to seasonal demand');
INSERT INTO energy_costs VALUES(135,TO_DATE('28/11/2023 00:00:00', 'DD/MM/YYYY HH24:MI:SS'),0.99,'Increased cost due to seasonal demand');

