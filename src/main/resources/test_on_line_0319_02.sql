/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : test_on_line

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-03-19 22:12:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_sys_dic
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_dic`;
CREATE TABLE `t_sys_dic` (
  `id` varchar(200) NOT NULL COMMENT '主键',
  `dic_name` varchar(200) DEFAULT NULL COMMENT 'value-展示的值',
  `dic_value` varchar(200) NOT NULL COMMENT 'key-真实使用的值',
  `grade` varchar(200) DEFAULT NULL COMMENT '级别',
  `parent_id` varchar(200) DEFAULT NULL COMMENT '父节点',
  `sort` varchar(200) DEFAULT NULL COMMENT '分类',
  `isleaf` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`,`dic_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_dic
-- ----------------------------
INSERT INTO `t_sys_dic` VALUES ('1', '所有试题目录', 'systml', '0', '0', '试题目录', '0');
INSERT INTO `t_sys_dic` VALUES ('101', '语文', 'yw', '1', '1', '试题目录', '0');
INSERT INTO `t_sys_dic` VALUES ('101001', '字音', '1', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101002', '字形', '2', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101003', '词语', '3', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101004', '语法', '4', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101005', '修辞格', '5', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101006', '成语(熟语)', '6', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101007', '标点符号', '7', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101008', '病句辨析', '8', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101009', '扩展语句', '9', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101010', '压缩语段', '10', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101011', '新闻类', '11', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101012', '选用、仿用、变换句式', '12', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101013', '句子衔接', '13', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101014', '图文转换', '14', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101015', '修改应用文', '15', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101016', '文学常识', '16', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101017', '先秦诸子百家', '17', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101018', '楚辞汉赋骈文(歌行、乐府)', '18', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101019', '历史记载类(二十四史、地方志、野史等)', '19', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101020', '古代散文、兵法农医、天文术数、艺术杂学等', '20', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101021', '古代应用公文类(含奏议、序跋、赠序、铭文、祭文等)', '21', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101022', '近代文学', '22', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101023', '外国文学', '23', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101024', '诗', '24', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101025', '词', '25', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101026', '曲', '26', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101027', '小说', '27', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101028', '作家作品', '28', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101029', '人物传记类', '29', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101030', '历史事件类', '30', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101031', '散文类', '31', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101032', '公文类', '32', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101033', '现代文学类文本阅读', '33', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101034', '论述类文本阅读', '34', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101035', '自然类文本阅读', '35', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101036', '社科类文本阅读', '36', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101037', '实用类文本阅读', '37', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101038', '命题作文', '38', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101039', '话题作文', '39', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101040', '材料作文', '40', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101041', '小作文', '41', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101042', '诗', '42', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101043', '词', '43', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101044', '曲', '44', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('101045', '其他', '45', '2', '101', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102', '数学', 'sx', '1', '1', '试题目录', '0');
INSERT INTO `t_sys_dic` VALUES ('102001', '集合的概念', '47', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102002', '集合的运算', '48', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102003', '命题及其关系', '49', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102004', '充分条件与必要条件', '50', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102005', '简单的逻辑联结词', '51', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102006', '全称量词与存在性量词', '52', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102007', '函数及其表示', '53', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102008', '函数的定义域与值域', '54', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102009', '函数的单调性与最值', '55', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102010', '函数的奇偶性', '56', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102011', '函数与方程', '57', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102012', '反函数', '58', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102013', '函数图像', '59', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102014', '解析式', '60', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102015', '周期性和对称性', '61', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102016', '一次函数与二次函数', '62', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102017', '指数与指数函数', '63', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102018', '对数与对数函数', '64', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102019', '幂函数', '65', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102020', '函数模型及其应用', '66', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102021', '函数综合', '67', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102022', '分段函数、抽象函数与复合函数', '68', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102023', '导数的综合运用', '69', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102024', '积分', '70', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102025', '导数的概念和几何意义', '71', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102026', '导数计算', '72', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102027', '导数的实际应用', '73', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102028', '利用导数研究函数的单调性', '74', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102029', '利用导数证明不等式', '75', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102030', '利用导数求最值和极值', '76', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102031', '函数极限', '77', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102032', '函数连续性', '78', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102033', '映射', '79', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102034', '任意角和弧度制和任意角的三角函数', '80', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102035', '同角三角函数的基本关系式和诱导公式', '81', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102036', '三角函数的图象与性质', '82', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102037', '三角函数图象变换', '83', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102038', '三角函数综合', '84', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102039', '诱导公式', '85', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102040', '三角函数应用', '86', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102041', '两角和与差的三角函数', '87', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102042', '倍角公式', '88', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102043', '半角公式', '89', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102044', '恒等变换综合', '90', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102045', '正弦定理', '91', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102046', '余弦定理', '92', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102047', '解斜三角形', '93', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102048', '平面向量的概念', '94', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102049', '平面向量的几何运算', '95', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102050', '线性运算', '96', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102051', '平面向量基本定理', '97', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102052', '平面向量坐标运算', '98', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102053', '数量积的定义', '99', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102054', '数量积的应用', '100', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102055', '平面向量的物理应用', '101', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102056', '平面向量的几何应用', '102', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102057', '平移', '103', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102058', '线段的定比分点', '104', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102059', '数列的概念', '105', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102060', '等差数列', '106', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102061', '等比数列', '107', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102062', '公式法，分组求和', '108', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102063', '倒序相加，错位相减，裂项抵消求和', '109', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102064', '数列综合应用', '110', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102065', '数列极限', '111', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102066', '不等式的性质', '112', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102067', '一元二次不等式', '113', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102068', '绝对值不等式', '114', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102069', '指数不等式', '115', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102070', '对数不等式', '116', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102071', '三角不等式', '117', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102072', '无理不等式', '118', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102073', '分式不等式', '119', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102074', '均值定理', '120', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102075', '均值定理的应用', '121', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102076', '二元一次不等(组)表示的平面区域', '122', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102077', '线性规划', '123', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102078', '绝对值不等式', '124', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102079', '柯西不等式', '125', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102080', '排序不等式', '126', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102081', '不等式证明', '127', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102082', '柱、锥、台、球的结构特征', '128', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102083', '空间几何体的三视图与直观图', '129', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102084', '空间几何体的表面积与体积', '130', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102085', '欧拉定理', '131', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102086', '平行', '132', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102087', '垂直', '133', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102088', '距离', '134', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102089', '空间的角', '135', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102090', '立体几何综合', '136', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102091', '空间向量基本定理与坐标运算', '137', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102092', '平面法向量的求法', '138', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102093', '利用直线方向向量与平面法向量解决证明问题', '139', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102094', '利用直线方向向量与平面法向量解决计算问题', '140', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102095', '直线的倾斜角与斜率', '141', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102096', '直线方程', '142', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102097', '两条直线的位置关系', '143', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102098', '距离', '144', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102099', '直线综合', '145', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102100', '圆的标准方程与一般方程', '146', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102101', '直线与圆的位置关系', '147', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102102', '圆与圆的位置关系', '148', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102103', '曲线参数方程', '149', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102104', '极坐标方程', '150', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102105', '参数和普通方程互化', '151', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102106', '圆锥曲线综合', '152', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102107', '椭圆', '153', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102108', '双曲线', '154', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102109', '抛物线', '155', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102110', '平面直角坐标系', '156', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102111', '极坐标系', '157', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102112', '简单曲线的极坐标方程', '158', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102113', '柱坐标系与球坐标系', '159', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102114', '相似三角形', '160', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102115', '圆', '161', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102116', '参数方程', '162', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102117', '抽样', '163', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102118', '用样本估计总体', '164', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102119', '变量相关', '165', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102120', '统计案例', '166', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102121', '排列与排列的运用', '167', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102122', '组合与组合的运用', '168', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102123', '二项式定理与性质', '169', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102124', '排列组合综合应用', '170', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102125', '古典概型', '171', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102126', '几何概型', '172', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102127', '互斥事件与加法公式', '173', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102128', '对立事件与减法公式', '174', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102129', '条件概率', '175', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102130', '独立事件与乘法公式', '176', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102131', '独立重复试验某事件发生的概率', '177', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102132', '随机变量的期望与方差', '178', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102133', '随机变量的分布列', '179', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102134', '概率综合', '180', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102135', '正态分布', '181', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102136', '随机事件的概念及概率', '182', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102137', '加法计数原理', '183', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102138', '乘法计数原理', '184', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102139', '结构图、流程图', '185', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102140', '程序语言', '186', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102141', '算法案例', '187', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102142', '算法和程序框图', '188', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102143', '合情推理与演绎推理', '189', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102144', '直接证明与间接证明', '190', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102145', '数学归纳法', '191', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102146', '复数概念和向量表示', '192', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102147', '复数的加减', '193', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102148', '复数乘除和乘方', '194', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102149', '复数三角形式与运算', '195', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102150', '复数综合运算', '196', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102151', '数系的扩充', '197', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102152', '矩阵', '198', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('102153', '行列式', '199', '2', '102', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103', '英语', 'yy', '1', '1', '试题目录', '0');
INSERT INTO `t_sys_dic` VALUES ('103001', 'A、B、C、D', '200', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103002', 'E、F、G', '201', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103003', 'H、I、J、K', '202', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103004', 'L、M、N', '203', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103005', 'O、P、Q', '204', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103006', 'R、S、T', '205', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103007', 'U、V、W', '206', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103008', 'X、Y、Z', '207', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103009', '词组/短语', '208', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103010', '名词', '209', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103011', '代词/不定代词', '210', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103012', '一般现在时及其被动式', '211', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103013', '一般过去时及其被动式', '212', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103014', '现在进行时及其被动式', '213', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103015', '过去进行时及其被动式', '214', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103016', '将来进行时及其被动式', '215', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103017', '现在完成时及其被动式', '216', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103018', '过去完成时及其被动式', '217', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103019', '一般将来时及其被动式', '218', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103020', '过去将来时及其被动式', '219', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103021', '现在完成进行时及其被动式', '220', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103022', '将来完成时及其被动式', '221', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103023', '副词', '222', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103024', '介词/介词短语', '223', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103025', '连词/连接词', '224', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103026', '数词/量词', '225', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103027', '冠词', '226', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103028', '形容词', '227', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103029', '非谓语动词', '228', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103030', '简单句与并列句', '229', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103031', '复合句', '230', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103032', '主谓一致', '231', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103033', '倒装与省略', '232', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103034', '强调句', '233', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103035', '虚拟语气', '234', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103036', '插入语', '235', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103037', '固定句型', '236', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103038', '祈使句/感叹句', '237', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103039', '疑问句/反义疑问句', '238', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103040', '非限制性定语从句', '239', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103041', '句型转换', '240', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103042', '定语从句', '241', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103043', '表语从句', '242', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103044', '宾语从句', '243', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103045', '主语从句', '244', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103046', '动词时态与语态', '245', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103047', '虚拟语气与情态动词', '246', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103048', '主谓一致', '247', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103049', '独立主格结构、with的复合结构', '248', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103050', '情态动词', '249', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103051', '状语从句', '250', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103052', '定语从句', '251', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103053', '特殊句式', '252', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103054', '交际用语', '253', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103055', '日常生活类', '254', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103056', '人生百味类', '255', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103057', '科普环保类', '256', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103058', '政治经济文化类', '257', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103059', '人物传记/故事阅读类', '258', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103060', '教育类', '259', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103061', '广告布告类', '260', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103062', '健康保健类', '261', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103063', '社会现象类', '262', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103064', '新闻报道类', '263', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103065', '社会历史类', '264', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103066', '日常生活类阅读', '265', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103067', '人生百味类阅读', '266', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103068', '科普环保类阅读', '267', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103069', '政治经济文化类阅读', '268', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103070', '人物传记/故事类阅读', '269', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103071', '教育类阅读', '270', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103072', '广告布告类阅读', '271', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103073', '健康保健类阅读', '272', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103074', '社会现象类阅读', '273', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103075', '新闻报道类阅读', '274', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103076', '历史类', '275', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103077', '短文改错', '276', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103078', '提纲作文', '277', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103079', '图表作文', '278', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103080', '图画作文', '279', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103081', '交际用语', '280', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103082', '完成句子', '281', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103083', '阅读填空', '282', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103084', '任务型阅读', '283', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103085', '阅读表达', '284', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103086', '汉译英', '285', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103087', '英译汉', '286', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103088', '单词拼写', '287', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103089', '信息匹配', '288', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103090', '七选五题型', '289', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103091', '对话填空', '290', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103092', '短文填空', '291', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('103093', '语法填空', '292', '2', '103', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104', '物理', 'wl', '1', '1', '试题目录', '0');
INSERT INTO `t_sys_dic` VALUES ('104001', '质点', '293', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104002', '参考系', '294', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104003', '时间与时刻', '295', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104004', '位移与路程', '296', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104005', '速度(速率)', '297', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104006', '加速度', '298', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104007', '匀速直线运动', '299', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104008', '匀变速直线运动基本公式应用', '300', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104009', '匀变速直线运动导出公式应用', '301', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104010', '自由落体运动', '302', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104011', '竖直上抛运动', '303', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104012', 'S-t图象', '304', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104013', 'V-t图象', '305', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104014', '追击相遇问题', '306', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104015', '重力', '307', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104016', '弹力', '308', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104017', '滑动摩擦力f=μN', '309', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104018', '静摩擦力', '310', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104019', '平行四边形定则', '311', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104020', '力的合成', '312', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104021', '力的分解', '313', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104022', '正交分解', '314', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104023', '三力平衡', '315', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104024', '动态平衡分析', '316', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104025', '力矩平衡', '317', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104026', '牛顿第一定律', '318', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104027', '对单物体(质点)的应用', '319', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104028', '对质点系的应用', '320', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104029', '连接体', '321', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104030', '牛顿定律与图象', '322', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104031', '牛顿第三定律', '323', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104032', '超重', '324', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104033', '失重', '325', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104034', '牛顿运动定律与电磁学综合', '326', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104035', '恒力做功', '327', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104036', '变力做功', '328', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104037', '功率', '329', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104038', '机车启动（P=FV公式）', '330', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104039', '动能定理的理解', '331', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104040', '动能定理的综合应用', '332', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104041', '摩擦力做功', '333', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104042', '皮带模型', '334', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104043', '重力(保守力)做功', '335', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104044', '重力势能', '336', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104045', '功是能量转化的唯一量度', '337', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104046', '常见力做功与相应能量变化', '338', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104047', '机械能', '339', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104048', '机械能及其守恒条件', '340', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104049', '机械能守恒综合应用', '341', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104050', '位移的合成与分解', '342', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104051', '速度的合成与分解', '343', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104052', '平抛运动', '344', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104053', '斜抛运动', '345', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104054', '描述圆周运动的物理量', '346', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104055', '匀速圆周运动', '347', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104056', '向心力公式', '348', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104057', '圆周运动实例分析', '349', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104058', '离心现象', '350', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104059', '最短时间过河', '351', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104060', '最短位移过河', '352', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104061', '万有引力定律', '353', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104062', '天体的匀速圆周运动模型', '354', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104063', '人造卫星与飞船', '355', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104064', '宇宙速度', '356', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104065', '同步卫星', '357', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104066', '双星问题', '358', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104067', '动量', '359', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104068', '冲量', '360', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104069', '动量定理', '361', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104070', '动量守恒定律', '362', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104071', '弹性碰撞', '363', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104072', '非弹性碰撞', '364', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104073', '完全非弹性碰撞', '365', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104074', '爆炸', '366', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104075', '反冲现象', '367', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104076', '人船模型', '368', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104077', '简谐运动', '369', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104078', '简谐运动的图象', '370', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104079', '单摆及其周期', '371', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104080', '受迫振动和共振', '372', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104081', '机械波的形成', '373', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104082', '横波的图象', '374', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104083', '波的干涉和衍射', '375', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104084', '多普勒效应', '376', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104085', '波长、波速和频率的关系', '377', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104086', '电荷及电荷守恒', '378', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104087', '库仑定律', '379', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104088', '电场强度', '380', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104089', '电势差、电势', '381', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104090', '电场线和等势面', '382', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104091', '匀强电场电势差与场强的关系', '383', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104092', '静电感应', '384', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104093', '电容器', '385', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104094', '电荷在电场中的加速', '386', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104095', '电荷在电场中的偏转', '387', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104096', '示波管的原理与使用', '388', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104097', '电荷在交变电场中运动', '389', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104098', '串并联电路', '390', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104099', '电路的简化', '391', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104100', '欧姆定律', '392', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104101', '电阻定律', '393', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104102', '电功率和焦耳定律', '394', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104103', '全电路欧姆定律', '395', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104104', '全电路的功和能', '396', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104105', '含容电路', '397', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104106', '伏安法测电阻', '398', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104107', '半导体，超导', '399', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104108', '磁场基本性质(常见磁场)', '400', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104109', '磁感应强度', '401', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104110', '磁场对电流的作用', '402', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104111', '洛伦兹力公式与方向', '403', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104112', '电荷在匀强磁场中运动', '404', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104113', '质谱仪和回旋加速器', '405', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104114', '粒子在有界磁场中运动', '406', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104115', '粒子在复合场中运动', '407', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104116', '电磁流量计', '408', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104117', '磁流体发电', '409', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104118', '磁通量', '410', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104119', '楞次定律', '411', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104120', '法拉第电磁感应定律', '412', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104121', '自感现象与涡流', '413', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104122', '电磁感应与电路', '414', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104123', '电磁感应与图象', '415', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104124', '电磁感应中切割类问题', '416', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104125', '电磁感应中磁变类问题', '417', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104126', '交流电的产生', '418', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104127', '交流电的最大值与有效值', '419', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104128', '交流电图象', '420', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104129', '理想变压器', '421', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104130', '远距离输电', '422', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104131', '电磁振荡', '423', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104132', '电磁波', '424', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104133', '电感电容对交流电的影响', '425', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104134', '与门、或门、非门', '426', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104135', '门电路设计与应用', '427', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104136', '传感器', '428', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104137', '复合场', '429', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104138', '分子运动论', '430', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104139', '分子间的作用力', '431', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104140', '物体的内能', '432', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104141', '估测分子大小', '433', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104142', '热力学第一定律', '434', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104143', '热力学第二定律', '435', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104144', '热力学第三定律', '436', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104145', '玻马定律', '437', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104146', '气体的压强', '438', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104147', '气体的状态方程', '439', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104148', '液体', '440', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104149', '固体', '441', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104150', '查理定律和盖吕定律', '442', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104151', '热机原理与热机效率', '443', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104152', '内燃机原理', '444', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104153', '汽轮机与发电机', '445', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104154', '制冷机原理', '446', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104155', '电冰箱与空调器', '447', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104156', '光的直线传播', '448', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104157', '光的反射', '449', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104158', '光的折射', '450', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104159', '光的全反射', '451', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104160', '光的色散', '452', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104161', '棱镜、透镜', '453', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104162', '光的干涉', '454', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104163', '光的衍射', '455', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104164', '光的偏振', '456', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104165', '光的电磁说(电磁波谱)', '457', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104166', '光电效应', '458', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104167', '康普顿效应', '459', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104168', '物质波(德布罗意波)', '460', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104169', '原子的组成', '461', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104170', '能级、波尔理论', '462', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104171', '原子核结构', '463', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104172', '原子核的天然衰变', '464', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104173', '核反应方程', '465', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104174', '质能方程', '466', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104175', '核能、裂变与聚变', '467', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104176', '相对论初步', '468', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104177', '力学实验', '469', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104178', '电磁学实验', '470', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104179', '热学实验', '471', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104180', '光学实验', '472', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104181', '其他实验', '473', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104182', '物理学史', '474', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104183', '整体法隔离法', '475', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104184', '控制变量法', '476', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104185', '假设法', '477', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104186', '等效法', '478', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104187', '图象法', '479', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104188', '极限法', '480', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104189', '估算法', '481', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104190', '微元法', '482', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104191', '单位制及量纲', '483', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104192', '子弹打木块模型', '484', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104193', '弹簧综合', '485', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104194', '应用数学知识综合', '486', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('104195', '当代社会热点问题', '487', '2', '104', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105', '化学', 'hx', '1', '1', '试题目录', '0');
INSERT INTO `t_sys_dic` VALUES ('105001', '化学用语', '488', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105002', '物质的量', '489', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105003', '质量守恒定律', '490', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105004', '阿伏伽德罗定律', '491', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105005', '分散系', '492', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105006', '物质的分类', '493', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105007', '电解质', '494', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105008', '离子共存', '495', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105009', '离子方程式的书写及正误判断', '496', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105010', '氧化性和还原性强弱的比较', '497', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105011', '氧化还原反应的配平', '498', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105012', '有关氧化还原反应的的计算', '499', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105013', '基本概念的知识', '500', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105014', '钠及其化合物', '501', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105015', '镁、铝及其化合物', '502', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105016', '铁、铜及其化合物', '503', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105017', '其他金属及其化合物', '504', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105018', '氯及其化合物', '505', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105019', '硫及其化合物', '506', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105020', '氮、磷及其化合物', '507', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105021', '碳、硅及其化合物', '508', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105022', '其他非金属及其化合物', '509', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105023', '无机推断', '510', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105024', '元素及其化合物', '511', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105025', '原子结构与元素周期律', '512', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105026', '化学键与分子间作用力', '513', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105027', '物质的聚集状态与物质的性质', '514', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105028', '晶体结构与性质', '515', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105029', '化学反应与能量变化', '516', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105030', '燃烧热，能源', '517', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105031', '化学反应热的计算', '518', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105032', '化学反应速率', '519', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105033', '影响化学反应速率的因素', '520', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105034', '化学平衡', '521', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105035', '化学反应进行的方向', '522', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105036', '弱电解质的电离', '523', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105037', '水的电离和溶液的酸碱性', '524', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105038', '盐类的水解', '525', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105039', '难溶电解质的溶解平衡', '526', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105040', '原电池', '527', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105041', '化学电源', '528', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105042', '电解池', '529', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105043', '金属的电化学腐蚀与防护', '530', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105044', '有机物的分类', '531', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105045', '有机物的命名', '532', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105046', '有机物的研究', '533', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105047', '有机物的结构', '534', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105048', '烷烃', '535', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105049', '烯烃', '536', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105050', '炔烃', '537', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105051', '苯和芳香烃', '538', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105052', '煤和石油的利用', '539', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105053', '卤代烃', '540', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105054', '醇', '541', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105055', '酚', '542', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105056', '醛', '543', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105057', '酸', '544', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105058', '酯', '545', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105059', '糖类、油脂和蛋白质', '546', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105060', '有机反应类型', '547', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105061', '有机合成与推断', '548', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105062', '化学实验基础知识', '549', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105063', '物质的分离、提纯和检验', '550', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105064', '物质的制备、收集和净化', '551', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105065', '化学实验的设计与评价', '552', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105066', '实验探究', '553', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105067', '化学与健康', '554', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105068', '生活中的材料', '555', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105069', '化学与环境保护', '556', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105070', '生活中的营养元素', '557', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105071', '化学与资源开发', '558', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105072', '化学与材料的制造、应用', '559', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105073', '化学与工农业生产', '560', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('105074', '化学与技术的发展', '561', '2', '105', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106', '历史', 'ls', '1', '1', '试题目录', '0');
INSERT INTO `t_sys_dic` VALUES ('106001', '商周时期的政治制度', '562', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106002', '秦中央集权制度的形成', '563', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106003', '汉到元政治制度的演变', '564', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106004', '明清君主专制制度的加强', '565', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106005', '古代中国政治制度的特点', '566', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106006', '农业的主要耕作方式和土地制度', '567', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106007', '手工业的发展', '568', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106008', '商业的发展', '569', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106009', '资本主义萌芽', '570', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106010', '主要经济政策', '571', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106011', '春秋战国时期的百家争鸣', '572', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106012', '汉代儒学成为正统思想', '573', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106013', '宋明理学', '574', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106014', '明清之际的儒学思想', '575', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106015', '科技成就', '576', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106016', '汉字与书画', '577', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106017', '文学成就', '578', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106018', '戏曲艺术', '579', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106019', '古希腊的民主政治', '580', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106020', '罗马法', '581', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106021', '智者学派', '582', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106022', '苏格拉底', '583', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106023', '文艺复兴', '584', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106024', '宗教改革', '585', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106025', '启蒙运动', '586', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106026', '新航路的开辟', '587', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106027', '西欧列强的殖民扩张', '588', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106028', '两次工业革命', '589', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106029', '英国君主立宪制的确立', '590', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106030', '美国共和制的确立', '591', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106031', '法国共和制的确立', '592', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106032', '德意志帝国君主立宪制的确立', '593', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106033', '《共产党宣言》', '594', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106034', '巴黎公社', '595', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106035', '经典力学', '596', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106036', '生物进化论', '597', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106037', '改良蒸汽机', '598', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106038', '电气技术的应用', '599', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106039', '文学的主要成就', '600', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106040', '有代表性的美术作品', '601', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106041', '有代表性的音乐作品', '602', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106042', '两次鸦片战争', '603', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106043', '太平天国运动', '604', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106044', '甲午中日战争与八国联军侵华', '605', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106045', '辛亥革命', '606', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106046', '五四运动和中国共产党的成立', '607', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106047', '国共政权的对峙', '608', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106048', '抗日战争', '609', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106049', '解放战争', '610', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106050', '鸦片战争后自然经济的逐步解体', '611', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106051', '洋务派近代工业的创办及其影响', '612', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106052', '民国初期和国民政府前十年民族工业的发展', '613', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106053', '抗战时期和解放战争时期的民族工业', '614', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106054', '资本主义在中国近代历史发展进程中的地位和作用', '615', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106055', '民族资本主义的产生和初步发展', '616', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106056', '新思想的萌发', '617', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106057', '维新思想', '618', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106058', '新文化运动', '619', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106059', '马克思主义在中国的传播', '620', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106061', '新潮冲击下的社会生活和交通通讯的变化', '622', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106062', '俄国十月革命', '623', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106063', '战时共产主义政策和新经济政策', '624', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106064', '“斯大林模式”', '625', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106065', '从赫鲁晓夫改革到戈尔巴乔夫改革', '626', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106066', '1929至1933年资本主义世界经济危机', '627', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106067', '罗斯福新政', '628', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106068', '当代资本主义的新变化', '629', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106069', '美苏两极对峙格局的形成', '630', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106070', '多极化趋势在曲折中发展', '631', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106071', '两极格局的瓦解和多极化趋势的加强', '632', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106072', '资本主义世界经济体系的形成', '633', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106073', '世界经济区域集团化', '634', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106074', '世界贸易组织和中国的加入', '635', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106075', '经济全球化的趋势与影响', '636', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106076', '相对论与量子论', '637', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106077', '现代信息技术', '638', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106078', '文学的主要成就', '639', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106079', '有代表性的美术作品', '640', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106080', '影视艺术的产生与发展', '641', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106081', '中华人民共和国成立', '642', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106082', '民主政治制度的建设', '643', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106083', '“文化大革命”', '644', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106084', '改革开放以来民主与法制的建设', '645', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106085', '“一国两制”的理论和实践', '646', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106086', '20世纪50年代至70年代探索社会主义建设道路的实践', '647', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106087', '中共十一届三中全会', '648', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106088', '经济体制改革', '649', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106089', '对外开放格局的初步形成', '650', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106090', '社会主义市场经济体制的建立', '651', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106091', '新中国初期的对外关系', '652', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106092', '20世纪70年代中国外交的重大成就', '653', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106093', '改革开放以来我国的重要外交活动', '654', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106094', '物质生活和社会习俗的变化', '655', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106095', '交通、通讯工具的进步', '656', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106096', '大众传媒的发展', '657', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106097', '孙中山三民主义', '658', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106098', '毛泽东思想', '659', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106099', '邓小平理论', '660', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106100', '“三个代表”重要思想', '661', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106101', '科学发展观', '662', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106102', '科技发展的主要成就', '663', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106103', '“百花齐放、百家争鸣”的方针', '664', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106104', '教育事业的发展', '665', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106105', '梭伦改革', '666', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106106', '商鞅变法', '667', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106107', '北魏孝文帝改革', '668', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106108', '王安石变法', '669', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106109', '欧洲的宗教改革', '670', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106110', '穆罕默德?阿里改革', '671', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106111', '1861年的俄国农奴制改革', '672', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106112', '明治维新', '673', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106113', '戊戌变法', '674', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106114', '专制理论与民主思想', '675', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106115', '英国国会与国王的殊死搏斗', '676', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106116', '向封建专制统治宣战的檄文', '677', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106117', '构建资产阶级代议制的政治框架', '678', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106118', '法国民主力量与专制势力的斗争', '679', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106119', '近代中国的民主思想与反对专制的斗争', '680', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106120', '人民群众要求民主的斗争', '681', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106121', '第一次世界大战', '682', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106122', '凡尔赛—华盛顿体系下的和平', '683', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106123', '第二次世界大战', '684', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106124', '雅尔塔体制下的冷战与和平', '685', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106125', '烽火连绵的局部战争', '686', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106126', '和平与发展—当今世界的时代主题', '687', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106127', '古代中国的政治家', '688', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106128', '东西方的先哲', '689', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106129', '欧美资产阶级革命时代的杰出人物', '690', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106130', '“亚洲觉醒”的先驱', '691', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106131', '无产阶级革命家', '692', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106132', '杰出的科学家', '693', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106133', '历史与历史的重现', '694', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106134', '人类起源之谜', '695', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106135', '三星堆遗址', '696', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106136', '玛雅文明的消失', '697', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106137', '二里头文化的探索', '698', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106138', '米诺斯宫殿遗址与克里特文明', '699', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106139', '大津巴布韦遗址与非洲文明探秘', '700', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106140', '世界文化遗产的由来', '701', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106141', '古代埃及文明的历史遗产', '702', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106142', '古代希腊、罗马的历史遗迹', '703', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106143', '欧洲文艺复兴时期的文化遗产', '704', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106144', '中国的历史文化遗产代表', '705', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('106145', '具有警示意义的世界遗产', '706', '2', '106', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107', '政治', 'zz', '1', '1', '试题目录', '0');
INSERT INTO `t_sys_dic` VALUES ('107001', '货币', '707', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107002', '价格', '708', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107003', '消费', '709', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107004', '生产与经济制度', '710', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107005', '企业与劳动者', '711', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107006', '投资理财的选择', '712', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107007', '个人收入的分配', '713', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107008', '国家收入的分配', '714', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107009', '征税与纳税', '715', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107010', '社会主义市场经济', '716', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107011', '小康社会的经济建设', '717', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107012', '经济全球化与对外开放', '718', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107013', '人民当家作主', '719', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107014', '公民的政治参与', '720', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107015', '我国政府受人民的监督', '721', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107016', '我国政府是人民的政府', '722', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107017', '人民代表大会制度', '723', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107018', '政党制度', '724', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107019', '民族区域自制制度及宗教政策', '725', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107020', '走近国际社会', '726', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107021', '维护世界和平　促进共同发展', '727', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107022', '文化与社会', '728', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107023', '文化对人的影响', '729', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107024', '文化的多样性与文化传播', '730', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107025', '文化的继承性与文化发展', '731', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107026', '文化创新', '732', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107027', '我们的中华文化', '733', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107028', '我们的民族精神', '734', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107029', '走进文化生活', '735', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107030', '推动社会主义文化大发展大繁荣', '736', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107031', '文化发展的中心环节', '737', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107032', '美好生活的向导', '738', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107033', '百舸争流的思想', '739', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107034', '时代精神的精华', '740', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107035', '探究世界的本质', '741', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107036', '把握思维的奥妙', '742', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107037', '求索真理的历程', '743', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107038', '唯物辩证法的联系观', '744', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107039', '唯物辨证法的发展观', '745', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107040', '唯物辩证法的实质与核心', '746', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107041', '创新意识与社会进步 ', '747', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107042', '寻觅社会的真谛', '748', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107043', '实现人生的价值', '749', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107044', '古典经济学巨匠的理论遗产', '750', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107045', '马克思主义经济学的伟大贡献', '751', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107046', '西方国家现代市场经济的兴起与主要模式', '752', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107047', '社会主义经济理论', '753', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107048', '中国特色社会主义市场经济', '754', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107049', '各具特色的国家和国际组织', '755', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107050', '君主立宪制和民主共和制', '756', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107051', '联邦制、两党制、三权分立', '757', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107052', '民主集中制', '758', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107053', '日益重要的国际组织', '759', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107054', '公民道德建设的内容与要求', '760', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107055', '社会主义市场经济的伦理要求', '761', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107056', '面对科技进步的伦理冲突', '762', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107057', '对环境的伦理关怀', '763', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107058', '公民的道德生活', '764', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107059', '社会主义从空想到科学的发展', '765', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107060', '社会主义从理想到现实的转变', '766', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107061', '社会主义是中国人民的历史性选择', '767', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107062', '开创中国特色社会主义的新篇章', '768', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107063', '新世纪新阶段中国共产党的旗帜', '769', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107064', '树立科学思维的观念', '770', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107065', '遵循形式逻辑的要求', '771', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107066', '运用辩证思维方法', '772', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107067', '结合实践，善于创新', '773', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107068', '生活在社会主义法治国家', '774', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107069', '民事权利和义务', '775', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107070', '信守合同与违约', '776', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107071', '劳动就业与守法经营', '777', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107072', '家庭与婚姻', '778', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107073', '法律救济', '779', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107074', '问答题', '780', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107075', '辨析题', '781', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107076', '探究题', '782', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107077', '07年以前时事热点', '783', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107078', '08年时事热点', '784', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107079', '09年时事热点', '785', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107080', '10年时事热点', '786', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107081', '11年时事热点', '787', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107082', '12年时事热点', '788', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107083', '13年时事热点', '789', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('107084', '14年时事热点', '790', '2', '107', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108', '地理', 'dl', '1', '1', '试题目录', '0');
INSERT INTO `t_sys_dic` VALUES ('108001', '地球的形状和大小', '791', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108002', '地球仪，经纬网及其地理意义', '792', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108003', '地图的基本知识', '793', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108004', '等高线地形图、地形剖面图', '794', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108005', '等值线图', '795', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108006', '地球所处的宇宙环境', '796', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108007', '地球是太阳系中一颗既普通又特殊的行星', '797', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108008', '太阳对地球的影响', '798', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108009', '地球运动的基本形式', '799', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108010', '地球运动的地理意义', '800', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108011', '光照图的综合判读', '801', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108012', '地球的圈层结构', '802', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108013', '人类认识的宇宙', '803', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108014', '人类对宇宙的新探索', '804', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108015', '地壳内部物质循环过程', '805', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108016', '内力作用与地貌', '806', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108017', '外力作用与地貌', '807', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108018', '地壳物质循环及地表形态的塑造', '808', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108019', '大气受热过程', '809', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108020', '大气运动', '810', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108021', '全球气压带、风带的分布、移动规律及其对气候的影响', '811', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108022', '常见的天气系统', '812', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108023', '等压面、等压线、等温线等分布图的判读', '813', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108024', '气候类型及其判断', '814', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108025', '大气的圈层结构', '815', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108026', '大气、天气、气候变化规律', '816', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108027', '陆地上水体间的相互关系', '817', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108028', '水循环过程和主要环节及地理意义', '818', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108029', '世界洋流分布规律及其对地理环境的影响', '819', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108030', '水资源的合理利用', '820', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108031', '水体的运动规律', '821', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108032', '自然地理要素在地理环境形成和演变中的作用(如生物)', '822', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108033', '自然地理环境整体性的表现', '823', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108034', '自然地理要素的相互作用', '824', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108035', '自然地理环境的整体性与资源综合利用', '825', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108036', '地域分异的基本规律', '826', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108037', '世界主要陆地自然带', '827', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108038', '地表形态对聚落及交通线路分布的影响', '828', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108039', '全球气候变化对人类活动的影响', '829', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108040', '自然资源的分布和利用', '830', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108041', '能源利用结构的变化', '831', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108042', '自然灾害发生的主要原因及危害', '832', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108043', '人口增长与人口问题', '833', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108044', '人口迁移与人口流动', '834', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108045', '人口分布与人口合理容量', '835', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108046', '人口性别构成、年龄构成图的判断', '836', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108047', '城市的空间结构及其形成原因', '837', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108048', '城市地域结构及服务功能', '838', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108049', '城市化的过程和特点', '839', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108050', '城市化对地理环境的影响', '840', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108051', '城市的区位因素', '841', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108052', '地域文化对人口或城市的影响', '842', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108053', '生产活动中地域联系的重要性和主要方式', '843', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108054', '农业区位因素', '844', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108055', '主要农业地域类型的特点及其形成条件', '845', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108056', '粮食问题', '846', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108057', '工业区位因素', '847', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108058', '工业地域的形成条件与发展特点', '848', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108059', '传统工业区和新兴工业区', '849', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108060', '现代交通运输方式的特点', '850', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108061', '交通运输线路及站点的区位因素', '851', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108062', '交通运输布局及其变化对生产、生活和社会经济的影响', '852', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108063', '城市交通的特点', '853', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108064', '三大产业发展及其产业结构转移', '854', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108065', '商业中心及其形成', '855', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108066', '国际贸易和国际金融', '856', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108067', '人地关系思想的历史演变', '857', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108068', '人类面临的主要环境问题', '858', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108069', '可持续发展的基本内涵及协调人地关系的主要途径', '859', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108070', '中国走可持续发展道路的必然性', '860', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108071', '区域的含义', '861', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108072', '不同发展阶段地理环境对人类生产和生活方式的影响', '862', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108073', '不同区域自然环境、人类活动的差异', '863', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108074', '产业转移和资源跨区域调配对区域地理环境的影响', '864', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108075', '区域存在的环境与发展问题', '865', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108076', '流域开发的地理条件、内容、综合治理措施', '866', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108077', '区域农业生产的条件、布局特点、问题', '867', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108078', '区域能源、矿产资源的开发与区域可持续发展的关系', '868', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108079', '区域工业化和城市化的推进过程产生的问题及解决措施', '869', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108080', '遥感(RS)在资源普查、环境和灾害监测中的应用', '870', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108081', '全球定位系统(GPS)在定位导航中的应用', '871', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108082', '地理信息系统(GIS)在城市管理中的应用', '872', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108083', '数字地球的含义', '873', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108084', '能源安全问题及其解决途径', '874', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108085', '荒漠化的防治', '875', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108086', '水土流失的治理', '876', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108087', '森林的开发和保护', '877', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108088', '湿地资源的开发与保护', '878', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108089', '世界地理概况', '879', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108090', '世界分区地理', '880', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108091', '中国地理概况', '881', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108092', '中国区域差异', '882', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108093', '国土整治和区域开发', '883', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108094', '宇宙', '884', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108095', '太阳系和地月系', '885', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108096', '地球的演化和地表形态的变化', '886', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108097', '海洋和海岸带', '887', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108098', '海洋开发', '888', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108099', '海洋环境问题与保护', '889', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108100', '海洋权益', '890', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108101', '旅游资源的类型与分布', '891', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108102', '旅游资源的综合评价', '892', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108103', '旅游规划与旅游活动设计', '893', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108104', '旅游与区域发展', '894', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108105', '文化景观', '895', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108106', '旅游景观的欣赏', '896', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108107', '文明旅游', '897', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108108', '城乡发展与城市化', '898', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108109', '城乡分布', '899', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108110', '城乡规划', '900', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108111', '城乡建设与生活环境', '901', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108112', '主要自然灾害的类型与分布', '902', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108113', '我国的主要自然灾害', '903', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108114', '自然灾害与环境', '904', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108115', '防灾与减灾', '905', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108116', '环境与环境问题', '906', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108117', '资源问题与资源的利用、保护', '907', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108118', '生态问题与生态环境保护', '908', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108119', '环境污染与防治', '909', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108120', '环境管理', '910', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108121', '地理信息技术的发展', '911', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108122', '地图与遥感', '912', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108123', '全球定位系统', '913', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108124', '地理信息系统', '914', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108125', '3S技术综合应用', '915', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108126', '自然地理综合性专题', '916', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108127', '人文地理综合性专题', '917', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108128', '区域地理综合性专题', '918', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('108129', '文综综合（政史地）', '919', '2', '108', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109', '生物', 'sw', '1', '1', '试题目录', '0');
INSERT INTO `t_sys_dic` VALUES ('109001', '组成细胞的分子', '920', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109002', '细胞的结构与功能', '921', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109003', '物质进出细胞的方式', '922', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109004', '酶与ATP', '923', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109005', '呼吸作用', '924', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109006', '光合作用', '925', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109007', '人体和动物体内糖类、脂质和蛋白质的代谢', '926', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109008', '水分吸收与利用', '927', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109009', '矿质元素与利用', '928', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109010', '生物固氮', '929', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109011', '细胞增殖', '930', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109012', '细胞的分化、癌变、衰老和凋亡', '931', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109013', '人类对遗传物质的探索过程', '932', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109014', 'DNA的结构与复制', '933', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109015', '基因的概念与表达', '934', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109016', '基因的分离定律', '935', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109017', '基因的自由组合定律', '936', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109018', '伴性遗传', '937', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109019', '细胞质遗传', '938', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109020', '基因重组与基因突变', '939', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109021', '染色体变异与育种', '940', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109022', '人类遗传病', '941', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109023', '生物的进化', '942', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109024', '植物激素调节', '943', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109025', '人和高等动物的神经调节', '944', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109026', '人和高等动物的体液调节', '945', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109027', '人体内环境的稳态与调节', '946', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109028', '免疫调节', '947', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109029', '种群和群落', '948', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109030', '生态系统的结构和功能', '949', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109031', '生态系统的稳定性和生态环境的保护', '950', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109032', '基因工程、生物技术的安全性和伦理问题', '951', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109033', '克隆技术', '952', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109034', '胚胎工程', '953', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109035', '生态工程', '954', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109036', '细胞工程', '955', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109037', '微生物的利用', '956', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109038', '酶的应用', '957', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109039', '生物技术在食品加工及其他方面的应用', '958', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109040', '实验与探究', '959', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109041', '生物基本特征', '960', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109042', '生命系统层次', '961', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109043', '生殖的类型', '962', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109044', '减数分裂和受精作用', '963', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109045', '被子植物个体发育', '964', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109046', '动物个体发育', '965', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109047', ' 细胞的化学成分', '966', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109048', '细胞的结构与功能', '967', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109049', '细胞代谢', '968', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109050', '细胞分裂', '969', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109051', ' 糖', '970', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109052', '脂', '971', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109053', '蛋白质', '972', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109054', '核酸', '973', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109055', '维生素及其它', '974', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109056', '植物解剖学', '975', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109057', '植物生理学', '976', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109058', '植物分类学', '977', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109059', '动物解剖学', '978', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109060', '动物生理学', '979', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109061', '动物分类学', '980', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109062', '遗传定律', '981', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109063', '遗传的分子基础', '982', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109064', '生物进化', '983', '2', '109', '试题目录', '1');
INSERT INTO `t_sys_dic` VALUES ('109065', '生态学', '984', '2', '109', '试题目录', '1');

-- ----------------------------
-- Table structure for t_sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_menu`;
CREATE TABLE `t_sys_menu` (
  `id` varchar(200) NOT NULL COMMENT '主键',
  `menu_name` varchar(200) DEFAULT NULL COMMENT '菜单名',
  `menu_href` varchar(200) DEFAULT NULL COMMENT '跳转链接',
  `grade` varchar(200) DEFAULT NULL COMMENT '级别',
  `isleaf` varchar(200) DEFAULT NULL COMMENT '叶子节点',
  `parent_id` varchar(200) DEFAULT NULL COMMENT '父节点',
  `iconCls` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_menu
-- ----------------------------
INSERT INTO `t_sys_menu` VALUES ('1', '考试管理', '', '0', '0', '0', 'my_001');
INSERT INTO `t_sys_menu` VALUES ('101', '待考试卷', 'papersAction!getStuPapersListWait', '1', '1', '1', 'my_101');
INSERT INTO `t_sys_menu` VALUES ('102', '已考试卷', 'papersAction!getStuPapersListAnsweredPage', '1', '1', '1', 'my_102');
INSERT INTO `t_sys_menu` VALUES ('2', '出题管理', '', '0', '0', '0', 'my_002');
INSERT INTO `t_sys_menu` VALUES ('201', '题库', 'questionAction!getQuestionsPage', '1', '1', '2', 'my_201');
INSERT INTO `t_sys_menu` VALUES ('202', '试卷', 'papersAction!getPapersPage', '1', '1', '2', 'my_202');
INSERT INTO `t_sys_menu` VALUES ('3', '系统设置', '', '0', '0', '0', 'my_003');
INSERT INTO `t_sys_menu` VALUES ('301', '个人信息', 'userAction!getUserinfoPage', '1', '1', '3', 'my_301');
INSERT INTO `t_sys_menu` VALUES ('302', '角色管理', 'roleAction!getRoleListPage', '1', '1', '3', 'my_302');
INSERT INTO `t_sys_menu` VALUES ('303', '账户管理', 'userAction!getUserListPage', '1', '1', '3', 'my_303');
INSERT INTO `t_sys_menu` VALUES ('304', '数据字典', 'dicAction!getDicPage', '1', '1', '3', 'my_304');
INSERT INTO `t_sys_menu` VALUES ('305', '菜单管理', 'menuAction!getMeunListPage', '1', '1', '3', 'my_305');

-- ----------------------------
-- Table structure for t_sys_papers
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_papers`;
CREATE TABLE `t_sys_papers` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `papers_name` varchar(200) DEFAULT NULL COMMENT '卷子名',
  `user_id` int(11) NOT NULL COMMENT '出卷用户id',
  `dic_value` varchar(200) DEFAULT NULL COMMENT '卷子分类',
  `college` varchar(200) DEFAULT NULL COMMENT '学院',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_papers
-- ----------------------------
INSERT INTO `t_sys_papers` VALUES ('3', '语文', '1', 'yw', '福建师范大学');
INSERT INTO `t_sys_papers` VALUES ('4', '历史', '17', 'ls', '西安科技大学');
INSERT INTO `t_sys_papers` VALUES ('5', '英语', '17', 'yy', '清华大学');

-- ----------------------------
-- Table structure for t_sys_papers_questions
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_papers_questions`;
CREATE TABLE `t_sys_papers_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `papers_id` int(11) NOT NULL COMMENT '卷子id',
  `questions_id` int(11) NOT NULL COMMENT '题目id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_papers_questions
-- ----------------------------
INSERT INTO `t_sys_papers_questions` VALUES ('46', '3', '116');
INSERT INTO `t_sys_papers_questions` VALUES ('47', '3', '117');
INSERT INTO `t_sys_papers_questions` VALUES ('48', '3', '118');
INSERT INTO `t_sys_papers_questions` VALUES ('49', '3', '119');
INSERT INTO `t_sys_papers_questions` VALUES ('50', '3', '120');
INSERT INTO `t_sys_papers_questions` VALUES ('51', '3', '121');
INSERT INTO `t_sys_papers_questions` VALUES ('52', '3', '122');
INSERT INTO `t_sys_papers_questions` VALUES ('53', '3', '123');
INSERT INTO `t_sys_papers_questions` VALUES ('54', '3', '124');
INSERT INTO `t_sys_papers_questions` VALUES ('55', '3', '127');
INSERT INTO `t_sys_papers_questions` VALUES ('61', '3', '106');
INSERT INTO `t_sys_papers_questions` VALUES ('62', '3', '107');
INSERT INTO `t_sys_papers_questions` VALUES ('63', '3', '108');
INSERT INTO `t_sys_papers_questions` VALUES ('64', '3', '109');
INSERT INTO `t_sys_papers_questions` VALUES ('65', '3', '110');
INSERT INTO `t_sys_papers_questions` VALUES ('66', '3', '111');
INSERT INTO `t_sys_papers_questions` VALUES ('67', '3', '112');
INSERT INTO `t_sys_papers_questions` VALUES ('68', '3', '113');
INSERT INTO `t_sys_papers_questions` VALUES ('69', '3', '114');
INSERT INTO `t_sys_papers_questions` VALUES ('70', '3', '115');
INSERT INTO `t_sys_papers_questions` VALUES ('76', '3', '95');
INSERT INTO `t_sys_papers_questions` VALUES ('77', '3', '96');
INSERT INTO `t_sys_papers_questions` VALUES ('78', '3', '98');
INSERT INTO `t_sys_papers_questions` VALUES ('79', '3', '99');
INSERT INTO `t_sys_papers_questions` VALUES ('80', '3', '100');
INSERT INTO `t_sys_papers_questions` VALUES ('81', '3', '101');
INSERT INTO `t_sys_papers_questions` VALUES ('82', '3', '102');
INSERT INTO `t_sys_papers_questions` VALUES ('83', '3', '103');
INSERT INTO `t_sys_papers_questions` VALUES ('84', '3', '104');
INSERT INTO `t_sys_papers_questions` VALUES ('85', '3', '105');
INSERT INTO `t_sys_papers_questions` VALUES ('91', '4', '129');
INSERT INTO `t_sys_papers_questions` VALUES ('92', '4', '150');
INSERT INTO `t_sys_papers_questions` VALUES ('93', '4', '151');
INSERT INTO `t_sys_papers_questions` VALUES ('94', '4', '152');
INSERT INTO `t_sys_papers_questions` VALUES ('95', '4', '153');
INSERT INTO `t_sys_papers_questions` VALUES ('96', '4', '154');
INSERT INTO `t_sys_papers_questions` VALUES ('97', '4', '155');
INSERT INTO `t_sys_papers_questions` VALUES ('98', '4', '156');
INSERT INTO `t_sys_papers_questions` VALUES ('99', '4', '157');
INSERT INTO `t_sys_papers_questions` VALUES ('100', '4', '158');
INSERT INTO `t_sys_papers_questions` VALUES ('101', '4', '159');
INSERT INTO `t_sys_papers_questions` VALUES ('107', '5', '240');
INSERT INTO `t_sys_papers_questions` VALUES ('108', '5', '241');
INSERT INTO `t_sys_papers_questions` VALUES ('109', '5', '242');
INSERT INTO `t_sys_papers_questions` VALUES ('110', '5', '243');
INSERT INTO `t_sys_papers_questions` VALUES ('111', '5', '244');
INSERT INTO `t_sys_papers_questions` VALUES ('112', '5', '245');
INSERT INTO `t_sys_papers_questions` VALUES ('113', '5', '246');
INSERT INTO `t_sys_papers_questions` VALUES ('114', '5', '247');
INSERT INTO `t_sys_papers_questions` VALUES ('115', '5', '248');
INSERT INTO `t_sys_papers_questions` VALUES ('116', '5', '249');

-- ----------------------------
-- Table structure for t_sys_questions
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_questions`;
CREATE TABLE `t_sys_questions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `subject_name` varchar(200) DEFAULT NULL COMMENT '学科',
  `knowledge` varchar(200) DEFAULT NULL COMMENT '学科中的知识分类',
  `source_name` varchar(200) DEFAULT NULL COMMENT '题目来源',
  `question` text COMMENT '题目',
  `answer` varchar(600) DEFAULT NULL COMMENT '答案',
  `resolve` text COMMENT '试题解析',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_questions
-- ----------------------------
INSERT INTO `t_sys_questions` VALUES ('95', '语文', '字音', '2015届广东省仲元中学等七校高三第二次联考试卷语文试卷（带解析）', '&lt;p&gt;\n    下列词语中加点的字，每对读音&lt;span style=&quot;text-decoration:underline;&quot;&gt;都不相同&lt;/span&gt;的一组是（&amp;nbsp;）（3分）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;煽&lt;/span&gt;动/&lt;span style=&quot;text-decoration:underline;&quot;&gt;潸&lt;/span&gt;然&lt;span style=&quot;text-decoration:underline;&quot;&gt;咯&lt;/span&gt;血/炮&lt;span style=&quot;text-decoration:underline;&quot;&gt;烙&lt;/span&gt;&lt;span style=&quot;text-decoration:underline;&quot;&gt;蹊&lt;/span&gt;跷/独辟&lt;span style=&quot;text-decoration:underline;&quot;&gt;蹊&lt;/span&gt;径\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．游&lt;span style=&quot;text-decoration:underline;&quot;&gt;弋&lt;/span&gt;/&lt;span style=&quot;text-decoration:underline;&quot;&gt;刈&lt;/span&gt;草&lt;span style=&quot;text-decoration:underline;&quot;&gt;侪&lt;/span&gt;辈/&lt;span style=&quot;text-decoration:underline;&quot;&gt;跻&lt;/span&gt;身&lt;span style=&quot;text-decoration:underline;&quot;&gt;轴&lt;/span&gt;承/压&lt;span style=&quot;text-decoration:underline;&quot;&gt;轴&lt;/span&gt;好戏\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;纰&lt;/span&gt;漏/&lt;span style=&quot;text-decoration:underline;&quot;&gt;癖&lt;/span&gt;好缧&lt;span style=&quot;text-decoration:underline;&quot;&gt;绁&lt;/span&gt;/&lt;span style=&quot;text-decoration:underline;&quot;&gt;泄&lt;/span&gt;密&lt;span style=&quot;text-decoration:underline;&quot;&gt;薄&lt;/span&gt;荷/&lt;span style=&quot;text-decoration:underline;&quot;&gt;薄&lt;/span&gt;利多销\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．&lt;span style=&quot;text-decoration:underline;&quot;&gt;颈&lt;/span&gt;联/&lt;span style=&quot;text-decoration:underline;&quot;&gt;径&lt;/span&gt;自会&lt;span style=&quot;text-decoration:underline;&quot;&gt;晤&lt;/span&gt;/&lt;span style=&quot;text-decoration:underline;&quot;&gt;梧&lt;/span&gt;桐&lt;span style=&quot;text-decoration:underline;&quot;&gt;散&lt;/span&gt;落/&lt;span style=&quot;text-decoration:underline;&quot;&gt;散&lt;/span&gt;兵游勇\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '试题分析：A项分别读shān/shān kǎ/luò qī/xī；B项分别读yì/yì chái/jī zhóu /zhòu；C项分别读pī/pǐ xiè/ xiè bò/bó；D项分别读jǐng/jìng wù/wú sàn/sǎn。此题第一组考查易错字，这些字要准确记住读音，经常纠正生活中的误读，比如“癖好”“颈联”两词的声调最容易误读。第二组考查形近字，可以根据偏旁和字义来记忆。第三组考查多音字，根据不同的字义来记忆读音，例如“散兵游勇”中的“散”字是没有约束的意思，读“sǎn”，而“散落”中的“散”字意思是由聚集而分离，读“sàn”。');
INSERT INTO `t_sys_questions` VALUES ('96', '语文', '字音', '2014-2015学年甘肃兰州第一中学高一上学期期末考试语文试卷（带解析）', '&lt;p&gt;\n    下列各组词语中，字音、字形全都正确的一组是（&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;踱&lt;/span&gt;步（du&oacute;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;蕈&lt;/span&gt;菌（x&ugrave;n）罪愆砥砺风姿绰约\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．敛&lt;span style=&quot;text-decoration:underline;&quot;&gt;裾&lt;/span&gt;（j&ugrave;）桂&lt;span style=&quot;text-decoration:underline;&quot;&gt;棹&lt;/span&gt;（zh&agrave;o）訾詈猗郁义愤填膺\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．慰&lt;span style=&quot;text-decoration:underline;&quot;&gt;藉&lt;/span&gt;（j&iacute;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;椽&lt;/span&gt;子（chu&aacute;n）肄业袅娜背道而弛\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．房&lt;span style=&quot;text-decoration:underline;&quot;&gt;檩&lt;/span&gt;（lǐng）啮&lt;span style=&quot;text-decoration:underline;&quot;&gt;噬&lt;/span&gt;（sh&igrave;）勖勉贻误闲情逸志\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：本题考查识记现代汉语普通话常用字的字音和对词汇量的掌握程度和识记现代汉字字形的能力。对于字音，注意常见同音字、多音字、形似字的读音，侧重两个方面：一是容易读错的字，包括形近而音不同的字和声旁已不代表读音的字；二是多音多义字，音随义移。对多音字的把握，掌握“音随意转”的原则。吃不准的情况下，可多考虑从词语具体意义以及词语的词性的角度入手解决问题。善用排除法和认定法。如果题干是全部不相同的，就把有两项相同的去掉；如果题干是与所给字的读音全部相同的，则去掉一个不同的一项；如果题干是读音全都正确，就去掉有一个错误的一项；如果题干是读音有错误的一组，就排除肯定无误的一项；如果按题目的要求直接可以认定的答案应该是最有把握的答案。字音考题看似简单，其实暗藏杀机，特别是对说普通话有缺陷的方言区考生，一定注意平时学习中的正确识读。对于形似字，应注意以义辨形。．A选项正确；B选项应为敛<u>裾</u>（jū）；C选项应为慰<u>藉</u>（jiè）、背道而驰；D选项应为房<u>檩</u>（lǐn）、闲情逸致。');
INSERT INTO `t_sys_questions` VALUES ('98', '语文', '字音', '2014-2015学年福建省八县一中高二上学期期末考试语文试卷（带解析）', '&lt;p&gt;\n    下列加点字读音完全正确的一项是（&amp;nbsp;&amp;nbsp;&amp;nbsp;）（3分）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;滟&lt;/span&gt;滟（y&agrave;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;扁&lt;/span&gt;（piān）舟子钗&lt;span style=&quot;text-decoration:underline;&quot;&gt;擘&lt;/span&gt;（q&iacute;ng）黄金临&lt;span style=&quot;text-decoration:underline;&quot;&gt;邛&lt;/span&gt;（qi&oacute;ng）道士洪都客\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．&lt;span style=&quot;text-decoration:underline;&quot;&gt;殷&lt;/span&gt;（yǐn）岩泉东南&lt;span style=&quot;text-decoration:underline;&quot;&gt;坼&lt;/span&gt;（ch&egrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;栖&lt;/span&gt;（xī））隐处雕栏玉&lt;span style=&quot;text-decoration:underline;&quot;&gt;砌&lt;/span&gt;（qi&egrave;）应犹在\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;将&lt;/span&gt;（qiāng）进酒恣欢&lt;span style=&quot;text-decoration:underline;&quot;&gt;谑&lt;/span&gt;（xu&egrave;）捣衣&lt;span style=&quot;text-decoration:underline;&quot;&gt;砧&lt;/span&gt;（zhēn）上惟&lt;span style=&quot;text-decoration:underline;&quot;&gt;觉&lt;/span&gt;（ju&eacute;）时之枕席\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．芙蓉&lt;span style=&quot;text-decoration:underline;&quot;&gt;浦&lt;/span&gt;（fǔ）消&lt;span style=&quot;text-decoration:underline;&quot;&gt;溽&lt;/span&gt;（r&ugrave;）暑小&lt;span style=&quot;text-decoration:underline;&quot;&gt;楫&lt;/span&gt;（yī）轻舟梦入神山教神&lt;span style=&quot;text-decoration:underline;&quot;&gt;妪&lt;/span&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：A．钗<u>擘</u>（bò）黄金，B．<u>栖</u>（qī））隐处、玉砌（qì），D．芙蓉<u>浦</u>（pǔ）、小<u>楫</u>（jí）。本题还要注意几个多音字，扁（1） [biǎn]物体平而薄：～豆。～担。（2）[piān]小：～舟。将（1）[jiāng]～要。～至。～军。（2）[jiàng]～领。～百万之众。殷（1）[yīn]～实。～阜。～富。（2）[yān]～红。（3） [yǐn] “～其雷，在南山之阳”。从历年高考来看，字音题考核的内容有多音字、形似字、音近字、形声字、统读字、生僻字、方言误读七类，命题形式主要有找出注音全部正确的一项，找出读音全部相同（或不同）的一项，找出各组读音全部相同（或不同）的一项三类。复习时分类整理记忆，训练、记忆相结合，以记忆为主。');
INSERT INTO `t_sys_questions` VALUES ('99', '语文', '字音', '2014-2015学年广东省从化市高一上学期期末考试语文试卷（带解析）', '&lt;p&gt;\n    下列各组词语中加点的字的读音完全正确的一组是\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;斗&lt;/span&gt;牛之间（dǒu ）修&lt;span style=&quot;text-decoration:underline;&quot;&gt;葺&lt;/span&gt;（y&igrave;）双&lt;span style=&quot;text-decoration:underline;&quot;&gt;栖&lt;/span&gt;（xī）外&lt;span style=&quot;text-decoration:underline;&quot;&gt;甥&lt;/span&gt;（shēng）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．水波不&lt;span style=&quot;text-decoration:underline;&quot;&gt;兴&lt;/span&gt;（xīn）先&lt;span style=&quot;text-decoration:underline;&quot;&gt;妣&lt;/span&gt;（bǐ）&lt;span style=&quot;text-decoration:underline;&quot;&gt;亘&lt;/span&gt;古（g&egrave;n ）机&lt;span style=&quot;text-decoration:underline;&quot;&gt;杼&lt;/span&gt;（shū）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;酾&lt;/span&gt;酒临江（shī）&lt;span style=&quot;text-decoration:underline;&quot;&gt;垣&lt;/span&gt;墙（hu&aacute;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;泠&lt;/span&gt;然 （l&iacute;n）领&lt;span style=&quot;text-decoration:underline;&quot;&gt;衔&lt;/span&gt;（xi&aacute;n）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．外强中&lt;span style=&quot;text-decoration:underline;&quot;&gt;干&lt;/span&gt;（gān）&lt;span style=&quot;text-decoration:underline;&quot;&gt;眷&lt;/span&gt;属（ju&agrave;n）艳&lt;span style=&quot;text-decoration:underline;&quot;&gt;羡&lt;/span&gt;（xi&agrave;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;镌&lt;/span&gt;刻（juān）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '试题分析：本题考查识记现代汉语普通话常用字的字音。注意常见同音字、多音字、形似字的读音。<br>侧重两个方面：一是容易读错的字，包括形近而音不同的字和声旁已不代表读音的字；二是多音多义字，音随义移。对多音字的把握，掌握“音随意转”的原则。吃不准的情况下，可多考虑从词语具体意义以及词语的词性的角度入手解决问题。善用排除法和认定法。如果题干是读音全都正确，就去掉有一个错误的一项；如果按题目的要求直接可以认定的答案应该是最有把握的答案。字音考题看似简单，其实暗藏杀机，特别是对说普通话有缺陷的方言区考生，一定注意平时学习中的正确识读。分析可知，A 修葺qì  B机杼zhù  C垣墙yuán');
INSERT INTO `t_sys_questions` VALUES ('100', '语文', '字音', '2014-2015学年甘肃省兰州第一中学高二上学期期末考试语文试卷（带解析）', '&lt;p&gt;\n    下列词语的字形及加点字的注音，全都正确的一项是（2分）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．春霄&lt;span style=&quot;text-decoration:underline;&quot;&gt;踯躅&lt;/span&gt;（zh&iacute; zh&uacute;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;绰&lt;/span&gt;约（zhuǒ）&lt;span style=&quot;text-decoration:underline;&quot;&gt;扁&lt;/span&gt;舟子（piān）回眸一笑\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．轩冕&lt;span style=&quot;text-decoration:underline;&quot;&gt;绸缪&lt;/span&gt;（ch&oacute;u mi&ugrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;戎&lt;/span&gt;马（r&oacute;ng）捣衣&lt;span style=&quot;text-decoration:underline;&quot;&gt;砧&lt;/span&gt;（zhēn）豆蔻词工\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．危樯&lt;span style=&quot;text-decoration:underline;&quot;&gt;迤逦&lt;/span&gt;（yǐ lǐ）&lt;span style=&quot;text-decoration:underline;&quot;&gt;荠&lt;/span&gt;麦 （j&igrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;暴&lt;/span&gt;霜露（p&ugrave;）列却霹雳\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．祠堂&lt;span style=&quot;text-decoration:underline;&quot;&gt;逾庖&lt;/span&gt;（y&uacute; p&aacute;o）&lt;span style=&quot;text-decoration:underline;&quot;&gt;碣&lt;/span&gt;石（ji&eacute;）玉&lt;span style=&quot;text-decoration:underline;&quot;&gt;搔&lt;/span&gt;头（sāo）云栈萦纡\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '试题分析：本题考查识记现代汉语普通话常用字的字音。注意常见同音字、多音字、形似字的读音。<br>侧重两个方面：一是容易读错的字，包括形近而音不同的字和声旁已不代表读音的字；二是多音多义字，音随义移。对多音字的把握，掌握“音随意转”的原则。吃不准的情况下，可多考虑从词语具体意义以及词语的词性的角度入手解决问题。善用排除法和认定法。如果题干是读音全都正确，就去掉有一个错误的一项；如果按题目的要求直接可以认定的答案应该是最有把握的答案。字音考题看似简单，其实暗藏杀机，特别是对说普通话有缺陷的方言区考生，一定注意平时学习中的正确识读。分析可知，A项，“春霄”应为“春宵”，“绰”读chuó；B项，“缪”读mòu；C项，“列却”应为“列缺”。');
INSERT INTO `t_sys_questions` VALUES ('101', '语文', '字音', '2014-2015学年四川雅安市重点中学高二上学期期末模拟语文试卷（带解析）', '&lt;p&gt;\n    下列词语中加点的字，读音全都正确的一项是（&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．城&lt;span style=&quot;text-decoration:underline;&quot;&gt;隅&lt;/span&gt;（y&uacute;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;赍&lt;/span&gt;（jī）赏一&lt;span style=&quot;text-decoration:underline;&quot;&gt;弦&lt;/span&gt;一柱（xu&aacute;n ）羽扇&lt;span style=&quot;text-decoration:underline;&quot;&gt;纶&lt;/span&gt;（guān）巾\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．&lt;span style=&quot;text-decoration:underline;&quot;&gt;遗&lt;/span&gt;（w&egrave;i）施&lt;span style=&quot;text-decoration:underline;&quot;&gt;纤&lt;/span&gt;（qiān）云&lt;span style=&quot;text-decoration:underline;&quot;&gt;怆&lt;/span&gt;（chu&agrave;ng）然匪我&lt;span style=&quot;text-decoration:underline;&quot;&gt;愆&lt;/span&gt;（qiān）期\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．玉&lt;span style=&quot;text-decoration:underline;&quot;&gt;簟&lt;/span&gt;（di&agrave;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;殷&lt;/span&gt;（yān）红&lt;span style=&quot;text-decoration:underline;&quot;&gt;沏&lt;/span&gt;（qī）茶重&lt;span style=&quot;text-decoration:underline;&quot;&gt;创&lt;/span&gt;（chuāng）敌人\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．&lt;span style=&quot;text-decoration:underline;&quot;&gt;剡&lt;/span&gt;（sh&agrave;n）溪商&lt;span style=&quot;text-decoration:underline;&quot;&gt;贾&lt;/span&gt; （gǔ）机&lt;span style=&quot;text-decoration:underline;&quot;&gt;杼&lt;/span&gt; （zh&ugrave;）雕栏玉 &lt;span style=&quot;text-decoration:underline;&quot;&gt;砌&lt;/span&gt;（ch&egrave;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：此题考查字音的识记能力。此类题主要考查多音字、形声字、形似字、生僻字的字音和字形，多音字要依照“据义定音，音随义转”的特点，区分一般词语与专用词语的读音、词性辨别读音等。答题时，要采用比较排除法，A项，“一<u>弦</u>一柱”的“弦”应读xián；B项，“<u>纤</u>（qiān）云”的“<u>纤</u>”应读xiān；D项，“雕栏玉砌”的“砌”应读qì。所以选C。');
INSERT INTO `t_sys_questions` VALUES ('102', '语文', '字音', '2015届湖南省邵阳市武冈二中高三上学期第三次月考语文试卷（带解析）', '&lt;p&gt;\n    下列词语中划线的字，字形和读音全都正确的一组是（&amp;nbsp;&amp;nbsp;&amp;nbsp;）（3分）&amp;nbsp;&amp;nbsp;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．独&lt;span style=&quot;text-decoration:underline;&quot;&gt;挡&lt;/span&gt;一面（dǎng）搭&lt;span style=&quot;text-decoration:underline;&quot;&gt;挡&lt;/span&gt;（d&agrave;ng）歪打正&lt;span style=&quot;text-decoration:underline;&quot;&gt;着&lt;/span&gt;（zh&aacute;o）穿&lt;span style=&quot;text-decoration:underline;&quot;&gt;着&lt;/span&gt;（zhu&oacute;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．弹&lt;span style=&quot;text-decoration:underline;&quot;&gt;冠&lt;/span&gt;相庆（guān）桂&lt;span style=&quot;text-decoration:underline;&quot;&gt;冠&lt;/span&gt;（gu&agrave;n）羽扇&lt;span style=&quot;text-decoration:underline;&quot;&gt;纶&lt;/span&gt;巾（guān）涤&lt;span style=&quot;text-decoration:underline;&quot;&gt;伦&lt;/span&gt;（l&uacute;n）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．浑身&lt;span style=&quot;text-decoration:underline;&quot;&gt;解&lt;/span&gt;数（xi&egrave;）押&lt;span style=&quot;text-decoration:underline;&quot;&gt;解&lt;/span&gt;（xi&egrave;）退避三&lt;span style=&quot;text-decoration:underline;&quot;&gt;舍&lt;/span&gt;（sh&egrave;）寒&lt;span style=&quot;text-decoration:underline;&quot;&gt;舍&lt;/span&gt;（sh&egrave;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．牵&lt;span style=&quot;text-decoration:underline;&quot;&gt;强&lt;/span&gt;附会（qiǎng）&lt;span style=&quot;text-decoration:underline;&quot;&gt;强&lt;/span&gt;迫（qiǎng）&lt;span style=&quot;text-decoration:underline;&quot;&gt;处&lt;/span&gt;之泰然（chǔ）&lt;span style=&quot;text-decoration:underline;&quot;&gt;处&lt;/span&gt;所（ch&ugrave;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '试题分析：A．独当一面dāng；B．桂冠guān，涤纶；C．押解jiè，退避三舍。字音题考核的内容有多音字、形似字、音近字、形声字、统读字、生僻字、方言误读七类，命题形式主要有找出注音全部正确的一项、找出读音全部相同（或不同）的一项，找出读音全部相同（或不同）的一组三类。复习时分类整理记忆，以记忆为主，训练、记忆相结合。');
INSERT INTO `t_sys_questions` VALUES ('103', '语文', '字音', '2014-2015学年湖南常德市石门一中高一上学期阶段检测语文试卷（带解析）', '&lt;p&gt;\n    下列词语中加点的字注音不正确的一组是（&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．廖&lt;span style=&quot;text-decoration:underline;&quot;&gt;廓&lt;/span&gt;（ku&ograve;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;分&lt;/span&gt;外（f&egrave;n）浪&lt;span style=&quot;text-decoration:underline;&quot;&gt;遏&lt;/span&gt;飞舟（&egrave;） 挥斥方&lt;span style=&quot;text-decoration:underline;&quot;&gt;遒&lt;/span&gt;（qi&uacute;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．&lt;span style=&quot;text-decoration:underline;&quot;&gt;沁&lt;/span&gt;园春（q&igrave;n） 百&lt;span style=&quot;text-decoration:underline;&quot;&gt;舸&lt;/span&gt;（gě）&lt;span style=&quot;text-decoration:underline;&quot;&gt;峥&lt;/span&gt;嵘（zhēng） 风华正&lt;span style=&quot;text-decoration:underline;&quot;&gt;茂&lt;/span&gt;（m&agrave;o）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．岁月&lt;span style=&quot;text-decoration:underline;&quot;&gt;稠&lt;/span&gt;（ch&oacute;u） &lt;span style=&quot;text-decoration:underline;&quot;&gt;苍&lt;/span&gt;茫（cāng）百&lt;span style=&quot;text-decoration:underline;&quot;&gt;侣&lt;/span&gt;（lǚ）&lt;span style=&quot;text-decoration:underline;&quot;&gt;橘&lt;/span&gt;子洲头（j&uacute;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．&lt;span style=&quot;text-decoration:underline;&quot;&gt;怅&lt;/span&gt;寥廓（ch&agrave;ng）颓&lt;span style=&quot;text-decoration:underline;&quot;&gt;圮&lt;/span&gt;（qǐ）沉&lt;span style=&quot;text-decoration:underline;&quot;&gt;浮&lt;/span&gt;（f&uacute;）激昂&lt;span style=&quot;text-decoration:underline;&quot;&gt;慷&lt;/span&gt;慨（kāng）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '试题分析：本题考查识记现代汉语普通话常用字的字音的能力，此题主要涉及到多音字如“分”以及形声字“怅”等的误读现象等考查，难度不大。此题需要逐项加以分析即可。D项，圮，应读“pǐ”。');
INSERT INTO `t_sys_questions` VALUES ('104', '语文', '字音', '2014-2015学年湖南常德市石门一中高一上学期阶段检测语文试卷（带解析）', '&lt;p&gt;\n    选出下列字形全都正确的一项（&amp;nbsp;&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．谩骂 散漫 棉絮 宽恕 惋惜\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．竞争 毕竟 维幕 唯一 给予\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．斑斓 波谰 瓦菲 窗扉 忸怩\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．朔风 上溯 携手 隽刻 惆怅\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：本题重点在于辨别容易混淆的同音字和形近字，需要逐项加以分析、排查即可。B维-帷；C谰-澜；D隽-镌。');
INSERT INTO `t_sys_questions` VALUES ('105', '语文', '字音', '2014-2015学年湖南常德市石门一中高一上学期阶段检测语文试卷（带解析）', '&lt;p&gt;\n    下列注音有错误的一项是（&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．荆&lt;span style=&quot;text-decoration:underline;&quot;&gt;棘&lt;/span&gt;（j&iacute;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;掐&lt;/span&gt;死（qiā）&lt;span style=&quot;text-decoration:underline;&quot;&gt;雕&lt;/span&gt;花（diāo）河&lt;span style=&quot;text-decoration:underline;&quot;&gt;畔&lt;/span&gt;（b&agrave;n）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．瓦&lt;span style=&quot;text-decoration:underline;&quot;&gt;菲&lt;/span&gt;（fēi）&lt;span style=&quot;text-decoration:underline;&quot;&gt;典&lt;/span&gt;押（diǎn）&lt;span style=&quot;text-decoration:underline;&quot;&gt;酱&lt;/span&gt;碗（ji&agrave;ng）青&lt;span style=&quot;text-decoration:underline;&quot;&gt;苔&lt;/span&gt;（t&aacute;i）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;忸&lt;/span&gt;怩（niǔ）&lt;span style=&quot;text-decoration:underline;&quot;&gt;臂&lt;/span&gt;膀（b&igrave;）冰&lt;span style=&quot;text-decoration:underline;&quot;&gt;屑&lt;/span&gt;（xi&egrave;）团&lt;span style=&quot;text-decoration:underline;&quot;&gt;箕&lt;/span&gt;（jī）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．火&lt;span style=&quot;text-decoration:underline;&quot;&gt;钵&lt;/span&gt;（bō）&lt;span style=&quot;text-decoration:underline;&quot;&gt;凌&lt;/span&gt;辱（l&iacute;ng）&lt;span style=&quot;text-decoration:underline;&quot;&gt;叱&lt;/span&gt;骂（ch&igrave;）漂&lt;span style=&quot;text-decoration:underline;&quot;&gt;泊&lt;/span&gt;（b&oacute;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：本题考查识记现代汉语普通话常用字的字音的能力，此题需要逐项加以分析即可。A项，畔pàn。本题中，要注意“臂”、“泊”等字的读音。');
INSERT INTO `t_sys_questions` VALUES ('106', '语文', '字音', '2015届湖北省黄冈市高三上学期元月调研考试语文试卷（带解析）', '&lt;p&gt;\n    下列各组词语中，加点字的注音全都正确的一组是\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;聒&lt;/span&gt;（guā）噪&lt;span style=&quot;text-decoration:underline;&quot;&gt;忤&lt;/span&gt;（wǔ）逆&lt;span style=&quot;text-decoration:underline;&quot;&gt;轧&lt;/span&gt;票处（g&aacute;）前合后&lt;span style=&quot;text-decoration:underline;&quot;&gt;偃&lt;/span&gt;（yǎn）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．&lt;span style=&quot;text-decoration:underline;&quot;&gt;驯&lt;/span&gt;（x&ugrave;n）熟自&lt;span style=&quot;text-decoration:underline;&quot;&gt;诩&lt;/span&gt;（yǔ）一&lt;span style=&quot;text-decoration:underline;&quot;&gt;抔&lt;/span&gt;（pōu）土羽扇&lt;span style=&quot;text-decoration:underline;&quot;&gt;纶&lt;/span&gt;（guān）巾\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．畏&lt;span style=&quot;text-decoration:underline;&quot;&gt;葸&lt;/span&gt;（xǐ）讥&lt;span style=&quot;text-decoration:underline;&quot;&gt;诮&lt;/span&gt;（qi&agrave;o）&lt;span style=&quot;text-decoration:underline;&quot;&gt;抠&lt;/span&gt;（kōu）字眼&lt;span style=&quot;text-decoration:underline;&quot;&gt;龇&lt;/span&gt;（zī）牙咧嘴\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．流&lt;span style=&quot;text-decoration:underline;&quot;&gt;岚&lt;/span&gt;（l&aacute;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;镣&lt;/span&gt;（li&agrave;o）铐起涟&lt;span style=&quot;text-decoration:underline;&quot;&gt;漪&lt;/span&gt;（yī）龌&lt;span style=&quot;text-decoration:underline;&quot;&gt;龊&lt;/span&gt;（cu&ograve;）不堪\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：A．聒guō，B．诩（xǔ），抔póu，D．龊chuò。从历年高考来看，字音题考核的内容有多音字、形似字、音近字、形声字、统读字、生僻字、方言误读七类，命题形式主要有找出注音全部正确的一项，找出读音全部相同（或不同）的一项，找出各组读音全部相同（或不同）的一项三类。复习时分类整理记忆，训练、记忆相结合，以记忆为主。本题字词分别选自《包身工》《荆轲刺秦王》《窦娥冤》《苏武传》《拿来主义》《赤壁怀古》《装在套子里的人》《咬文嚼字》《林黛玉进贾府》《老人与海》《大堰河，我的保姆》。');
INSERT INTO `t_sys_questions` VALUES ('107', '语文', '字音', '2014-2015学年黑龙江省绥化市三校高一上学期期末联考语文试卷（带解析）', '&lt;p&gt;\n    下列词语中划线的字，每对读音全都不相同的一组是（&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．采&lt;span style=&quot;text-decoration:underline;&quot;&gt;薇&lt;/span&gt;/思&lt;span style=&quot;text-decoration:underline;&quot;&gt;维&lt;/span&gt;&lt;span style=&quot;text-decoration:underline;&quot;&gt;戍&lt;/span&gt;守/壬&lt;span style=&quot;text-decoration:underline;&quot;&gt;戌&lt;/span&gt;&lt;span style=&quot;text-decoration:underline;&quot;&gt;倚&lt;/span&gt;靠/杨柳&lt;span style=&quot;text-decoration:underline;&quot;&gt;依&lt;/span&gt;依\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．&lt;span style=&quot;text-decoration:underline;&quot;&gt;即&lt;/span&gt;使/&lt;span style=&quot;text-decoration:underline;&quot;&gt;觊&lt;/span&gt;觎&lt;span style=&quot;text-decoration:underline;&quot;&gt;聘&lt;/span&gt;请/驰&lt;span style=&quot;text-decoration:underline;&quot;&gt;骋&lt;/span&gt;荆&lt;span style=&quot;text-decoration:underline;&quot;&gt;棘&lt;/span&gt;/&lt;span style=&quot;text-decoration:underline;&quot;&gt;亟&lt;/span&gt;待解决\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;冠&lt;/span&gt;名/衣&lt;span style=&quot;text-decoration:underline;&quot;&gt;冠&lt;/span&gt;虚&lt;span style=&quot;text-decoration:underline;&quot;&gt;诞&lt;/span&gt;/垂&lt;span style=&quot;text-decoration:underline;&quot;&gt;涎&lt;/span&gt;&lt;span style=&quot;text-decoration:underline;&quot;&gt;稔&lt;/span&gt;熟/光阴&lt;span style=&quot;text-decoration:underline;&quot;&gt;荏&lt;/span&gt;苒\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．羽&lt;span style=&quot;text-decoration:underline;&quot;&gt;翼&lt;/span&gt;/希&lt;span style=&quot;text-decoration:underline;&quot;&gt;冀&lt;/span&gt;狼&lt;span style=&quot;text-decoration:underline;&quot;&gt;藉&lt;/span&gt;/蕴&lt;span style=&quot;text-decoration:underline;&quot;&gt;藉&lt;/span&gt;管&lt;span style=&quot;text-decoration:underline;&quot;&gt;弦&lt;/span&gt;/扣&lt;span style=&quot;text-decoration:underline;&quot;&gt;舷&lt;/span&gt;而歌\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：常见多音字标次读音正确的可能性大，标常读音正确的可能性小。形声字标不同声旁读音的正确可能性大，标同声旁读音的正确可能性小。常见字标音正确的可能性小。生僻字一般不会标错音。一般考辨析，不考拼写，不考查汉语拼音方案。<br>如果题干是全部不相同的，就把有两项相同的去掉；如果题干是与所给字的读音全部相同的，则去掉一个不同的一项；如果题干是读音全都正确，就去掉有一个错误的一项；如果题干是读音有错误的一组，就排除肯定无误的一项。总之，用排除法是较好的方法。');
INSERT INTO `t_sys_questions` VALUES ('108', '语文', '字音', '2014-2015学年广东湛江师范附属中学二校高二上期中考语文试卷（带解析）', '&lt;p&gt;\n    下列加点字注音正确的一项是（&amp;nbsp;&amp;nbsp;&amp;nbsp;）（3分）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;应&lt;/span&gt;届（yīng）&lt;span style=&quot;text-decoration:underline;&quot;&gt;扁&lt;/span&gt;舟（piān）&lt;span style=&quot;text-decoration:underline;&quot;&gt;瞋&lt;/span&gt;目（chēng）&lt;span style=&quot;text-decoration:underline;&quot;&gt;屏&lt;/span&gt;气静神（bǐng）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．商&lt;span style=&quot;text-decoration:underline;&quot;&gt;贾&lt;/span&gt;（gǔ）亲&lt;span style=&quot;text-decoration:underline;&quot;&gt;昵&lt;/span&gt;（n&iacute;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;创&lt;/span&gt;伤（chuāng）垂&lt;span style=&quot;text-decoration:underline;&quot;&gt;涎&lt;/span&gt;三尺（xi&aacute;n）&lt;em class=&quot;jammerd42&quot;&gt;)&lt;/em&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;晕&lt;/span&gt;车（y&ugrave;n）发&lt;span style=&quot;text-decoration:underline;&quot;&gt;酵&lt;/span&gt;（ji&agrave;o）俯&lt;span style=&quot;text-decoration:underline;&quot;&gt;瞰&lt;/span&gt;（k&agrave;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;戛&lt;/span&gt;然而止（ji&aacute;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．&lt;span style=&quot;text-decoration:underline;&quot;&gt;绿&lt;/span&gt;林（l&ugrave;）披&lt;span style=&quot;text-decoration:underline;&quot;&gt;靡&lt;/span&gt;（m&iacute;）挑&lt;span style=&quot;text-decoration:underline;&quot;&gt;衅&lt;/span&gt;（x&igrave;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;数&lt;/span&gt;见不鲜（shu&ograve;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：此类题主要考查多音字、形声字、形似字、生僻字的字音和字形，多音字要依照“据义定音，音随义转”的特点，区分一般词语与专用词语的读音、词性辨别读音等。答题时，要采用比较排除法，按照“粗读找明误，细读辨真伪”的思路来判断取舍。速读一遍，可排除明显相同的。A项，“瞋目”的“瞋”应读chēn；B项，“亲昵”的“昵”应读nì；D项，“披靡”的“靡”应读mǐ。所以选C。');
INSERT INTO `t_sys_questions` VALUES ('109', '语文', '字音', '2014-2015学年重庆一中高一上学期第三次定时练习语文试卷（带解析）', '&lt;p&gt;\n    选出符合题目要求的选项（本大题共6小题，每小题3分，共18分）&lt;br/&gt;1．（原创）下列词语中，注音全部正确的一组是（&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．解&lt;span style=&quot;text-decoration:underline;&quot;&gt;剖 &lt;/span&gt;（pōu）&lt;span style=&quot;text-decoration:underline;&quot;&gt;莅&lt;/span&gt;临（w&egrave;i）笑&lt;span style=&quot;text-decoration:underline;&quot;&gt;靥&lt;/span&gt;（y&egrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;纤&lt;/span&gt;巧（xiān）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．&lt;span style=&quot;text-decoration:underline;&quot;&gt;褒&lt;/span&gt;贬（bāo）字&lt;span style=&quot;text-decoration:underline;&quot;&gt;帖&lt;/span&gt;（ti&egrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;蟠&lt;/span&gt;桃（p&aacute;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;干&lt;/span&gt;禄（gān）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;跷&lt;/span&gt;蹊（qiāo）苍&lt;span style=&quot;text-decoration:underline;&quot;&gt;劲&lt;/span&gt;（j&igrave;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;冠&lt;/span&gt;冕（guān）&lt;span style=&quot;text-decoration:underline;&quot;&gt;落&lt;/span&gt;枕（lu&ograve;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．电饼&lt;span style=&quot;text-decoration:underline;&quot;&gt;铛&lt;/span&gt;（dāng）天&lt;span style=&quot;text-decoration:underline;&quot;&gt;堑&lt;/span&gt;（qi&agrave;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;翘&lt;/span&gt;首（qi&aacute;o）&lt;span style=&quot;text-decoration:underline;&quot;&gt;瘙&lt;/span&gt;痒（sāo）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：本题考查识记现代汉语普通话常用字的字音的能力，此题主要涉及到多音字如“帖”、“冠”、“劲”、“落”以及形声字“纤”、“铛”等的误读现象等考查，难度不大。A，莅lì；C，劲jìng ，落枕lào；D，电饼铛chēng，瘙sào痒。');
INSERT INTO `t_sys_questions` VALUES ('110', '语文', '字音', '2015届浙江温州市第六十一中学高三第一学期期中考试语文试卷（带解析）', '&lt;p&gt;\n    下列词语中注音全都正确的一组是（&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;渣&lt;/span&gt;滓（zǐ）木&lt;span style=&quot;text-decoration:underline;&quot;&gt;讷&lt;/span&gt;（n&egrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;炽&lt;/span&gt;热（ch&igrave;）力有未&lt;span style=&quot;text-decoration:underline;&quot;&gt;逮&lt;/span&gt;（d&agrave;i）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．粗&lt;span style=&quot;text-decoration:underline;&quot;&gt;犷&lt;/span&gt;（ku&agrave;ng）骨&lt;span style=&quot;text-decoration:underline;&quot;&gt;髓&lt;/span&gt;（suǐ）&lt;span style=&quot;text-decoration:underline;&quot;&gt;祈&lt;/span&gt;使（q&iacute;）相形见&lt;span style=&quot;text-decoration:underline;&quot;&gt;绌&lt;/span&gt;（zhu&oacute;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;噱&lt;/span&gt;头（xu&eacute;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;剽&lt;/span&gt;悍（biāo）瓜&lt;span style=&quot;text-decoration:underline;&quot;&gt;瓤&lt;/span&gt;（rǎng）&lt;span style=&quot;text-decoration:underline;&quot;&gt;曲&lt;/span&gt;尽其妙（qǔ）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．&lt;span style=&quot;text-decoration:underline;&quot;&gt;肄&lt;/span&gt;业（s&igrave;）田&lt;span style=&quot;text-decoration:underline;&quot;&gt;塍&lt;/span&gt;（ch&eacute;ng） &lt;span style=&quot;text-decoration:underline;&quot;&gt;粳&lt;/span&gt;米（gěng）&lt;span style=&quot;text-decoration:underline;&quot;&gt;泥&lt;/span&gt;古不化（n&igrave;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：B项粗<u>犷</u>guăng 相形见<u>绌chù；拙劣（zhuōliè） 咄咄duōduō</u>C<u>剽</u>悍piāo；D<u>肄</u>业yì <u>粳</u>米jīng 平时练习中注意，不认识的字不要随便读半边字，形近字要注意根据意思在词语中识记其读音（<u>绌chù拙劣（zhuōliè） 咄咄duōduō）</u>，这次考查的几个都比较典型。');
INSERT INTO `t_sys_questions` VALUES ('111', '语文', '字音', '2014-2015学年浙江台州中学高一上学期第二次统练试题语文试卷（带解析）', '&lt;p&gt;\n    下列各组词语中，加点字注音全都正确的一项是（&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;憎&lt;/span&gt;（zēng）恨&lt;span style=&quot;text-decoration:underline;&quot;&gt;曝&lt;/span&gt;（p&ugrave;）晒&lt;span style=&quot;text-decoration:underline;&quot;&gt;纤&lt;/span&gt;（qiān）巧不屈不&lt;span style=&quot;text-decoration:underline;&quot;&gt;挠&lt;/span&gt;（n&aacute;o）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．&lt;span style=&quot;text-decoration:underline;&quot;&gt;喑&lt;/span&gt;（yīn）哑&lt;span style=&quot;text-decoration:underline;&quot;&gt;摭&lt;/span&gt;（zh&iacute;）拾&lt;span style=&quot;text-decoration:underline;&quot;&gt;戕&lt;/span&gt;（qiāng）害深陷泥&lt;span style=&quot;text-decoration:underline;&quot;&gt;淖&lt;/span&gt;（n&agrave;o）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;啮&lt;/span&gt;（ni&egrave;）噬&lt;span style=&quot;text-decoration:underline;&quot;&gt;模&lt;/span&gt;（m&oacute;）样&lt;span style=&quot;text-decoration:underline;&quot;&gt;黏&lt;/span&gt;（ni&aacute;n）合&lt;span style=&quot;text-decoration:underline;&quot;&gt;锲&lt;/span&gt;（q&igrave;）而不舍\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．怪&lt;span style=&quot;text-decoration:underline;&quot;&gt;癖&lt;/span&gt;（pǐ）&lt;span style=&quot;text-decoration:underline;&quot;&gt;恣&lt;/span&gt;（zī）意躯&lt;span style=&quot;text-decoration:underline;&quot;&gt;壳&lt;/span&gt;（k&eacute;）四肢百&lt;span style=&quot;text-decoration:underline;&quot;&gt;骸&lt;/span&gt;（h&aacute;i）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：A纤xiān 巧   C 模mú 样 锲qiè 而不舍    D恣zì 意  躯壳qiào。字音题考核的内容有多音字、形似字、音近字、形声字、统读字、生僻字、方言误读七类。复习时要以《容易读错的字》《普通话异读词审音表》和高中语文课本注释里出现的字音为线索，对里边的字、词要会读，读准。对那些容易弄错的字更要有足够的注意。');
INSERT INTO `t_sys_questions` VALUES ('112', '语文', '字音', '2014-2015学年浙江省台州市书生中学高一上第三次月考语文试卷（带解析）', '&lt;p&gt;\n    下列各组词语中注音&lt;span style=&quot;text-decoration:underline;&quot;&gt;全部正确&lt;/span&gt;的一组是（2分）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;摭&lt;/span&gt;拾（zh&eacute;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;跬&lt;/span&gt;步（kuǐ）&lt;span style=&quot;text-decoration:underline;&quot;&gt;恪&lt;/span&gt;尽职守（k&egrave;）挥斥方&lt;span style=&quot;text-decoration:underline;&quot;&gt;遒&lt;/span&gt;（qi&uacute;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．&lt;span style=&quot;text-decoration:underline;&quot;&gt;戕&lt;/span&gt;害（qiāng）&lt;span style=&quot;text-decoration:underline;&quot;&gt;驽&lt;/span&gt;马（n&uacute;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;锲&lt;/span&gt;而不舍（qi&egrave;）面面相&lt;span style=&quot;text-decoration:underline;&quot;&gt;觑&lt;/span&gt;（q&ugrave;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．饿&lt;span style=&quot;text-decoration:underline;&quot;&gt;殍&lt;/span&gt;（f&uacute;）经&lt;span style=&quot;text-decoration:underline;&quot;&gt;传&lt;/span&gt;（chu&aacute;n）田&lt;span style=&quot;text-decoration:underline;&quot;&gt;塍&lt;/span&gt;篱角（ch&eacute;ng）余音&lt;span style=&quot;text-decoration:underline;&quot;&gt;袅袅&lt;/span&gt;（niăo）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．悠&lt;span style=&quot;text-decoration:underline;&quot;&gt;邈&lt;/span&gt;（miăo）灰&lt;span style=&quot;text-decoration:underline;&quot;&gt;烬&lt;/span&gt;（j&igrave;n）四肢百&lt;span style=&quot;text-decoration:underline;&quot;&gt;骸&lt;/span&gt;（h&aacute;i）不容商&lt;span style=&quot;text-decoration:underline;&quot;&gt;榷&lt;/span&gt;（quē）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：此类题目多考查生僻字、多音字和形似字。多音字有时会因为作动词和作名词的不同，读音也不同。形似字要按照意义的不同，读音也不一样。在分析思考时，要注意声调、韵母是否正确。没有把握的可以用排除法，省时省力。A．摭拾（zhí）。C．饿殍（piǎo）经传（zhuàn）， D．不容商榷（què）。故正确选项B。');
INSERT INTO `t_sys_questions` VALUES ('113', '语文', '字音', '2014-2015学年浙江台州市书生中学高二上学期期中考试语文试卷（带解析）', '&lt;p&gt;\n    下列各组词语中加点的字的读音完全正确的一项是（&amp;nbsp;&amp;nbsp;）&lt;br/&gt;A．抽&lt;span style=&quot;text-decoration:underline;&quot;&gt;搐&lt;/span&gt;（ch&ugrave;）&amp;nbsp;&lt;span style=&quot;text-decoration:underline;&quot;&gt;潦&lt;/span&gt;水（lǎo）&amp;nbsp;&lt;span style=&quot;text-decoration:underline;&quot;&gt;吮&lt;/span&gt;吸（shǔn）&amp;nbsp;&lt;span style=&quot;text-decoration:underline;&quot;&gt;荷&lt;/span&gt;枪实弹（h&egrave;）&lt;br/&gt;B．&lt;span style=&quot;text-decoration:underline;&quot;&gt;笞&lt;/span&gt;刑（chī）&amp;nbsp;&lt;span style=&quot;text-decoration:underline;&quot;&gt;炽&lt;/span&gt;热（ch&igrave;）&amp;nbsp;猿&lt;span style=&quot;text-decoration:underline;&quot;&gt;猱&amp;nbsp;&lt;/span&gt;（r&oacute;u）&amp;nbsp;&lt;span style=&quot;text-decoration:underline;&quot;&gt;卓&lt;/span&gt;有成效（zhu&oacute;）&lt;br/&gt;C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;伺&lt;/span&gt;候（c&igrave;）&amp;nbsp;&lt;span style=&quot;text-decoration:underline;&quot;&gt;肇&lt;/span&gt;造（zh&agrave;o）&amp;nbsp;&lt;span style=&quot;text-decoration:underline;&quot;&gt;镣&lt;/span&gt;铐（li&aacute;o）&amp;nbsp;&lt;span style=&quot;text-decoration:underline;&quot;&gt;乍&lt;/span&gt;暖还寒（zh&agrave;）&lt;br/&gt;D&amp;nbsp;骖&lt;span style=&quot;text-decoration:underline;&quot;&gt;騑&lt;/span&gt;（fēi）&amp;nbsp;&lt;span style=&quot;text-decoration:underline;&quot;&gt;模&lt;/span&gt;糊（m&oacute;） &amp;nbsp;推&lt;span style=&quot;text-decoration:underline;&quot;&gt;搡&lt;/span&gt;（sǎng） 一&lt;span style=&quot;text-decoration:underline;&quot;&gt;抔&lt;/span&gt;土（p&ograve;u）\n&lt;/p&gt;', 'D', '试题分析：A 荷hè  B．猱náo  C镣liào字音题考核的内容有多音字、形似字、音近字、形声字、统读字、生僻字、方言误读七类，命题形式主要有找出注音全部正确的一项、找出读音全部相同（或不同）的一项，找出读音全部相同（或不同）的一组三类。复习时分类整理记忆，以记忆为主，训练、记忆相结合。如本题“纤”“犷”“拈”属于统读字，“皈”“霾”“锃”属于不能按形声字读半边的字，只能记忆。“称”“载”“拓”“间”“症”“吁”“佣”“靓”“嚼”属于多音字，多音字记忆要找规律，结合词义、词性、运用场合等记忆，如“称”作形容词读chèn，作动词读chēnɡ；“载” 作名词和作动词当“记录”讲时读zǎi，作动词，“装运”的意思及由此引申出来的“充满”（装满）的意思，读zài。“间” 凡是读jiān时，前面或中间加“这”、“之”“的”等可大体讲得通；“嚼”书面语读jué，口语读jiáo；“症” 比喻事情弄坏或不能解决的关健时读zhēnɡ，其余读zhènɡ；“佣”在买卖时付给中间人的报酬读yònɡ，其余读yōnɡ；“吁”在叹气、出气的声音时读和“长吁短叹”中xū，其余读yū；属于多音字中的专用词语。“否”属于方言误读。');
INSERT INTO `t_sys_questions` VALUES ('114', '语文', '字音', '2014-2015学年浙江省江山实验中学高一11月月考语文试卷（带解析）', '&lt;p&gt;\n    下列词语中加点字的读音全都正确的一项是（&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;袅&lt;/span&gt;娜（niǎo）责&lt;span style=&quot;text-decoration:underline;&quot;&gt;难&lt;/span&gt;（n&agrave;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;曝&lt;/span&gt;（b&agrave;o）背&lt;span style=&quot;text-decoration:underline;&quot;&gt;间&lt;/span&gt;不容发（jiān）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．&lt;span style=&quot;text-decoration:underline;&quot;&gt;寺&lt;/span&gt;庙（s&igrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;勒&lt;/span&gt;（lēi）紧&lt;span style=&quot;text-decoration:underline;&quot;&gt;槎&lt;/span&gt;（ch&aacute;）桠&lt;span style=&quot;text-decoration:underline;&quot;&gt;晕（&lt;/span&gt;yūn）头转向\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;赭&lt;/span&gt;（zhǔ）色罗&lt;span style=&quot;text-decoration:underline;&quot;&gt;绮&lt;/span&gt;（qǐ）颓&lt;span style=&quot;text-decoration:underline;&quot;&gt;垣&lt;/span&gt;（yu&aacute;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;教&lt;/span&gt;学相长（ji&agrave;o）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．&lt;span style=&quot;text-decoration:underline;&quot;&gt;绿&lt;/span&gt;林（lǜ）&lt;span style=&quot;text-decoration:underline;&quot;&gt;和&lt;/span&gt;诗（h&egrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;亘&lt;/span&gt;（g&egrave;ng）古&lt;span style=&quot;text-decoration:underline;&quot;&gt;似&lt;/span&gt;是而非（s&igrave;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：此类题目多考查生僻字、多音字和形似字。多音字有时会因为作动词和作名词的不同，读音也不同。形似字要按照意义的不同，读音也不一样。在分析思考时，要注意声调、韵母是否正确。没有把握的可以用排除法，省时省力。A．曝（pù）背，C．赭（zhě）色， D．亘（gèn）古。故正确选项B。');
INSERT INTO `t_sys_questions` VALUES ('115', '语文', '字音', '2015届浙江省湖州中学高三上学期期中考试语文试卷（带解析）', '&lt;p&gt;\n    下列词语中加点的字，每对读音都相同的一组是（&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;斡&lt;/span&gt;旋/ 运筹帷&lt;span style=&quot;text-decoration:underline;&quot;&gt;幄&lt;/span&gt;面&lt;span style=&quot;text-decoration:underline;&quot;&gt;颊&lt;/span&gt;/ &lt;span style=&quot;text-decoration:underline;&quot;&gt;戛&lt;/span&gt;然而止&lt;span style=&quot;text-decoration:underline;&quot;&gt;龟&lt;/span&gt;裂/ &lt;span style=&quot;text-decoration:underline;&quot;&gt;皈&lt;/span&gt;依佛门熏&lt;span style=&quot;text-decoration:underline;&quot;&gt;陶&lt;/span&gt;/ &lt;span style=&quot;text-decoration:underline;&quot;&gt;逃&lt;/span&gt;之夭夭&lt;strong class=&quot;jammerd42&quot;&gt;.&lt;/strong&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．&lt;span style=&quot;text-decoration:underline;&quot;&gt;娴&lt;/span&gt;熟/ 垂&lt;span style=&quot;text-decoration:underline;&quot;&gt;涎&lt;/span&gt;三尺&lt;span style=&quot;text-decoration:underline;&quot;&gt;惬&lt;/span&gt;意/ &lt;span style=&quot;text-decoration:underline;&quot;&gt;锲&lt;/span&gt;而不舍&lt;span style=&quot;text-decoration:underline;&quot;&gt;栅&lt;/span&gt;栏/ 叱&lt;span style=&quot;text-decoration:underline;&quot;&gt;咤&lt;/span&gt;风云抽&lt;span style=&quot;text-decoration:underline;&quot;&gt;搐&lt;/span&gt;/ 相形见&lt;span style=&quot;text-decoration:underline;&quot;&gt;绌&lt;/span&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．铁&lt;span style=&quot;text-decoration:underline;&quot;&gt;砧&lt;/span&gt;/ 日&lt;span style=&quot;text-decoration:underline;&quot;&gt;臻&lt;/span&gt;完善&lt;span style=&quot;text-decoration:underline;&quot;&gt;桎&lt;/span&gt;梏/ 博闻强&lt;span style=&quot;text-decoration:underline;&quot;&gt;识&lt;/span&gt;&lt;span style=&quot;text-decoration:underline;&quot;&gt;狙&lt;/span&gt;击/ 前&lt;span style=&quot;text-decoration:underline;&quot;&gt;倨&lt;/span&gt;后恭翩&lt;span style=&quot;text-decoration:underline;&quot;&gt;跹&lt;/span&gt;/ 屡见不&lt;span style=&quot;text-decoration:underline;&quot;&gt;鲜&lt;/span&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．晦&lt;span style=&quot;text-decoration:underline;&quot;&gt;朔&lt;/span&gt;/ 众口&lt;span style=&quot;text-decoration:underline;&quot;&gt;铄&lt;/span&gt;金&lt;span style=&quot;text-decoration:underline;&quot;&gt;肄&lt;/span&gt;业/ 自怨自&lt;span style=&quot;text-decoration:underline;&quot;&gt;艾&lt;/span&gt;灾&lt;span style=&quot;text-decoration:underline;&quot;&gt;殃&lt;/span&gt;/ &lt;span style=&quot;text-decoration:underline;&quot;&gt;怏&lt;/span&gt;怏不乐&lt;span style=&quot;text-decoration:underline;&quot;&gt;耽&lt;/span&gt;搁/ &lt;span style=&quot;text-decoration:underline;&quot;&gt;殚&lt;/span&gt;精竭虑\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：本题考查识记现代汉语普通话常用字的字音。注意常见同音字、多音字、形似字的读音。侧重两个方面：一是容易读错的字，包括形近而音不同的字和声旁已不代表读音的字；二是多音多义字，音随义移。对多音字的把握，掌握“音随意转”的原则。吃不准的情况下，可多考虑从词语具体意义、词语的词性的角度以及口语书面语的角度入手解决问题。善用排除法和认定法。如果题干是全部不相同的，就把有两项相同的去掉；如果题干是与所给字的读音全部相同的，则去掉一个不同的一项；如果题干是读音全都正确，就去掉有一个错误的一项；如果题干是读音有错误的一组，就排除肯定无误的一项；如果按题目的要求直接可以认定的答案应该是最有把握的答案。字音考题看似简单，其实暗藏杀机，特别是对说普通话有缺陷的方言区考生，一定注意平时学习中的正确识读。<u>龟</u>裂jūn<u>皈</u>依佛门guī<u>狙</u>击jū前<u>倨</u>后恭jù灾<u>殃</u>yāng<u>怏</u>怏不乐yàng。');
INSERT INTO `t_sys_questions` VALUES ('116', '语文', '字音', '2014-2015学年天津一中高三年级语文二月考语文试卷（带解析）', '&lt;p&gt;\n    下列各组词语中加点的字，注音错误最多的一组是&amp;nbsp;（&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;彳&lt;/span&gt;（ch&igrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;亍&lt;/span&gt;（ch&ugrave;）頽&lt;span style=&quot;text-decoration:underline;&quot;&gt;圮&lt;/span&gt;（qǐ）漫&lt;span style=&quot;text-decoration:underline;&quot;&gt;溯&lt;/span&gt;（s&ugrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;昭&lt;/span&gt;告世人（zh&agrave;o）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．惩&lt;span style=&quot;text-decoration:underline;&quot;&gt;创&lt;/span&gt;（chuāng）敛&lt;span style=&quot;text-decoration:underline;&quot;&gt;裾&lt;/span&gt;（jū）&lt;span style=&quot;text-decoration:underline;&quot;&gt;混&lt;/span&gt;沌（h&ugrave;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;揠&lt;/span&gt;苗助长（y&agrave;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;弭&lt;/span&gt;谤（mǐ）&lt;span style=&quot;text-decoration:underline;&quot;&gt;当&lt;/span&gt;轴（dāng）&lt;span style=&quot;text-decoration:underline;&quot;&gt;嘎&lt;/span&gt;吱（gē）旁&lt;span style=&quot;text-decoration:underline;&quot;&gt;稽&lt;/span&gt;博采（jī）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．&lt;span style=&quot;text-decoration:underline;&quot;&gt;挫&lt;/span&gt;折（cuō）&lt;span style=&quot;text-decoration:underline;&quot;&gt;祈&lt;/span&gt;祷（qǐ）&lt;span style=&quot;text-decoration:underline;&quot;&gt;阜&lt;/span&gt;盛（fǔ）燕侣莺&lt;span style=&quot;text-decoration:underline;&quot;&gt;俦&lt;/span&gt;（ch&oacute;u）&lt;br/&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '试题分析：D．<u>挫</u>折（cuò）<u>祈</u>祷<u>（</u>qí）<u>阜</u>盛（fù）；A頽<u>圮（</u>tuípǐ）<u>昭</u>告（zhāo gào）B项全正确；C项<br><u>嘎</u>吱（gā zhī）这些都是平时容易读错的词语，做完之后要注意总结，早读时多读读记记。');
INSERT INTO `t_sys_questions` VALUES ('117', '语文', '字音', '2014-2015学年天津一中高三年级语文二月考语文试卷（带解析）', '&lt;p&gt;\n    下列词语中加点字的读音，全部注音相同的一组是&amp;nbsp;（&amp;nbsp;&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;晕&lt;/span&gt;场 眩&lt;span style=&quot;text-decoration:underline;&quot;&gt;晕&lt;/span&gt;&lt;span style=&quot;text-decoration: none;&quot;&gt;&amp;nbsp;&lt;/span&gt;日&lt;span style=&quot;text-decoration:underline;&quot;&gt;晕&lt;/span&gt;&lt;span style=&quot;text-decoration: none;&quot;&gt;&amp;nbsp;&lt;/span&gt;头&lt;span style=&quot;text-decoration:underline;&quot;&gt;晕&lt;/span&gt;目眩\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．取&lt;span style=&quot;text-decoration:underline;&quot;&gt;缔&lt;/span&gt;&lt;span style=&quot;text-decoration: none;&quot;&gt;&amp;nbsp;&lt;/span&gt;真&lt;span style=&quot;text-decoration:underline;&quot;&gt;谛&lt;/span&gt;&lt;span style=&quot;text-decoration: none;&quot;&gt;&amp;nbsp;&lt;/span&gt;烟&lt;span style=&quot;text-decoration:underline;&quot;&gt;蒂&lt;/span&gt;&lt;span style=&quot;text-decoration: none;&quot;&gt;&amp;nbsp;&lt;/span&gt;莺&lt;span style=&quot;text-decoration:underline;&quot;&gt;啼&lt;/span&gt;鸟啭\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．恰&lt;span style=&quot;text-decoration:underline;&quot;&gt;当&lt;/span&gt;&lt;span style=&quot;text-decoration: none;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;text-decoration:underline;&quot;&gt;当&lt;/span&gt;真&amp;nbsp;&lt;span style=&quot;text-decoration:underline;&quot;&gt;当&lt;/span&gt;做 长歌&lt;span style=&quot;text-decoration:underline;&quot;&gt;当&lt;/span&gt;哭\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．&lt;span style=&quot;text-decoration:underline;&quot;&gt;靡&lt;/span&gt;费 奢&lt;span style=&quot;text-decoration:underline;&quot;&gt;靡&lt;/span&gt;&lt;span style=&quot;text-decoration: none;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;text-decoration:underline;&quot;&gt;靡&lt;/span&gt;散&amp;nbsp;&lt;span style=&quot;text-decoration:underline;&quot;&gt;靡靡&lt;/span&gt;之音\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：A （（1）yūn，用于“晕倒”“晕头转向”“头晕”；（2）yùn，用于“晕车”“月晕”“眼晕”。其中“日<u>晕”是四声，其他为一声）</u>B（前三个通读dì最后一个读tí）C（通读dàng，另外一个音是dāng，读四声的意思相对少一些，可记住几个典型词语）D（浪费、奢侈和分散三个意思读mí，其他的意思读mǐ。D项就最后一个词读mǐ，其他通读mí）');
INSERT INTO `t_sys_questions` VALUES ('118', '语文', '字音', '2014-2015学年四川雅安市重点中学高一上学期期末模拟语文试卷（带解析）', '&lt;p&gt;\n    下列词语中，加点字注音无误的一组是\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;佝&lt;/span&gt;偻（gōu）佛&lt;span style=&quot;text-decoration:underline;&quot;&gt;龛&lt;/span&gt;（kān）静&lt;span style=&quot;text-decoration:underline;&quot;&gt;谧&lt;/span&gt;（m&igrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;蓊蓊&lt;/span&gt;郁郁（wěng）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．慰&lt;span style=&quot;text-decoration:underline;&quot;&gt;藉&lt;/span&gt;（ji&egrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;炫&lt;/span&gt;耀（xu&aacute;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;跫&lt;/span&gt;音（qi&oacute;ng）&lt;span style=&quot;text-decoration:underline;&quot;&gt;亘&lt;/span&gt;古未变（g&egrave;ng）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;猝&lt;/span&gt;然（c&ugrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;踟&lt;/span&gt;蹰（ch&iacute;）红&lt;span style=&quot;text-decoration:underline;&quot;&gt;硕&lt;/span&gt;（su&ograve;）意味&lt;span style=&quot;text-decoration:underline;&quot;&gt;隽&lt;/span&gt;永（j&ugrave;n）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．&lt;span style=&quot;text-decoration:underline;&quot;&gt;哂&lt;/span&gt;笑（shěn） 沟&lt;span style=&quot;text-decoration:underline;&quot;&gt;壑&lt;/span&gt;（h&egrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;喟&lt;/span&gt;然（w&egrave;i）义愤填&lt;span style=&quot;text-decoration:underline;&quot;&gt;膺&lt;/span&gt;（yīng）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：从近几年的高考看，高考主要考查常见字的读音，解答语音题的关键主要在于平时的积累，要养成注意读准字音的习惯，特别要注意那些多音字和容易被声旁误导读音的字以及报刊上常见但容易人们读错的字。要树立长期积累的意识。本题考查的字，既有多音字，也有容易读错的字。B “炫耀”， 声调错误，耀，应读xuàn；“<u>亘</u>古未变”一词，亘，应读gèn，韵母错误；C“红<u>硕</u>”，声母错误，硕，应读shuò；“意味<u>隽</u>永”，韵母错误，隽，应读juàn；D“喟然”形近字读音混淆，喟，应读kuì。');
INSERT INTO `t_sys_questions` VALUES ('119', '语文', '字音', '2014-2015学年四川省新津中学高一12月月考语文试卷（带解析）', '&lt;p&gt;\n    下列加点字，注音都正确的一项是（&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．纵横捭&lt;span style=&quot;text-decoration:underline;&quot;&gt;阖&lt;/span&gt;（bǎi） &lt;span style=&quot;text-decoration:underline;&quot;&gt;涮&lt;/span&gt;羊肉（su&agrave;n）舌&lt;span style=&quot;text-decoration:underline;&quot;&gt;苔&lt;/span&gt;（tāi）&lt;span style=&quot;text-decoration:underline;&quot;&gt;箴&lt;/span&gt;言（zhēn）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．自&lt;span style=&quot;text-decoration:underline;&quot;&gt;惭&lt;/span&gt;形秽（c&aacute;n）上&lt;span style=&quot;text-decoration:underline;&quot;&gt;蹿&lt;/span&gt;下跳（cuān） &lt;span style=&quot;text-decoration:underline;&quot;&gt;筵&lt;/span&gt;席（y&agrave;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;亲&lt;/span&gt;家（q&igrave;ng）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．有&lt;span style=&quot;text-decoration:underline;&quot;&gt;血&lt;/span&gt;有肉（xiě）千&lt;span style=&quot;text-decoration:underline;&quot;&gt;载&lt;/span&gt;难逢（z&agrave;i）一丘之&lt;span style=&quot;text-decoration:underline;&quot;&gt;貉&lt;/span&gt;（lu&ograve;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;和&lt;/span&gt;稀泥（hu&ograve;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．书声&lt;span style=&quot;text-decoration:underline;&quot;&gt;琅琅&lt;/span&gt;（l&aacute;ng）斗转&lt;span style=&quot;text-decoration:underline;&quot;&gt;参&lt;/span&gt;横（shēn） &lt;span style=&quot;text-decoration:underline;&quot;&gt;舴&lt;/span&gt;艋（z&eacute;）嗜酒成&lt;span style=&quot;text-decoration:underline;&quot;&gt;癖&lt;/span&gt;（pǐ）&lt;br/&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '试题分析：字音题考核的内容有多音字、形似字、音近字、形声字、统读字、生僻字、方言误读七类，命题形式主要有找出注音全部正确的一项、找出读音全部相同（或不同）的一项，找出读音全部相同（或不同）的一组三类。复习时分类整理记忆，以记忆为主，训练、记忆相结合。这是一道考核形似字的读音的一组题目，平时注意积累。A．涮羊肉（shuàn）B．筵席（yán）C．有血有肉（xuè）；载（zǎi）；貉（hè）');
INSERT INTO `t_sys_questions` VALUES ('120', '语文', '字音', '2014-2015学年四川省绵阳南山中学高一12月月考语文试卷（带解析）', '&lt;p&gt;\n    下列词语中加点字，读音完全正确的一项是\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．作&lt;span style=&quot;text-decoration:underline;&quot;&gt;揖&lt;/span&gt;（yī）&lt;span style=&quot;text-decoration:underline;&quot;&gt;浸&lt;/span&gt;渍（j&igrave;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;瞋&lt;/span&gt;目（chēng） &lt;span style=&quot;text-decoration:underline;&quot;&gt;屏&lt;/span&gt;息以待（bǐng）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．主&lt;span style=&quot;text-decoration:underline;&quot;&gt;角&lt;/span&gt;（ju&eacute;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;肖&lt;/span&gt;像（xi&agrave;o） &lt;span style=&quot;text-decoration:underline;&quot;&gt;着&lt;/span&gt;急（zh&aacute;o） 扣人心&lt;span style=&quot;text-decoration:underline;&quot;&gt;弦&lt;/span&gt;（xi&aacute;n）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．冰&lt;span style=&quot;text-decoration:underline;&quot;&gt;屑&lt;/span&gt;（xi&egrave;）婆&lt;span style=&quot;text-decoration:underline;&quot;&gt;娑&lt;/span&gt;（suō）机&lt;span style=&quot;text-decoration:underline;&quot;&gt;械&lt;/span&gt;（ji&egrave;）叱&lt;span style=&quot;text-decoration:underline;&quot;&gt;咤&lt;/span&gt;风云（ch&agrave;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．&lt;span style=&quot;text-decoration:underline;&quot;&gt;譬&lt;/span&gt;如（p&igrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;似&lt;/span&gt;的（s&igrave;）解&lt;span style=&quot;text-decoration:underline;&quot;&gt;剖&lt;/span&gt;（pōu）博闻强&lt;span style=&quot;text-decoration:underline;&quot;&gt;识&lt;/span&gt;（zh&igrave;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：此类题目多考查生僻字、多音字和形似字。多音字有时会因为作动词和作名词的不同，读音也不同。形似字要按照意义的不同，读音也不一样。在分析思考时，要注意声调、韵母是否正确。没有把握的可以用排除法，省时省力。A．<u>瞋</u>目（chēn）必修一P19；C．机<u>械</u>（xiè）必修一P50，叱<u>咤</u>风云（zhà）必修一P36；D．<u>似</u>的（shì）必修一P44。故正确选项B。');
INSERT INTO `t_sys_questions` VALUES ('121', '语文', '字音', '2015届湖南省株洲市高三教学质量统一检测（一）语文试卷（带解析）', '&lt;p&gt;下列汉字依次填入语段中括号内，字音和字形全都正确的一组是&amp;nbsp;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;他日理万（&amp;nbsp;）仍参与文化建设，（&amp;nbsp;&amp;nbsp;&amp;nbsp;）理了中国传统文化一脉流传的变迁。华夏智慧的江河，一脉相承，不拘不泥。如今，我们又要如何让这源于千万年的智慧继续流动呢？一谈到当今中国，就不由得想到戊（&amp;nbsp;&amp;nbsp;&amp;nbsp;）变法、五四运动、军阀混战&hellip;&hellip;经历了太多的变迁，思想界最终的（&amp;nbsp;）势是&ldquo;学习借鉴&rdquo;。&lt;/p&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;100%&quot;&gt;A．机（ｊī）疏（ｓｈū）戌（ｘū）趋（ｑ&ugrave;）&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;B．几（ｊǐ）疏（ｓｈū）戍（ｓｈ&ugrave;）趣（ｑ&ugrave;）&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;C．几（ｊī）梳（ｓｈū）戍（ｓｈ&ugrave;）趣（ｑū）&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;D．机（ｊī）梳（ｓｈū）戌（ｘū）趋（ｑū）&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'D', '试题分析：常见多音字标次读音正确的可能性大，标常读音正确的可能性小。形声字标不同声旁读音的正确可能性大，标同声旁读音的正确可能性小。常见字标音正确的可能性小。生僻字一般不会标错音。一般考辨析，不考拼写，不考查汉语拼音方案。高考只考别字的辨析。逐个审读容易出错的字，从中可以辨析出一些形近而音不同的别字。如果怀疑某个是别字，可以写出几个同音字来比较，可以写出几个形似字来比较。通过分析形声字的形旁来推导这个字的含意，再放到这个词语中去判定是否相符。对于独体字或形声字中的形旁已失去表意功能的形声字可以通过分析词语的语法结构来确定它是不是别字，还可以通过对整个词语的理解，来寻找不合语境的别字。还有一部分就只能依靠我们平时的积累了。');
INSERT INTO `t_sys_questions` VALUES ('122', '语文', '字音', '2015届湖北省襄阳市高三上学期第一次调研考试语文试卷（带解析）', '&lt;p&gt;\n    下列词语中加点的字，读音全都正确的一组是&lt;br/&gt;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&lt;span style=&quot;text-decoration:underline;&quot;&gt;籼&lt;/span&gt;米（xiān）&lt;span style=&quot;text-decoration:underline;&quot;&gt;隶&lt;/span&gt;属（l&igrave;）横&lt;span style=&quot;text-decoration:underline;&quot;&gt;亘&lt;/span&gt;（g&egrave;n）&lt;span style=&quot;text-decoration:underline;&quot;&gt;悄&lt;/span&gt;然无声（qiǎo）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．&lt;span style=&quot;text-decoration:underline;&quot;&gt;蕾&lt;/span&gt;丝（l&eacute;i）&lt;span style=&quot;text-decoration:underline;&quot;&gt;钦&lt;/span&gt;慕（qīn）&lt;span style=&quot;text-decoration:underline;&quot;&gt;憎&lt;/span&gt;恨（zēng）鸡毛&lt;span style=&quot;text-decoration:underline;&quot;&gt;掸&lt;/span&gt;子（dǎn）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;叨&lt;/span&gt;扰（tāo）璎&lt;span style=&quot;text-decoration:underline;&quot;&gt;珞&lt;/span&gt;（l&agrave;o）桌&lt;span style=&quot;text-decoration:underline;&quot;&gt;帏&lt;/span&gt;（w&eacute;i）大有&lt;span style=&quot;text-decoration:underline;&quot;&gt;裨&lt;/span&gt;益（b&igrave;）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．&lt;span style=&quot;text-decoration:underline;&quot;&gt;挣&lt;/span&gt;脱（zh&egrave;ng）估&lt;span style=&quot;text-decoration:underline;&quot;&gt;量&lt;/span&gt;（li&aacute;ng） &lt;span style=&quot;text-decoration:underline;&quot;&gt;夹&lt;/span&gt;缝（ji&aacute;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;骁&lt;/span&gt;勇善战（xiāo）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;\n&lt;p&gt;\n    &lt;br/&gt;\n&lt;/p&gt;\n&lt;p&gt;\n    \n					\n&lt;/p&gt;', 'A', '试题分析：此题考查字音的识记能力。字音题一般有三种考查类型：音误、调误、音调全误。本题主要考查多音字的辨析能力。多音字分为多音多义字和同义多义字两种，多音字的辨析可以按照记少不记多，以义定音，以词性定音，以语体定音等方法来复习。要注意一些专用词语的读音。B项，蕾lěi丝；C项，璎珞luò；D项，夹jiā缝。所以选A。');
INSERT INTO `t_sys_questions` VALUES ('123', '语文', '字音', '2015届湖北省武汉市武昌区高三元月调考语文试卷（带解析）', '&lt;p&gt;\n    下列各组词语中，加点字的注音全都正确的一组是（&amp;nbsp;&amp;nbsp;&amp;nbsp;）&lt;br/&gt;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．默&lt;span style=&quot;text-decoration:underline;&quot;&gt;契&lt;/span&gt;（q&igrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;栅&lt;/span&gt;（zh&agrave;）栏&lt;span style=&quot;text-decoration:underline;&quot;&gt;锃&lt;/span&gt;（z&egrave;ng）亮冷嘲热&lt;span style=&quot;text-decoration:underline;&quot;&gt;讽&lt;/span&gt;（fěng）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．&lt;span style=&quot;text-decoration:underline;&quot;&gt;簇&lt;/span&gt;（c&ugrave;）拥&lt;span style=&quot;text-decoration:underline;&quot;&gt;讣&lt;/span&gt;（b&ugrave;）告&lt;span style=&quot;text-decoration:underline;&quot;&gt;徜&lt;/span&gt;（ch&aacute;ng）徉&lt;span style=&quot;text-decoration:underline;&quot;&gt;殒&lt;/span&gt;（yǔn）身不恤\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;纤&lt;/span&gt;（qiān）细妆&lt;span style=&quot;text-decoration:underline;&quot;&gt;奁&lt;/span&gt;（li&aacute;n）广&lt;span style=&quot;text-decoration:underline;&quot;&gt;袤&lt;/span&gt;（m&agrave;o）乳&lt;span style=&quot;text-decoration:underline;&quot;&gt;臭&lt;/span&gt;（xi&ugrave;）未干\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．磕&lt;span style=&quot;text-decoration:underline;&quot;&gt;绊&lt;/span&gt;（p&agrave;n）睥&lt;span style=&quot;text-decoration:underline;&quot;&gt;睨&lt;/span&gt;（n&igrave;）脚&lt;span style=&quot;text-decoration:underline;&quot;&gt;踝&lt;/span&gt;（hu&aacute;i）羽扇&lt;span style=&quot;text-decoration:underline;&quot;&gt;纶&lt;/span&gt;（guān）巾\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：字音题考核的内容有多音字、形似字、音近字、形声字、统读字、生僻字、方言误读七类，命题形式主要有找出注音全部正确的一项、找出读音全部相同（或不同）的一项，找出读音全部相同（或不同）的一组三类。复习时分类整理记忆，以记忆为主，训练、记忆相结合。 B项， 讣（bù） ——讣告fù（也叫讣文，又叫“讣闻”，是人死后报丧的凶讯）；C项，纤（qiān）细——纤细xiān（ [xiān]1．细小2．吝啬；[qiàn]拉船前进的绳子）；D项，磕绊（pàn） ——磕绊bàn（一般用来形容人生或者感情的坎坷 ）。');
INSERT INTO `t_sys_questions` VALUES ('124', '语文', '字音', '2014-2015学年河南省登封市实验高中高一12月月考语文试卷（带解析）', '&lt;p&gt;\n    下列词语中加点字的读音完全正确的一项是&lt;br/&gt;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．一&lt;span style=&quot;text-decoration:underline;&quot;&gt;椽&lt;/span&gt;（chuan）落&lt;span style=&quot;text-decoration:underline;&quot;&gt;蕊&lt;/span&gt;（ruǐ）敛&lt;span style=&quot;text-decoration:underline;&quot;&gt;裾&lt;/span&gt;（jū）&lt;span style=&quot;text-decoration:underline;&quot;&gt;蓊蓊&lt;/span&gt;郁郁（wěng）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．袅&lt;span style=&quot;text-decoration:underline;&quot;&gt;娜&lt;/span&gt;（n&agrave;）点&lt;span style=&quot;text-decoration:underline;&quot;&gt;缀&lt;/span&gt;（zhu&igrave;）变&lt;span style=&quot;text-decoration:underline;&quot;&gt;徵&lt;/span&gt;（zhǐ）匪我&lt;span style=&quot;text-decoration:underline;&quot;&gt;愆&lt;/span&gt;（qiān）期\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．&lt;span style=&quot;text-decoration:underline;&quot;&gt;纤&lt;/span&gt;细（qiān）&lt;span style=&quot;text-decoration:underline;&quot;&gt;罹&lt;/span&gt;难（l&iacute;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;葳蕤&lt;/span&gt;（wēi ru&iacute;）绕树三&lt;span style=&quot;text-decoration:underline;&quot;&gt;匝&lt;/span&gt;（zhā）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．&lt;span style=&quot;text-decoration:underline;&quot;&gt;侘&lt;/span&gt;傺（ch&agrave;）&lt;span style=&quot;text-decoration:underline;&quot;&gt;芙&lt;/span&gt;蓉（fū）伶&lt;span style=&quot;text-decoration:underline;&quot;&gt;俜&lt;/span&gt; （pīng）&lt;span style=&quot;text-decoration:underline;&quot;&gt;将&lt;/span&gt;子无怒（qiāng）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：本题考查识记现代汉语普通话常用字的字音的能力，此题主要涉及到多音字如“”以及形声字的误读现象等考查，难度不大。B袅娜nuó；C纤xiān，匝zā；D芙fú。');
INSERT INTO `t_sys_questions` VALUES ('127', '语文', '字音', '百度文库-经典字音练习题', '&lt;p&gt;\n    下列词语中加点的字，每对的读音都不相同的一项是（ &amp;nbsp; &amp;nbsp;）\n&lt;/p&gt;\n&lt;p&gt;\n    A．妇&lt;span style=&quot;text-decoration: underline;&quot;&gt;孺&lt;/span&gt;／&lt;span style=&quot;text-decoration: underline;&quot;&gt;懦&lt;/span&gt;弱 &amp;nbsp; 料&lt;span style=&quot;text-decoration: underline;&quot;&gt;峭&lt;/span&gt;／刀&lt;span style=&quot;text-decoration: underline;&quot;&gt;鞘&lt;/span&gt; &amp;nbsp; 打&lt;span style=&quot;text-decoration: underline;&quot;&gt;折&lt;/span&gt;／&lt;span style=&quot;text-decoration: underline;&quot;&gt;折&lt;/span&gt;本 &amp;nbsp; 颓&lt;span style=&quot;text-decoration: underline;&quot;&gt;圮&lt;/span&gt;/&lt;span style=&quot;text-decoration: underline;&quot;&gt;杞&lt;/span&gt;人忧天\n&lt;/p&gt;\n&lt;p&gt;\n    B．惊蛰／真挚 &amp;nbsp; 喟叹／称谓 &amp;nbsp; 着陆／着急 &amp;nbsp; 诧异/叱咤风云\n&lt;/p&gt;\n&lt;p&gt;\n    C．蜗牛／女娲 &amp;nbsp; 灼热／斟酌 &amp;nbsp; 风靡／奢靡 &amp;nbsp; 贻误/怡然自得\n&lt;/p&gt;\n&lt;p&gt;\n    D．簇拥／箭镞 &amp;nbsp; 倚靠／绮丽 &amp;nbsp; 纤细／纤维 &amp;nbsp; 联袂/三昧真火\n&lt;/p&gt;', 'B', '【解析】选B。本题重点考查考生对现代汉语字音的正确识记，即辨识加点词语中出现的读音错误。A项分别是rú/nuî，qiào/qiào，zhã/shã，pǐ/qǐ；B 项zhã/zhì，kuì/wâi，zhuï/zháo，chà/zhà；C项 wō/wā，zhuï/zhuï，mǐ/mí,yí/ yí；D项cù/zú，yǐ/qǐ，xiān/xiān,mâi/wâi。');
INSERT INTO `t_sys_questions` VALUES ('129', '历史', '宋明理学', '2015•北京文综•15', '&lt;p&gt;\n    明朝中后期，王阳明学说在中国士大夫中流行。朝鲜来华使者对此不理解，认为&ldquo;阳明敢肆己意，谤辱朱子，实斯文之罪人也&rdquo;。结合所学判断，下列选项正确的有( &amp;nbsp;)&amp;nbsp;\n&lt;/p&gt;\n&lt;p&gt;\n    ①朝鲜使者以程朱理学为正宗&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;②王阳明心学超越了理学范畴&amp;nbsp;\n&lt;/p&gt;\n&lt;p&gt;\n    ③王阳明与朱熹观点明显不同&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;④王阳明心学是对儒学的叛逆&amp;nbsp;\n&lt;/p&gt;\n&lt;table&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;241&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;\n                &lt;p style=&quot;white-space: normal;&quot;&gt;\n                    A．①②\n                &lt;/p&gt;\n            &lt;/td&gt;\n            &lt;td width=&quot;241&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;\n                B．②③\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;241&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;\n                &lt;span style=&quot;background-color: rgb(237, 245, 250);&quot;&gt;C．①③&lt;/span&gt;\n            &lt;/td&gt;\n            &lt;td width=&quot;241&quot; valign=&quot;top&quot; style=&quot;word-break: break-all;&quot;&gt;\n                &lt;p style=&quot;margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal;&quot;&gt;\n                    D．②④&lt;br/&gt;\n                &lt;/p&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '【解析】朝鲜来华使者认为“谤辱朱子，实斯文之罪人也”，说明他们以程朱理学为正宗，故①正确；心学是对程朱理学的发展，并未超越理学范畴，心学承认“理”的存在，只是求理的方法不是外求而是在内心中领悟，故②错误；王阳明主张“发明本心以求理”，朱熹求理的方法是“格物致知”，二者观点明显不同，故③正确；王阳明心学是对儒学的发展而不是叛逆，故④错误，选择C项符合题意。【考点】宋明理学——程朱理学、陆王心学');
INSERT INTO `t_sys_questions` VALUES ('130', '历史', '辛亥革命', '2015届福建漳州市芗城中学高三10月月考历史试卷（带解析）', '&lt;p&gt;\n    1912年成立的中华民国临时政府被称为亚洲第一个&ldquo;美国式&rdquo;的共和国政府，主要是因为它 （&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．实行三权分立的政治体制\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．是在美国支持下建立的\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．废除了封建君主专制统治\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．是通过资产阶级革命建立的\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：本题主要考查学生对所学知识的理解运用能力，难度较低。根据题干信息，主要理解“美国式”，其共和国政府的显著特点就是三权分立的政治体制，这是关键；B项不符史实，排除；C、D两项表述本身正确，但与题干无关。所以，正确答案选A，B C D三项错误。<br>考点：近代中国的民主革命·辛亥革命·中华民国与《中华民国临时约法》 ；欧美代议制的确立与发展·美国共和制的确立·《1787年宪法》·美国联邦制总统共和制政体的权力结构');
INSERT INTO `t_sys_questions` VALUES ('131', '历史', '辛亥革命', '2015届安徽江淮十校高三8月联考历史试卷（带解析）', '&lt;p&gt;\n    下图是辛亥革命时期的一幅漫画，对此解读正确的是&amp;nbsp;&amp;nbsp;&amp;nbsp; (&amp;nbsp;&amp;nbsp;&amp;nbsp; )&lt;br/&gt;&lt;img src=&quot;http://imgs.haoservice.com/TiKu/tikupic/d7/db/d7fdb2171c9b547611bfa0a549c3bfdf.jpg&quot;/&gt;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．武昌起义各地纷纷响应\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．革命派大力弘扬民主\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．革命隐藏着失败的危机\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．共和政体已深入人心\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：本题主要考查辛亥革命。从漫画可知，作为辛亥革命的成果——民主共和处于汪洋大海的包围之中，预示着辛亥革命随时隐藏着失败的危机。故应选C。<br>考点：近代中国反侵略、求民主的潮流·辛亥革命·辛亥革命的危机');
INSERT INTO `t_sys_questions` VALUES ('132', '历史', '辛亥革命', '2014-2015学年重庆杨家坪中学高一上期第三次月考历史试卷（带解析）', '&lt;p&gt;\n    观察图片，下列按图片顺序对应的信息，不准确的一组是（&amp;nbsp;&amp;nbsp;&amp;nbsp;）&lt;br/&gt;&lt;img src=&quot;http://imgs.haoservice.com/TiKu/tikupic/2a/bb/2a5bbd92b9d4a450093b6e42c885c373.png&quot;/&gt;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．颁布于1912年、1949年、1954年\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．由南京临时政府参议院、新政协、全国人大制定\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．体现资产阶级民主宪法、新中国临时宪法、社会主义类型宪法性质\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．标志着近代民主革命高潮、社会主义革命胜利、过渡时期政治建设成就\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '试题分析：本题主要考查学生正确解读图片和运用所学知识解决问题的能力。本题考查中国近现代政治民主化历程.《中国人民政治协商会议共同纲领》颁布于1949年,新民主主义革命胜利,而社会主义革命(即三大改造)尚未胜利,故选择D项. A、B、C叙述符合史实。<br>考点：现代中国的政治建设与祖国统一·新中国初期的政治建设·《共同纲领》。');
INSERT INTO `t_sys_questions` VALUES ('133', '历史', '辛亥革命', '2014-2015学年广东湛江师院附中等两校高一上期期中联考历史试卷（带解析）', '&lt;p&gt;\n    1905年夏，孙中山曾指出：&ldquo;此一省欲起事，彼一省亦欲起事，不相联络，各自号召，终必成秦末二十余国之争。&rdquo;这表明孙中山：（&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．认识到清朝的覆亡已成为历史的必然\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．看到了蓬勃发展的革命形势\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．已成为资产阶级革命运动的公认领袖\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．已感到建立统一资产阶级政党的迫切性\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '试题分析：本题考查学生阅读信息和根据所学知识解决问题的能力。材料内容反映的是孙中山认识到革命力量须有所联合，强调分散的革命力量会导致国家的分裂，各地分散的斗争迫切需要统一的组织和领导，D 符合题意。材料未分析清政府腐朽反动不得人心，违背历史潮流，因此排除A；材料强调应该如何斗争而不是革命形势高涨，排除B；此时孙中山还未成为公认的革命领袖，排除C。<br>考点：近代中国的民主革命·辛亥革命·同盟会');
INSERT INTO `t_sys_questions` VALUES ('134', '历史', '辛亥革命', '2014-2015学年广东湛江师院附中等两校高一上期期中联考历史试卷（带解析）', '&lt;p&gt;\n    南京临时政府颁布的《临时约法》是中国第一部资产阶级民主宪法，它规定&lt;br/&gt;（1）国家主权属于全体国民&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;（2）临时大总统有权单独行使行政权&lt;br/&gt;（3）国民享有人身、言论等自由&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;（4）确立三权分立的政治体制\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．（1）（2）（3）\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．（1）（2）（4）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．（1）（3）（4）&lt;br/&gt;&amp;nbsp;\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．（2）（3）（4）\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('135', '历史', '辛亥革命', '2014-2015学年江西赣州市十二县市高一上期期中联考历史试卷（带解析）', '&lt;p&gt;\n    梁启超曾撰文写道:辛亥革命有什么意义呢?简单说：第一,觉得凡不是中国人都没有权来管中国人的事;第二,觉得凡是中国人都有权来管中国人的事.他主要肯定辛亥革命\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．增强了民族民主意识\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．推翻了封建帝制\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．确立了民主共和政体\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．实现了民族独立\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：主要考查学生分析史料的能力和对辛亥革命意义的理解。做题的关键是理解材料，两句话说明了两个意思，第一句话是强调，反对帝国主义干涉中国内政，体现了民族意识；第二句话强调，主权属于人民，人人有权利来管理自己的国家，体现了民主意识。所以是A。<br>考点：近代中国的民主革命·辛亥革命·辛亥革命的历史意义');
INSERT INTO `t_sys_questions` VALUES ('136', '历史', '辛亥革命', '2014-2015学年江西赣州市十二县市高一上期期中联考历史试卷（带解析）', '&lt;p&gt;\n    &ldquo;少年壮志扫胡尘，叱咤风云革命军。号角一声惊睡梦，英雄四起唤沉沦。剪刀除辫人称快，铁槛捐躯世不平。&rdquo;该诗中提到的&ldquo;胡尘&rdquo;是指\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．封建制度\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．满清政府\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．西方列强\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．北洋政府\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：主要考查学生分析史料的能力和对辛亥革命革命党人“驱除鞑虏”的理解。做题的关键是理解材料，中国历来有夷夏之别的观念，从题干中的出现“革命军”、“除辫”等，可知“革命军”主要指革命党人，“除辫”主要是指革命党人在革命中和革命之后变发的行为；所以“胡尘”是指满清政府，故B项正确。<br>考点：近代中国的民主革命·辛亥革命·同盟会的政治纲领');
INSERT INTO `t_sys_questions` VALUES ('137', '历史', '辛亥革命', '2014-2015学年河北邢台一中高一上期第三次考试历史试卷（带解析）', '&lt;p&gt;\n    1912年成立的中华民国临时政府被称为亚洲第一个&ldquo;美国式&rdquo;的共和国政府，主要是因为它\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．实行三权分立的政治体制\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．是在美国支持下建立的\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．废除了封建君主专制统治\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．是通过资产阶级革命建立的\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：本题考查的是辛亥革命。根据所学知识，美国是在三权分立的政治制度下建立起的总统共和制国家，而中华民国南京临时政府也是以此为原则建立起来的共和政体。B不符合史实；CD与题干中““美国式”的共和国政府”不符，因此选A。<br>考点：近代中国的民主革命·辛亥革命·辛亥革命');
INSERT INTO `t_sys_questions` VALUES ('138', '历史', '辛亥革命', '2015届湖南浏阳醴陵攸县三校高三联考历史试卷（带解析）', '&lt;p&gt;\n    庄秋水在《武昌三日：谣言下的革命》中写道：&ldquo;10月10日的武昌城盛传清政府正在捉拿没有辫子的革命党的谣言。不管是有罪还是无罪，汉族士兵都害怕自己会在大清洗中丢掉性命，意识到投入叛乱比丢掉性命更合算。&rdquo;这则材料实际上反映了\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．武昌首义带有一定偶然性\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．清政府的失控与信用破产\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．谣言有时候能推动历史的发展\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．辛亥革命具有强烈的民族意识\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：本题主要考查武昌起义。材料中汉族士兵听信谣言，害怕自己会在清政府的大清洗中丢掉性命，意识到投入叛乱比丢掉性命更合算，说明士兵的反叛是因轻信谣言，害怕清政府的清洗而丧命，这表明武昌起义的爆发具有一定的偶然性。所以A项正确。<br>考点：近代中国的民主革命·辛亥革命·武昌起义');
INSERT INTO `t_sys_questions` VALUES ('139', '历史', '辛亥革命', '2015届广东惠州市高三上期第二次调研文综历史试卷（带解析）', '&lt;p&gt;\n    有学者认为：革命党虽然嚷嚷了这么多年的革命，但他们并没有准备好一个周密详尽的计划。到武昌起义之前，所有革命党的起义，没有一次起义有成功的机会。这可用来说明（&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．维新变法的必要性\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．辛亥革命的偶然性\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．新民主主义革命的紧迫性\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．国民革命的仓促性\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：题目所述时间为“到武昌起义之前”，主要表达的是革命党人的起义“并没有准备好一个周密详尽的计划”，故选B。<br>考点：近代中国的民主革命•辛亥革命•辛亥革命的偶然性');
INSERT INTO `t_sys_questions` VALUES ('140', '历史', '辛亥革命', '2015届广东惠州市高三第一次调研文综历史试卷（带解析）', '&lt;p&gt;\n    &ldquo;在1912和1913年，他们凭借技能和勇气争取使民国能够运转。西式的民主制度马上证明太洋化、太新型和太软弱，难以负担他们托付的重任。&rdquo;文中的&ldquo;他们&rdquo;是指\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．维新派\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．革命派\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．立宪派\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．中国共产党\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：本题考查调用所学知识分析历史问题的能力，抓住题干中的时间“在1912和1913年”和“民国能够运转”，联系所学知识可知，这里的他们是资产阶级革命派，故B项正确；民国实行共和政体，而AC项都主张君主立宪制，故排除；中国共产党诞生于1921年，与题干时间不符，故排除。<br>考点：近代中国的民主革命·辛亥革命·资产阶级革命派的主张');
INSERT INTO `t_sys_questions` VALUES ('141', '历史', '辛亥革命', '2013-2014年浙江苍南县三校高二下期第一次联考历史试卷（带解析）', '&lt;p&gt;\n    下图是近代一幅名为《望风而起》的漫画，它反映了&lt;br/&gt;&lt;img src=&quot;http://imgs.haoservice.com/TiKu/tikupic/a6/71/a6071ca132479df94eeb3ccaf6c10c56.jpg&quot;/&gt;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．维新变法得到全国支持\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．武昌起义后各地积极响应\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．新文化运动后民主共和观念深入人心\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．井冈山根据地的星星之火燃成燎原之势\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：本题主要考查学生运用所学知识解决问题的能力。尊重材料是做对历史题目的唯一秘籍。而通过材料不难发现，《望风而起》的漫画，它反映了武昌起义后各地积极响应，当然，《望风而起》也反映了各地纷纷投机革命，辛亥革命在表面繁荣的背后隐藏着失败的必然。<br>考点：近代中国的民主革命·辛亥革命·武昌起义后各地积极响应');
INSERT INTO `t_sys_questions` VALUES ('142', '历史', '辛亥革命', '2013-2014年浙江苍南县三校高二下期第一次联考历史试卷（带解析）', '&lt;p&gt;\n    民国时期，初小四年级课本《平等》一文写道：&ldquo;共和国无阶级之分，人人平等，受治于同一之法律&hellip;&hellip;虽以大总统之地位，犹必谨守法律，不能恃势以凌人。一旦罢职，即与齐民无异。&rdquo;这表明\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．民国时期中国教育发生根本变化\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．辛亥革命后民主共和观念深入人心\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．民国时期重视公民意识教育\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．追求平等是民国时期政治斗争核心\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：本题主要考查学生运用所学知识解决问题的能力。尊重材料是做对历史题目的唯一秘籍。而通过材料不难发现，人人平等、谨守法律、无阶级之分这都是典型的公民意识教育，这表明辛亥革命尽管失败了，但是重视公民意识教育之类的进步的东西还是不以人的意志为转移的保留了下来。 <br>考点：近代中国的民主革命·辛亥革命·民国时期重视公民意识教育');
INSERT INTO `t_sys_questions` VALUES ('143', '历史', '辛亥革命', '2013-2014年浙江苍南县三校高二下期第一次联考历史试卷（带解析）', '&lt;p&gt;\n    南京参议院选举袁世凯为临时大总统后，资产阶级革命派的大多数人认为&ldquo;袁世凯尽管不好，我们希望他好，要用诚恳的劝告，严密的监视，感动他，鼓励他，使他不能不好。&rdquo;为此，资产阶级革命派\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．颁布《中华民国临时约法》\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．成立同盟会\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．发动护法运动\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．发起新文化运动\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：本题主要考查学生运用所学知识解决问题的能力。尊重材料是做对历史题目的唯一秘籍。而通过材料不难发现，资产阶级革命派对于袁世凯当然是不放心的，所以资产阶级革命派颁布《中华民国临时约法》实行责任内阁制，专门来限制袁世凯的权利，但是袁世凯很快就撕毁了《中华民国临时约法》建立了北洋军阀的独裁统治。 <br>考点：近代中国的民主革命·辛亥革命·颁布《中华民国临时约法》');
INSERT INTO `t_sys_questions` VALUES ('144', '历史', '辛亥革命', '2013-2014年湖北孝感高级中学高一上期期末历史试卷（带解析）', '\n &lt;p&gt;《辛丑条约》签订后，清政府在内外交困的严峻形势下，作出的应对之策是&lt;table name=&quot;optionsTable&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot;&gt;A．开展洋务运动&lt;td width=&quot;50%&quot;&gt;B．实施“新政”&lt;/td&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot;&gt;C．禁止学校读经&lt;td width=&quot;50%&quot;&gt;D．清帝正式下诏退位&lt;/td&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/p&gt;\n', 'B', '试题分析：本题主要考查学生知识迁移能力。根据所学知识，可知辛丑条约签订之后，1901年1月29日慈禧太后借用光绪皇帝的名义，开始实行“新政”。因此选择B。其他选项都不符合史实，排除。&lt;br&gt;考点：近代中国反侵略求民主的潮流·八国联军侵华·清末新政');
INSERT INTO `t_sys_questions` VALUES ('145', '历史', '辛亥革命', '2013-2014年广东汕头市金山中学高二上期期末历史试卷（带解析）', '&lt;p&gt;\n    有史家认为&ldquo;辛亥革命以革命的方式解决了中国现代化过程中的政治文明选择问题，传统政治文明中的制度体系因此全面崩溃。&rdquo;&ldquo;传统政治文明中的制度体系因此全面崩溃&rdquo;的具体表现是\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．结束了君主专制制度\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．建立了资产阶级共和国\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．确立了三权分立的政治体制\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．确立了君主立宪制\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：辛亥革命给封建专制制度以致命的一击，它推翻了统治中国二百六十多年的清王朝，结束了中国两千多年的封建君主专制制度，建立起资产阶级共和国，推动了历史的前进。故选A。<br>考点：近代中国的民主革命·辛亥革命·辛亥革命的影响');
INSERT INTO `t_sys_questions` VALUES ('146', '历史', '辛亥革命', '2013-2014年广东汕头市金山中学高二上期期末历史试卷（带解析）', '&lt;p&gt;\n    梁启超先生评价辛亥革命具有&ldquo;空前绝后的大意义&rdquo;，&ldquo;第一，觉得凡不是中国人都没有权来管中国人的事；第二，觉得凡是中国人都有权来管中国人的事&rdquo;。由此推断，他认为辛亥革命&amp;nbsp;&amp;nbsp;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．增强了国民的民族民主意识\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．使民主共和观念深入人心\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．打击了帝国主义的侵略势力\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．扩大了人民的民主自由权利&lt;span style=&quot;&quot;&gt;)&lt;/span&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：从材料较容易看到，梁启超认为辛亥革命的作用增强了国民的民族民主意识。B、C、D三项是教材有关辛亥革命的作用，但与本题中题意无直接关联。故选A。<br>考点：近代中国的民主革命·辛亥革命·辛亥革命的影响');
INSERT INTO `t_sys_questions` VALUES ('147', '历史', '辛亥革命', '2013-2014年浙江温州中学高二下期期末历史试卷（带解析）', '&lt;p&gt;\n    在制订《临时约法》时，孙中山说：&ldquo;我今只说要定一条：中华民国主权属于国民全体，一以表示我党革命真意义之所在，一以杜防盗憎主人者，与国民共弃之。&rdquo;这表明\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．辛亥革命的最终目标是要建立人民民主专政国家\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．辛亥革命已经完成了反帝反封建的革命任务\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．《中华民国临时约法》是一部资产阶级民主宪法&lt;br/&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．孙中山为首的革命党人认识到了袁世凯称帝的阴谋\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：本题主要考查学生阅读材料和提取信息能力再认再现能力。根据所学可知孙中山领导的辛亥革命的性质是一场资产阶级民主革命，其前途是建立资产阶级民主共和国。中共领导的新民主主义革命其目标是建立人民民主专政，因此排除A项。辛亥革命虽然推翻了封建帝制，建立了资产阶级共和国，但革命果实被封建势力窃取，中国依然是半殖民地半封建社会，因此排除B项。在临时约法中，为防止袁世凯专权而做的规定是实行责任内阁制，因此排除D项。材料强调中华民国主权属于国民全体，也就意味着否定了君主专制，带有明显的资产阶级民主色彩，因此C项符合题意。<br>考点：近代中国反侵略求民主的潮流·辛亥革命·《中华民国临时约法》');
INSERT INTO `t_sys_questions` VALUES ('148', '历史', '辛亥革命', '2015届广东深圳市宝安区高三上期调研历史试卷（带解析）', '&lt;p&gt;\n    据不完全统计，到辛亥革命爆发前，全国已成立的城市自治公所超过850个，镇自治公所超过530个，乡自治公所在1970个以上。据此可以推论出此时期\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．政府建立了民主制度\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．《临时约法》初见成效\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．出现了一定规模的民主实践活动\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．&ldquo;农村包围城市&rdquo;道路初现\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：本题考查获取和解读材料信息的能力，抓住题干时间“辛亥革命爆发前”的信息，可判断出ABD项与题干时间不符，故排除；从题干中“已成立的城市自治公所”“镇自治公所”“乡自治公所”的信息，可知此时期出现了一定规模的民主实践活动，故C项正确。<br>考点：近代中国的民主革命·辛亥革命·辛亥革命前后的民主实践活动');
INSERT INTO `t_sys_questions` VALUES ('149', '历史', '辛亥革命', '2015届浙江嘉兴市高三9月基础知识测试历史试卷（带解析）', '&lt;p&gt;\n    下图中，序号④指代的历史事件是&lt;br/&gt;&lt;img src=&quot;http://imgs.haoservice.com/TiKu/tikupic/b3/49/b3c49833a43754f3451e86d737f7e474.png&quot;/&gt;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．保路运动\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．《中华民国临时约法》颁布\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．清帝退位\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．袁世凯就任临时大总统\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：本题主要考查学生对教材内容的识记能力，难度较低。1912年3月，为了限制袁世凯的权力，颁布了《中华国临时约法》所以答案选B。<br>考点：近代中国的民主革命·辛亥革命·《中华民国临时约法》');
INSERT INTO `t_sys_questions` VALUES ('150', '历史', '辛亥革命', '2014届广东中山市高三高考模拟文综历史试卷（带解析）', '&lt;p&gt;\n    史学家金冲及在谈到中华民国的建立时认为，&ldquo;民国&rdquo;不只是换了一块招牌，更多的它给民众心理带来了巨大的冲击。这种冲击是指\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．从传统社会转变为近代社会\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．从臣民到国民的自我认同\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．从&ldquo;奴才&rdquo;到&ldquo;公仆&rdquo;的变化\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．从君主立宪制到民主共和制\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：中国近代化的开端是洋务运动，从奴才到公仆的转化体现的是身份角色的转化，君主立宪制到民主共和制的转变属于政治体制的转变，所以A、C、D三项错误，辛亥革命使得民主共和观念深入人心，即人们的思想得到了解放国民意识增强所以选B<br>考点：近代中国民主革命·辛亥革命·影响');
INSERT INTO `t_sys_questions` VALUES ('151', '历史', '辛亥革命', '2014届贵州黔东南州高三二模文综历史试卷（带解析）', '&lt;p&gt;\n    古语云：&ldquo;身体发肤，受之父母，不可损伤。&rdquo;但从清初的&ldquo;剃发令&rdquo;再到辛亥革命的&ldquo;剪辫易服&rdquo;和随之出现的&ldquo;保辫会&rdquo;，国人的头发承载了&ldquo;生命不能承受之重&rdquo;。下述对&ldquo;辫发之争&rdquo;说法正确的是\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．是欧风美雨作用的产物\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．体现历史的不断进步\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．是激烈政治斗争的反映\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．昭示国人的文明程度\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：本题主要考查学生运用所学知识解决问题的能力。清初的“剃发令”不是“欧风美雨”的产物，可以排除A；“剃发令”和“保辫会”不是历史的进步，可以排除B；D项和题意无关。而“辫发之争”实质上体现了“体制之争”（君主制还是共和制）。所以答案选C。<br>考点：近代中国的民主革命·辛亥革命·辛亥革命的影响');
INSERT INTO `t_sys_questions` VALUES ('152', '历史', '辛亥革命', '2013-2014年湖南师大附中高二下期期中历史试卷（带解析）', '&lt;p&gt;1922年孙中山说：&ldquo;中华民国像我的孩子，他现在有淹死的危险。我向英国和美国求救&hellip;&hellip;他们站在岸上嘲笑我。&rdquo;为改变这种现状，他其后的努力不包括&lt;/p&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;100%&quot;&gt;A．接受&rdquo;三大政策&rdquo;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;B．提出新三民主义&lt;em class=&quot;jammerd42&quot;&gt;&amp;#39;&amp;nbsp;&lt;/em&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;C．实现国共合作&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;D．领导北伐战争&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'D', '试题分析：孙中山于1925年3月12日逝世，ABC三项都是发生于1924年，而D项北伐战争的内容发生于1926年，此时他已经逝世，无法领导北伐，故答案选择D项。<br>考点：近代中国的民主革命·近代中国的民主革命·辛亥革命·孙中山的革命斗争历程');
INSERT INTO `t_sys_questions` VALUES ('153', '历史', '辛亥革命', '2014年全国普通高等学校招生统一考试历史（上海卷带解析）', '&lt;p&gt;\n    近代中国某一报纸刊登过如下文章：《民族的国民》、《驳新民丛报最近之非革命论》、《驳革命可以召瓜分说》、《告非难民生主义者》，该报纸是\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．《时务报》\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．《国闻报》\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．《申报》\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．《民报》\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '试题分析:《时务报》 清末变法维新运动时期中国资产阶级改良派的重要刊物，梁启超为主笔，倡导改良，排除A；《国闻报》国闻报是清末维新派的报刊，严复主编，每旬出增刊《国闻汇报》。1897年10月26日创刊于天津。成为维新派的重要宣传工具，与上海《时务报》分掌南北舆论界的领导地位。戊戌变法后遭清政府查办，事后，正式卖与日本人。1898年12月被迫停刊，排除B；《申报》原名《申江新报》，1872年4月30日（清同治十一年三月二十三日）在上海创刊，1949年5月27日停刊。为近代中国发行时间最久、具有广泛社会影响的报纸，是中国现代报纸开端和标志，其办报宗旨是“无党、无偏、言论自由、为民喉舌”,故此不会参与改良与革命的激烈论战，排除C；《新民丛报》是梁启超在日本创办的报纸，曾今是改良派与革命派论战的阵地之一，革命派以《民报》为阵地，宣传自己的主张，倡导革命，选D项，排除C项。<br>考点：中华民族的觉醒与抗争·辛亥革命与中华民国的建立·同盟会的成立。');
INSERT INTO `t_sys_questions` VALUES ('154', '历史', '辛亥革命', '2013-2014年河北保定市高二下期期中历史试卷（带解析）', '&lt;p&gt;\n    《中华民国临时约法》规定：中华民国主权属于国民全体。其实际意义在于（&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;）\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．人民政治上翻了身\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．否定了君主专制制度\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．确立了民主共和国的主张\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．标志中国确立了三权分立的民主共和政体\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：《中华民国临时约法》是资产阶级的临时宪法，宪法中规定的“民”不是人民而是资产阶级，所以A项错误。民主共和国的主张应该体现在政权的构成上，不是体现在国家主权的归属上，所以排除C项。D项与宪法内容不符合，中华民国的政体是责任内阁制，不是三权分立，故答案选择B项。<br>考点：近代中国的民主革命·1840至1900年间西方列强侵略与中国人民的反抗斗争·义和团运动');
INSERT INTO `t_sys_questions` VALUES ('155', '历史', '辛亥革命', '2014届内蒙古北重三中高三上期期中历史试卷（带解析）', '&lt;p&gt;\n    &ldquo;人间处处倡民主，天上谁人奉玉皇。一朵红云旗五色，惊传飞艇上天堂。&rdquo;这一情景最早可能出现于\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．戊戌维新时期\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．辛亥革命时期\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．新文化运动时期\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．抗日战争时期\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：依据材料，民主共和成为潮流，皇帝被赶下台，五色旗出现，由此可知其描述的内容应为辛亥革命后中国所出现的现象，所以选B<br>考点：近代中国民主革命·辛亥革命·影响');
INSERT INTO `t_sys_questions` VALUES ('156', '历史', '辛亥革命', '2013-2014年黑龙江友谊县红兴隆一高高一下期开学历史试卷（带解析）', '&lt;p&gt;\n    辛亥革命的历史功绩主要在于\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．推翻了中国两千多年的封建君主专制政体\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．为民族资本主义的发展扫清了道路\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．使民主共和观念日益深入人心\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．使人民获得了一些民主和共和的权利\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：本题主要考查学生运用所学知识解决问题的能力，尊重材料是做对历史题目的唯一秘籍。纵观整个材料不难发现，辛亥革命的历史功绩主要在于推翻了中国两千多年的封建君主专制政体，所以本题答案是A.推翻了中国两千多年的封建君主专制政体。使民主共和观念日益深入人心并不是辛亥革命的主要功绩，主不过是辛亥革命的意外收获，所以不能选B。<br>考点：近代中国的民主革命·辛亥革命·辛亥革命的历史功绩');
INSERT INTO `t_sys_questions` VALUES ('157', '历史', '辛亥革命', '2013-2014年云南玉溪一中高一下期期末历史试卷（带解析）', '&lt;p&gt;\n    孙中山领导的辛亥革命实现了20世纪中国第一次历史性巨变，因为这次革命\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．推翻了两千多年的君主专制制度\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．确立了资产阶级民主共和制度\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．给予了人民充分的民主与自由权利\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．结束了帝国主义在中国的殖民统治\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：本题主要考查学生运用所学知识解决问题的能力。尊重材料是做对历史题目的唯一秘籍。纵观整个材料不难发现，20世纪中国第一次历史性巨变就是指辛亥革命推翻了两千多年的君主专制制度，是个常考的基本知识点，所以本题答案是A．推翻了两千多年的君主专制制度。只有A才是辛亥革命实实在在的意义，BCD根本都不适合辛亥革命。<br>考点：近代中国的民主革命·辛亥革命·20世纪中国第一次历史性巨变');
INSERT INTO `t_sys_questions` VALUES ('158', '历史', '辛亥革命', '2013-2014年安徽泗县双语中学高二下期期中历史试卷（带解析）', '&lt;p&gt;\n    叶圣陶在一则日记中写道：&ldquo;课毕后阅报纸，见专电栏中有云：武昌已为革(命)党所据，新军亦起而相应&hellip;&hellip;从此而万恶之政府即以推倒，亦未可知也。&rdquo;日记中的&ldquo;万恶之政府&rdquo;指&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; (　　)\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．清政府&lt;br/&gt;&amp;nbsp;\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．南京临时政府\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot; class=&quot;selectTdClass&quot;&gt;\n                C．北洋政府\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot; class=&quot;selectTdClass&quot;&gt;\n                D．南京国民政府&lt;br/&gt;&amp;nbsp;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：本题主要考查学生对教材内容的识记能力。从材料“武昌”“新军”等关键信息可知这讲的是辛亥革命，辛亥革命推翻是清政府的统治，建立中华民国。所以答案选A。<br>考点：近代中国的民主革命·辛亥革命·辛亥革命的意义');
INSERT INTO `t_sys_questions` VALUES ('159', '历史', '辛亥革命', '2013-2014年安徽泗县双语中学高二下期期中历史试卷（带解析）', '&lt;p&gt;\n    一个剧团在排练有关辛亥革命的剧目时，有如下几个场景，其中与史实不符的是(　　)\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．街头上出现&ldquo;民主共和&rdquo;的标语\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．孙中山在灯下阅读《民报》\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．几艘外国军舰在长江上航行向革命党施压\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．报刊登出孙中山就任中华民国正式大总统的消息\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '试题分析：本题主要考查学生对教材内容的识记能力。1912年元旦，孙中山宣誓就任中华民国临时大总统，而不是正式大总统，所以答案选Ｄ。<br>考点：近代中国的民主革命·辛亥革命·中华民国');
INSERT INTO `t_sys_questions` VALUES ('160', '历史', '抗日战争', '2014届广东省惠州市高三4月模拟考试文综历史试卷（带解析）', '&lt;p&gt;下图是近代著名漫画家特伟的《偷天换日》，该漫画反映的背景事件对中国产生的主要影响是&lt;br/&gt;&lt;img src=&quot;http://imgs.haoservice.com/TiKu/tikupic/f2/61/f2261c136e3ba7f7ba824b4dc987003e.jpg&quot;/&gt;&lt;/p&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;100%&quot;&gt;A．促进国共两党第二次合作的实现&lt;span style=&quot;&quot;&gt;?&lt;/span&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;B．大大加深了中国的民族危机&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;C．加速了反法西斯战争的胜利进程&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;D．直接促使了中国的战略反攻&lt;br/&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'C', '试题分析：首先明确漫画中的太阳指的是日本，星条旗指的是美国；这反映的是日本对美国发动进攻，依据所学知识，指的是1941年日本偷袭珍珠港，太平洋战争爆发，美国对日宣战，这对中国而言，有利于加速中国抗战胜利的进程。故选C。<br>考点：近代中国的民主革命·新民主主义革命·抗日战争');
INSERT INTO `t_sys_questions` VALUES ('161', '历史', '抗日战争', '2014届湖南省长沙市高三模拟考试文综历史试卷（带解析）', '&lt;p&gt;\n    据统计，整个抗日战争日军死伤有60％是枪伤所致，而苏德战场上德军伤亡中炸伤却占了70％。这一数据从本质上反映了\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．中国军队的战斗力超过苏军\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．苏联军队作战实在浪费弹药\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．中国国力孱弱不如苏联发达\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．德日热衷战争中国热爱和平\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：根据材料信息“整个抗日战争日军死伤有60％是枪伤所致，而苏德战场上德军伤亡中炸伤却占了70％”反映了中国军队的装备劣于苏军,军事实力的差距反映了中苏两国的国力悬殊，故选C；ABD项都是错误的认识。<br>考点：近代中国的民主革命·新民主主义革命·抗日战争。');
INSERT INTO `t_sys_questions` VALUES ('162', '历史', '抗日战争', '2014年高中历史课时精练：抗日战争和解放战争（带解析）', '&lt;p&gt;\n    1941年2月，以美国总统罗斯福代表身份来华的居里正式向蒋介石声明：&ldquo;美国在国共纠纷未解决前，无法大量援华。中美间的经济、财政等问题不可能有任何进展。&rdquo;这表明当时美国&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; (　　)\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．以中国内部纠纷为由拒绝对华援助\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．反对国民党采取的反共政策\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．敦促国共两党放弃各自的政治主张\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．借助援助促成国共两党全力抗日\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('163', '历史', '抗日战争', '2014高考名师推荐历史列强入侵与民族危机2（带解析）', '&lt;p&gt;\n    中国共产党曾提出：&ldquo;赞助建立全中国统一的民主共和国&rdquo;。当&ldquo;全中国统一的民主共和国建立之时，苏维埃区域即可成为全中国统一的民主共和国的一个组成部分，苏区人民的代表，将参加全中国的国会，并在苏区实行与全中国一样的民主制度&rdquo;。中国共产党提出这一主张有利于(　　)\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．推动国民革命不断深入\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．创立苏维埃革命根据地\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．建立抗日民族统一战线\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．夺取解放战争最后胜利\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('164', '历史', '抗日战争', '2014届浙江绍兴市柯桥区高三第二次调测文综历史试卷（带解析）', '&lt;p&gt;\n    1940年，日本的食物、日用品、衣物必须品已被迫实行配给制。这反映了\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．中国的抗战给日本造成巨大的经济压力\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．美国对日本的经济制裁收到了很大效果\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．国际反法西斯联盟对日本构成强大压力\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．日本为应对持久战争开始干预国民经济\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：本题主要考查学生对教材知识的运用迁移能力，“1940年以后，日本的食物、日用品、衣物等生活必需品被迫实行配给制。”这反映了中国的抗战对日本造成巨大的经济压力，中国人民的长期抗战拖垮了日本，选A；B项夸大美国一国对日本的经济制裁效果；C选项发生在1942年；D项表述事件与史实不符。<br>考点：第二次世界大战·中国全面抗战·日本经济');
INSERT INTO `t_sys_questions` VALUES ('165', '历史', '抗日战争', '2014届江苏扬州市高三5月适应性检测历史试卷（带解析）', '&lt;p&gt;民国二十六年通过的《中国国民党五届三中全会关于根绝赤祸之决议》中要求共产党彻底取消红军与苏维埃政府、根本停止赤化宣传、根本停止阶级斗争等。这一文件颁布后&lt;/p&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;50%&quot;&gt;A．中共为联蒋抗日做出方针、政策的调整&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;B．国民党获得八路军、新四军指挥权&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot;&gt;C．中共揭露了蒋介石欺骗伎俩，反蒋抗日&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;D．国共互相猜忌，陷入内战之中&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'A', '试题分析：本题主要考察学生对材料的理解能力及与教材知识的联系能力。由题干可知民国二十六年情况的描述是1937年，是抗日民族统一战线建立前夕，B不符合史实；C、D题干没反映；题干中反映的内容是面对抗日战争的爆发国共两党合作，中共作出的政策调整。A正确。<br>考点：近代中国的民主革命·侵华日军的罪行与中国军民抗日斗争·联蒋抗日');
INSERT INTO `t_sys_questions` VALUES ('166', '历史', '抗日战争', '2013-2014年福建福州八中高一下期期中历史试卷（带解析）', '&lt;p&gt;右图为1937年8月上海先施公司被炸后的惨景。这说明&lt;br/&gt;&lt;img src=&quot;http://imgs.haoservice.com/TiKu/tikupic/fc/81/fc981f8f0c59ad2e6b05350d214af8e9.jpg&quot;/&gt;&lt;/p&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;100%&quot;&gt;A．官僚资本阻碍民族工业发展&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;B．列强侵华直接摧残民族工业。&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;C．外国列强限制中国机器进口&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;D．民族资产阶级进行反日斗争&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'B', '试题分析：本题主要考察学生对图片信息的准确获取能力。从图片“1937年8月上海”“先施公司”“被炸后的惨景”可以看出列强侵华直接摧残民族工业。<br>考点：近代中国的民主革命·侵华日军的罪行·日本侵华');
INSERT INTO `t_sys_questions` VALUES ('167', '历史', '抗日战争', '2013-2014年江西赣州市厚德外语校高二下期期中历史试卷（带解析）', '&lt;p&gt;\n    &ldquo;铁流两万五千里， 直向着一个坚定的方向。 苦斗十年， 锻炼成一只不可战胜的力量。 一旦强虏寇边疆，慷慨悲歌奔战场，首战平型关， 威名天下扬。&rdquo;这段歌词描述的是\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．井冈山斗争时期红军的武装斗争\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．长征时期工农红军艰苦卓绝的斗争历程\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．抗日战争时期八路军的敌后抗日\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．解放战争时期的淮海战役\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：本题主要考查学生准确解读材料信息的能力，从这段歌词中的“首战平型关， 威名天下扬”可知是八路军抗日战争，所以C项符合史实；A、B、D项不符合史实；故选C项。<br>考点：近代中国反侵略斗争·中华民族的抗日战争 ·平型关大捷');
INSERT INTO `t_sys_questions` VALUES ('168', '历史', '抗日战争', '2013-2014年浙江瑞安市龙翔高中高二下期期中历史试卷（带解析）', '&lt;p&gt;\n    1937年2月，中国共产党致电国民党，提出了&ldquo;中国共产党领导的工农政府改名为中华民国特区政府，红军改名为国民革命军，接受南京中央政府与军事委员会之指导&rdquo;等主张。这表明\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．抗日民族统一战线正式建立\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．中国共产党承认国民党的领导权\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．中国共产党积极推动国共两党的第二次合作\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．中国共产党内出现了右倾投降主义错误倾向\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：中国共产党1937年2月作出上面的决定，是为了更好的推动国共合作，以建立抗日民族统一战线，故选C。 <br>考点：近代中国的民主革命•侵华日军的罪行与中国军民抗日斗争•国共合作');
INSERT INTO `t_sys_questions` VALUES ('169', '历史', '抗日战争', '2013-2014年浙江瑞安市龙翔高中高二下期期中历史试卷（带解析）', '&lt;p&gt;\n    近年来，以历史为题材的影视剧持续热播。下列剧情有违历史史实的是&lt;br/&gt;①《亮剑》八路军和国民党军队合作抗战&amp;nbsp;②《大宋提刑官》中内阁大学士位高权重&amp;nbsp;③《康熙大帝》中军机大臣跪奏笔录&amp;nbsp;④《台湾1895》中的李鸿章说出&ldquo;八国联军刚刚火烧了圆明园&rdquo;的台词&amp;nbsp;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．②③④\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．①③④\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．①②③\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．①②③④\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：《大宋提刑官》反映的是宋代史实，当时不应该有内阁大学士，因为内阁是明成祖朱棣时设立的；军机大臣出现在清朝的雍正时期，不应该在康熙大帝在位时存在；八国联军出现在1900年，不会出现在1895年；故A符合题意。');
INSERT INTO `t_sys_questions` VALUES ('170', '历史', '抗日战争', '2014年高中历史强化练习：抗日战争与解放战争（带解析）', '&lt;p&gt;\n    蒋介石讲：&ldquo;此次中国共产党发表之宣言，即为民族意识胜过一切之例证。宣言中所举诸项，如放弃暴动政策与赤化运动，取消苏区与红军，皆为集中力量，救亡御侮之必要条件，且均与本党三中全会之宣言及决议案相合。&rdquo;上述材料中&ldquo;中国共产党发表之宣言&rdquo;是指 (&amp;nbsp; )\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．《抗日停战协定》\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．&ldquo;八一宣言&rdquo;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．《中国共产党为公布国共合作宣言》&amp;nbsp;\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．《双十协定》\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('171', '历史', '抗日战争', '2014年高中历史强化练习：抗日战争与解放战争（带解析）', '&lt;p&gt;\n    毛泽东在20世纪30年代讲：&ldquo;依现时的情况说来，离开了无产阶级及其政党的政治领导，抗日民族统一战线就不能建立，和平民主抗战的目的就不能实现，祖国就不能保：卫，统一的民主共和国就不能成功。&rdquo;这表明建立抗日民族统一战线要(&amp;nbsp; )\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．坚持中国共产党的组织领导\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．反对一切帝国主义\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．坚持中国共产党的政治领导\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．实行党外合作方式\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('172', '历史', '抗日战争', '2014年高中历史强化练习：抗日战争与解放战争（带解析）', '&lt;p&gt;\n    1940年5月，延安各界公奠一位抗战时为国捐躯将军，&ldquo;一战淝水，再战临沂，三战徐州，四战随枣，鞠躬尽瘁，卒以身殉，全国人民同声哀悼!&rdquo;这位将军是(&amp;nbsp; )\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．佟麟阁\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．左权&lt;span class=&quot;this_jammer&quot;&gt;f&lt;/span&gt; \n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．张自忠\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．杨靖宇\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('173', '历史', '抗日战争', '2014年高中历史强化练习：抗日战争与解放战争（带解析）', '&lt;p&gt;\n    仔细观察下图所示邮票，它的发行日期最有可能是(&amp;nbsp; )&lt;br/&gt;&lt;img src=&quot;http://imgs.haoservice.com/TiKu/tikupic/fd/24/fda2478a301f4e65de263ff1f6269558.jpg&quot;/&gt;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．国民大革命时期\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．土地革命时期\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．抗日战争时期\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．解放战争时期&lt;br/&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('174', '历史', '抗日战争', '2014年高中历史强化练习：抗日战争与解放战争（带解析）', '&lt;p&gt;\n    仔细研读下面的地图，这一地图反映的战役(&amp;nbsp; )&lt;br/&gt;&lt;img src=&quot;http://imgs.haoservice.com/TiKu/tikupic/42/15/42b15a6b2e10e50ffbda27628306161a.jpg&quot;/&gt;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．是国共成功合作抗战的典范\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．是抗战以来最大的军事胜利\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．打破了日军不可战胜的神话\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．是相持阶段中国共产党领导的主动出击的战役\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('175', '历史', '抗日战争', '2014年高中历史强化练习：抗日战争与解放战争（带解析）', '&lt;p&gt;\n    红岩革命纪念馆曾经展出了一本泛黄的手抄本，封皮上有&ldquo;参政员毛泽东在渝市之动态&rdquo;&ldquo;民国三十四年八月二十六日至九月卅日&rdquo;的字样。当时毛泽东在渝市讨论的主要问题是(&amp;nbsp; )\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．维持抗日民族统一战线\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．反对战争，维护世界和平\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．反对内战，建立民主共和国\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．与各民主党派共商民主建国大业\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('176', '历史', '抗日战争', '2014届安徽省合肥市高三二次质检文综历史试卷（带解析）', '&lt;p&gt;\n    读某战役示意图，对该战役的表述正确的是&lt;br/&gt;&lt;img src=&quot;http://imgs.haoservice.com/TiKu/tikupic/a6/24/a61248a23327a1c171a6842c9ac825e2.jpg&quot;/&gt;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．发生在国民革命时期\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．反映敌后战场的形势\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．采用了瓮中捉鳖战术\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．表明了民族利益至上\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '试题分析：本题以地图的形式考查学生阅读地图，获取有效信息及知识的运用能力，由地图中“八路军”可以判断出战役应该发生在抗日战争时期，由“老爷庙”“山西”等关键信息可以判断战役应该是平型关大捷，依据已学知识可知1937年9月25日八路军115师在平型关东侧的关沟，乔沟，老爷庙，小寨，蔡家峪至东河南镇一线与日军进行了一场惨烈的战斗，这是中日开战以来中方取得的第一次完胜。这次胜利打破了日本军队不可战胜的神话，振奋了全国人心，加强了全国人民抗战必胜的信念，也表明了在民族危机严重的情况下，民族利益至上，故选D。<br>考点：近代中国的民主革命·侵华日军的罪行与中国军民抗日斗争·平型关大捷');
INSERT INTO `t_sys_questions` VALUES ('177', '历史', '抗日战争', '2014届北京市丰台区高三下学期统练文综历史试卷（带解析）', '&lt;p&gt;\n    下图是民国时期&ldquo;首都各界抗敌后援会&rdquo;张贴的一幅宣传海报。下列与该海报相关的历史事件是&lt;br/&gt;&lt;img src=&quot;http://imgs.haoservice.com/TiKu/tikupic/cd/51/cd8519356dd1a4edb23eb70073d92bb4.jpg&quot;/&gt;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．北伐战争\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．九一八事变\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．卢沟桥事变\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．辽沈战役\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：宣传海报显示了“拯救东北同胞”“收复失地”可知是指1931年日本制造九一八事变，侵占东北，激起抗日救亡运动高涨，要求收复东北失地，故选B。北伐战争发生在国民革命期间，辽沈战役发生在解放战争时期，属于国内战争，与题意不符；卢沟桥事变发生在华北，地点不符。<br>考点：近代中国的民主革命·新民主主义革命·抗日战争。');
INSERT INTO `t_sys_questions` VALUES ('178', '历史', '抗日战争', '2014届山东省青岛市高三3月测试文综历史试卷（带解析）', '&lt;p&gt;\n    不同时期的中国教科书对美国有不同的解释，反映了中国对美国的研究及中国人认识美国的历程。下列哪一项反映的是抗战时期中国人心中的美国形象\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．西方列强，积极侵华\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．政治典范，民主楷模\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．战略伙伴，强大盟国\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．霸权主义，超级大国\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：本题主要是调动和运用所学知识的能力。根据所学知识，抗战期间，中美都是反法西同盟的重要成员，是重要的战略伙伴和强大的盟国。所以答案选选C。<br>考点：近代中国的对外关系·中美关系·抗战时期的中美关系');
INSERT INTO `t_sys_questions` VALUES ('179', '历史', '抗日战争', '2014届四川省眉山市高三二诊文综历史试卷（带解析）', '&lt;p&gt;\n    蒋介石在1938年底的一次讲话中特别强调：&ldquo;以四川为最后根据地，北固陕西，南控湘、黔、贵诸省，稳扎稳打&hellip;&hellip;如此，日本则一定多行不义必自毙&rdquo;。蒋介石的讲话可以反映&lt;br/&gt;①国民政府抗战的决心&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;②没有四川，抗战一定失败&lt;br/&gt;③四川在抗战中的重要地位&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;④四川在八年抗战中牺牲了大量壮士\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．①④\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．①②\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．①③\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．②④\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：本题主要考查学生解读材料信息的能力。“以四川为最后根据地”反映出四川在抗战中的重要地位，蒋介石的讲话特别强调，反映出国民政府抗战的决心。②表述过于绝对，④无法体现，C为答案。<br>考点：近代中国的民主革命·新民主主义革命·抗日战争');
INSERT INTO `t_sys_questions` VALUES ('181', '历史', '抗日战争', '2014届贵州省六校联盟高三第一次联考历史试卷（带解析）', '\n &lt;p&gt;英国记者杰克·贝尔登在《中国震憾世界》一书中说：一般美国人都认为，中国战争主要是一场民主与共产主义之间的战争……似乎没有人意识到，那么多中国人支持共产党是因为共产党支持着抗日战争期间人民自己建立的政权。杰克·贝尔登的看法&lt;table name=&quot;optionsTable&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;100%&quot;&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot;&gt;A．带有美国人的意识形态&lt;td width=&quot;50%&quot;&gt;B．揭示了中国政局变动的本质&lt;/td&gt;&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot;&gt;C．是冷战思维的体现&lt;td width=&quot;50%&quot;&gt;D．反映了抗日政权具有社会主义性质&lt;/td&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/table&gt;&lt;/p&gt;\n', 'B', '试题分析：本题以新民主主义革命为背景考查学生的阅读史料获取信息的能力。从材料“那么多中国人支持共产党是因为共产党支持着抗日战争期间人民自己建立的政权”可以得出中国人支持共产党是因为中国共产党代表人民的利益，建立属于人民自己的政权，揭示了中国政局变动的本质，故选B。&lt;br&gt;考点：近代中国的民主革命·侵华日军的罪行与中国军民抗日斗争·中国政局的变动');
INSERT INTO `t_sys_questions` VALUES ('182', '历史', '抗日战争', '2014届广东省中山市五校高三12月联考历史试卷（带解析）', '&lt;p&gt;&ldquo;全中国都在动&mdash;&mdash;从沿海漂流到内地，犹如混乱的涡流聚集在这个临时的首都&hellip;&hellip;政府成员和共产党人同坐在一间会议室里，讨论制定共同作战计划。&rdquo;这段文字出自美国作家安娜&bull;雅各布对一场战争的叙述。这场战争是&lt;/p&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;25%&quot;&gt;A．护国运动&lt;/td&gt;&lt;td width=&quot;25%&quot;&gt;B．北伐战争&lt;/td&gt;&lt;td width=&quot;25%&quot;&gt;C．抗日战争&lt;/td&gt;&lt;td width=&quot;25%&quot;&gt;D．解放战争&lt;br/&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'C', '试题分析：依据材料中的“全中国都在动”、“聚集在这个临时的首都”、“政府成员和共产党人同坐在一间会议室里，讨论制定共同作战计划。”结合所学知识，可以判断出这场战争是国共第二次合作组成的抗日民族统一战线，实行全民族抗战的抗日战争。故选C。<br>考点：近代中国的民主革命·新民主主义革命·抗日战争');
INSERT INTO `t_sys_questions` VALUES ('183', '历史', '抗日战争', '2014年高中历史专训：近代中国民主革命的新发展—新民主主义革命时期（带解析）', '&lt;p&gt;陶涵在《蒋介石与现代中国》中写道：&ldquo;&hellip;&hellip;蒋介石立刻调遣受过精良训练、配备德国武器的八十七、八十八师布防。他求战的主要目标是，尽可能吸引众多敌军，离开华北，阻断日军向武汉前进，使苏联对华供应线畅通。&rdquo;上述材料所指的战役是(　　)&lt;/p&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;50%&quot;&gt;A．淞沪会战&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;B．太原会战&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot;&gt;C．徐州会战&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;D．武汉会战&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('184', '历史', '抗日战争', '2014年高中历史专训：近代中国民主革命的新发展—新民主主义革命时期（带解析）', '&lt;p&gt;列宁在《论无产阶级在这次革命中的任务》中说，&ldquo;必须承认这样的事实：在大多数工人代表苏维埃中我们党处于少数地位&hellip;&hellip;要向群众说明，工人代表苏维埃是革命政府唯一可能的形式。&rdquo;下列毛泽东的论著中与此文献发挥过类似作用的是(　　)&lt;/p&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;100%&quot;&gt;A．《中国社会各阶级的分析》&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;B．《新民主主义论》&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;C．《关于正确处理人民内部矛盾问题》&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;100%&quot;&gt;D．《论十大关系》&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'B', '无解析');
INSERT INTO `t_sys_questions` VALUES ('185', '历史', '抗日战争', '2013-2014学年重庆万州二中高一上学期期末考试历史试卷（带解析）', '&lt;p&gt;1938年10月，陈嘉庚以华侨参政员身份，从新加坡向国民参政会发来&ldquo;敌未出国门前，和即汉奸&rdquo;的电报提案，获大会通过，被誉为&ldquo;古今中外最伟大的一个提案&rdquo;。该提案的&ldquo;伟大&rdquo;之处在于（&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;）&lt;/p&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;50%&quot;&gt;A．坚持抗战到底的民族精神&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;B．坚决反对蒋介石破坏抗日民族统一战线&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot;&gt;C．制止了国民党亲日派的投降倾向&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;D．鼓舞了北平守军奋起保卫卢沟桥&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'A', '试题分析：本题主要考察学生阅读材料并与教材知识相联系的能力。材料中时间是 1938 年 10 月，此时中国的抗战进入相持阶段，国民党开始执行积极反共消极抗日的政策。由“敌未出国门前”，反映了中国人民尚未完成抗战任务，和即汉奸的意思是谁要求和谁就是汉奸之意，从侧面提醒当时的政府，也表达了国人抗战到底的决心和精神。B蒋介石破坏抗日民族统一战线的活动是在39年国民党五届五中全会后显露的，发动了两次反共高潮；C没有制止；D卢沟桥事变的时间是37年7月。<br>考点：近代中国的民主革命·侵华日军的罪行与中国军民抗日斗争·抗日民族统一战线');
INSERT INTO `t_sys_questions` VALUES ('186', '历史', '抗日战争', '2013-2014学年广东省阳东广雅阳春实中两校高一上期末考试历史试卷（带解析）', '&lt;p&gt;蒋介石在1937年南京失守后发表告国民书，声称：&ldquo;中国持久抗战，其最后决胜之中心，不但不在南京抑且不在各大城市，而实寄于全国之乡村与扩大强固之民心。&rdquo;这说明&lt;/p&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;50%&quot;&gt;A．国民党决心与共产党合作抗日&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;B．国民党统治中心转向农村&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot;&gt;C．国民党决定开辟敌后抗日战场&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;D．国民党号召国民奋起抗日&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'D', '试题分析：本题考查获取和解读信息的能力。分析材料，1937年南京失守后，蒋介石认为抗战的胜利应寄托于“全国之乡村与广大强固之民心”，说明国民政府号召全国民众奋起抗战，故选D；国共两党合作在南京失守之前已经实现；南京失守后，国民政府迁都重庆，并未转向农村；开辟敌后战场的是中国共产党；故A、B、C均不正确。<br>考点：近代中国的民主革命·新民主主义革命·抗日战争');
INSERT INTO `t_sys_questions` VALUES ('187', '历史', '抗日战争', '2014届福建省漳州市普通高中高三质检历史试卷（带解析）', '&lt;p&gt;\n    1937年8月14日《国民政府自卫抗战声明书》发表，声明&ldquo;中国为日本无止境之侵略所逼迫，兹已不得不实行自卫，抵抗暴力。&rdquo;它的发表，标志\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．全国抗战终于实现\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．中国开始进行抗战\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．国民政府放弃战略进攻\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．正面战场正式开辟&lt;br/&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：1937年“八一三事变”后，国民政府发表声明，宣布“实行自卫，抵抗暴力”，这标志着全国抗战终于实现，A项正确。   <br>考点：近代中国的民主革命· 新民主主义革命·抗日战争');
INSERT INTO `t_sys_questions` VALUES ('188', '历史', '抗日战争', '2014届河北省唐山市高三第一次模拟考试文综历史试卷（带解析）', '&lt;p&gt;\n    《刘公连仁祭》中写到：&ldquo;平民刘公，在乡农耕，祸从天降，被抓劳工。在高密，逃跑未成遭痛打。经青岛，轮船押运北海道。&hellip;&hellip;终日挖煤，劳动繁重。&hellip;&hellip;穴居林中，苦苦挣扎，十三暑寒&rdquo;。材料可以用来研究\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．侵华日军的罪行\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．军阀混战下的民生\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．国共内战的影响\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．解放战争时期的社会动荡\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：本题主要考查考生对材料有效信息进行完整、准确、合理解读的能力。从材料中提供的相关信息可知“刘公”在家乡被抓，历经“高密、青岛”被轮船押运至“北海道”，从而得出这一事件和日本侵华相关。<br>考点：近代中国的民主革命·新民主主义革命·抗日战争');
INSERT INTO `t_sys_questions` VALUES ('189', '历史', '抗日战争', '2014年高中历史专题限时集训：近代中国反侵略、求民主的潮流（带解析）', '&lt;p&gt;\n    1945年10月8日，毛泽东发表了演说，他说：&ldquo;我们要在蒋委员长领导之下，克服困难，建设独立、自由、民主、统一、富强的新中国！大家一条心，要和平、民主、团结、统一。&rdquo;这说明了(　　)\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                A．&ldquo;独立、自由、民主&rdquo;是两党的共同追求\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                B．&ldquo;统一、富强&rdquo;是当时要解决的首要问题\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                C．中国共产党维护合作，建立联合政府的诚意\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;100%&quot;&gt;\n                D．国共两党再次揭开了团结合作的新篇章\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('190', '英语', '词组/短语', '2012届浙江省温州中学高三10月月考英语卷', '&lt;p&gt;\n    Don&rsquo;t _______the day you stop suffering, because when it comes you&rsquo;ll be dead.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．look after\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．look up to\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．look for\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．look forward to\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('191', '英语', '词组/短语', '2012届浙江省温州中学高三10月月考英语卷', '&lt;p&gt;\n    A great explosion _______ in a chemical factory in Hangzhou several months ago.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．occurred\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．occurred to\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．has happened\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．has taken place\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('192', '英语', '词组/短语', '2012届浙江省温州中学高三10月月考英语卷', '&lt;p&gt;\n    Early settlers_______ their survival _______ hard work and determination to succeed.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．corresponded; with\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．owed;to\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．adapted; to\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．attached; to\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '无解析');
INSERT INTO `t_sys_questions` VALUES ('193', '英语', '词组/短语', '2011-2012学年甘肃省兰州市第五十五中学高一第一次月考英语卷', '&lt;p&gt;\n    As a young man, Comrade Zhou Enlai _____ the students movements and later _____ the Communist Party of China.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．joined; took part in\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．took part in; joined\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．joined in; took part in\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．took part in; joined&lt;br/&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '无解析');
INSERT INTO `t_sys_questions` VALUES ('194', '英语', '词组/短语', '2011-2012学年甘肃省兰州市第五十五中学高一第一次月考英语卷', '&lt;p&gt;\n    I can&rsquo;t spend _____ money on the car which is _____ expensive for me.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．too much; much too\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．far too; too much\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．much too; to much\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．too many; much to&lt;br/&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('195', '英语', '词组/短语', '2011—2012学年浙江省金华一中高一摸底考试英语卷', '&lt;p&gt;\n    Many questions __________ at the meeting, but he answered none.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．came up&amp;nbsp;\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．raised\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．were risen\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．asked\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('196', '英语', '词组/短语', '2012届山东省济南市一中高三10月阶段考试英语卷', '&lt;p&gt;\n    --- Is your new team-mate a good guy?&lt;br/&gt; --- Yes. He is kind, skillful, hard-working and intelligent; ____, I can&rsquo;t speak too highly of him.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．on the contrary\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．by the way\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．in a word\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．as a result\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('197', '英语', '词组/短语', '2012届山东省济南市一中高三10月阶段考试英语卷', '&lt;p&gt;\n    Everything was perfect for the picnic _____ the weather.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．in place of\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．as well as\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．except for\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．in case of\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('198', '英语', '词组/短语', '2011—2012学年四川省球溪高级中学高一上学期期中考试英语卷', '&lt;p&gt;\n    Boys in my new school _______ John and James are very friendly.&lt;br/&gt;A such as&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; B for example&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; C for an instance&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; D take for example\n&lt;/p&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('199', '英语', '词组/短语', '2011—2012学年四川省球溪高级中学高一上学期期中考试英语卷', '&lt;p&gt;\n    He runs every day.&amp;nbsp; ______, he has lost weight and become healthier.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A． However\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B． In fact\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C． As a result\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D． In other words\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('200', '英语', '词组/短语', '2011年新疆乌鲁木齐市第八中学高二上第一次月考英语卷（平行班）', '&lt;p&gt;Robert _____ business two years ago， but he did not get along well at first&amp;nbsp; for _____ of experience.&lt;br/&gt;A took up； lack of　　B put up； short of　 C set up； need of　 D pick up； want of&lt;/p&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('201', '英语', '词组/短语', '2011年新疆乌鲁木齐市第八中学高二上第一次月考英语卷（平行班）', '&lt;p&gt;\n    How many nationalities ______ the&amp;nbsp; country&amp;nbsp;&amp;nbsp; ______？&amp;nbsp;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．is； consisted of\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．does； make up\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．is； made from\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．does； consist of&lt;br/&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('202', '英语', '词组/短语', '2012届湖北省黄冈市黄州区一中高三精品模拟试卷（二）英语（解析版）', '&lt;p&gt;\n    This sentence is difficult to understand.Can you make&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; of it?\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．sense\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．knowledge\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．idea&lt;br/&gt;&amp;nbsp;\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．understanding\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('203', '英语', '词组/短语', '2012届湖北省黄冈市黄州区一中高三精品模拟试卷（四）英语（解析版）', '&lt;p&gt;\n    &mdash;When did you&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; staying up so late?&lt;br/&gt;&mdash;When I entered this school two years ago, where students have too much homework to do.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．take in\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．take on\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．take down\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．take to&lt;br/&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('204', '英语', '词组/短语', '2012届湖北省荆州中学高三第一次质量检查英语卷', '&lt;p&gt;\n    After that, he knew he could _______ any emergency by doing what he could to the best of his ability.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．get away with\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．get on with\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．get through\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．get across\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('205', '英语', '词组/短语', '2012届江苏省泗阳中学高三年级第一次调研考试英语卷', '&lt;p&gt;\n    Hardly could Tom _____ this amount of homework in such a short time.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．get down\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．get into\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．get off\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．get through\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('206', '英语', '词组/短语', '2012届浙江省杭州第十四中学高三年级九月月考英语卷', '&lt;p&gt;\n    Last year my old college friend Melissa _________ her family business, a company supplying metal boxes to other factories.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．took up\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．took down\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．took off\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．took over\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('207', '英语', '词组/短语', '2012届浙江省杭州市西湖高级中学高三8月开学考试英语试卷', '&lt;p&gt;\n    Don&rsquo;t worry. Intelligent students can always &shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;&shy;_______ good solutions to problems.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．come up to\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．come up with\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．stick to\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．deal with\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '无解析');
INSERT INTO `t_sys_questions` VALUES ('208', '英语', '词组/短语', '2012届浙江省温州中学高三10月月考英语卷', '&lt;p&gt;\n    Don&rsquo;t _______the day you stop suffering, because when it comes you&rsquo;ll be dead.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．look after\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．look up to\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．look for\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．look forward to\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('209', '英语', '词组/短语', '2012届浙江省温州中学高三10月月考英语卷', '&lt;p&gt;\n    A great explosion _______ in a chemical factory in Hangzhou several months ago.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．occurred\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．occurred to\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．has happened\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．has taken place\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('210', '英语', '词组/短语', '广东省汕头第四中学2009—2010学年度高一上学期期末考试英语试卷', '&lt;p&gt;\n    &lt;br/&gt;The stranger stopped and turned around ___________to see is someone was following him.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．every few meters\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．every a few meters\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．every other meters\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．every meters\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('211', '英语', '词组/短语', '湖北省武汉市武昌区2010届高三下学期五月调研测试试卷（英语）', '&lt;p&gt;\n    He arrived home very late last night, __________in the early hours this morning.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．or else\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．or rather\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．rather than\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．more than\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '无解析');
INSERT INTO `t_sys_questions` VALUES ('212', '英语', '词组/短语', '湖北省武汉市武昌区2010届高三下学期五月调研测试试卷（英语）', '&lt;p&gt;\n    He has been in high spirits, for pieces of exciting news came to him __________.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．one after another\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．one by one\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．little by little\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．step by step\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('213', '英语', '词组/短语', '甘肃省嘉峪关市一中2009-2010学年度高一下学期期中考试英语试题', '&lt;p&gt;\n    . We all write _______, even there&rsquo;s not much to say\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A． now and then\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．more or less\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．step by step\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．at least\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('215', '英语', '词组/短语', '2010年北师大版高一英语必修一unit3单元测试', '&lt;p&gt;\n    Tom was very sick with a bad cough, ______ he could neither eat nor sleep.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．as a result\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．after all\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．anyway\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．otherwise\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('216', '英语', '词组/短语', '2011-2012学年山东省枣庄市第十六中学高三九月月考英语卷（解析版）', '&lt;p&gt;\n    I often&lt;span style=&quot;text-decoration:underline;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;the words I don&rsquo; t know in the dictionary or on the Internet.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．look up&lt;br/&gt;&amp;nbsp;\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．look at&lt;br/&gt;&amp;nbsp;\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．look for\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．look into\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('217', '英语', '词组/短语', '2011年安徽省舒城中学高一入学考试英语试卷', '&lt;p&gt;\n    I won&rsquo;t go there. It&rsquo;s late now. __________, it is raining so hard.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．That&rsquo;s\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．What&rsquo;s more\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．However\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．So&lt;br/&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '无解析');
INSERT INTO `t_sys_questions` VALUES ('218', '英语', '词组/短语', '2011年湖北省武汉二中、龙泉中学高二下学期期末联考英语试卷', '&lt;p&gt;\n    Temporary failure is not to be feared. We must bear it in mind that the pains-taking efforts we have made will ______ in the long run.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．pay off\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．take off&amp;nbsp;\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．break off\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．work off&amp;nbsp;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('219', '英语', '词组/短语', '2011年陕西省师大附中高二下学期期末考试英语卷', '&lt;p&gt;\n    He did not &lt;span style=&quot;text-decoration:underline;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;&amp;nbsp;for a minute to save the drowning child and jumped into the river immediately.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．hesitate\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．wonder\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．charge\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．determine\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('220', '英语', '词组/短语', '吉林一中2009—2010学年上学期期末高二（英语）试题', '&lt;p&gt;\n    If you get a raise, you&rsquo;ll _________ be expected to shoulder more responsibility and work longer hours.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．no doubt\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．no longer\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．no excuse\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．no chance\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('221', '英语', '词组/短语', '吉林一中2009—2010学年上学期期末高二（英语）试题', '&lt;p&gt;\n    All the people in that town, students or town folks, _______ the books, records and magazines in our university&rsquo;s library. They can even surf the internet there.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．are allowed to\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．are admitted to\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．have access to\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．have approach to\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('224', '英语', '词组/短语', '云南省曲靖一中2010届高三冲刺卷三', '&lt;p&gt;\n    &lt;br/&gt;14．How can you cross the river _________ by swimming?\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．rather than\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．more than\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．less than\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．other than\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('225', '英语', '词组/短语', '江苏省邳州市东方学校2010届高三下学期考前综合模拟试题（二）（英语）', '&lt;p&gt;\n    &lt;br/&gt;I can&rsquo;t go to the New Year&rsquo;s concert,_____,100 dollars is just too much for me to spend in one evening.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．in other words\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．that is\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．in particular\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．I mean\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('226', '英语', '词组/短语', '河北省唐山二中2009-2010学年度高一下学期期中考试英语试卷', '&lt;p&gt;\n    .&lt;br/&gt;They served raw vegetables with the hamburgers and boiled the potatoes ________ fried them.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．other than\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．more than\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．rather than\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．less than\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('227', '英语', '词组/短语', '安徽省2010届高考考前调研卷（7 - 4）（英语）', '&lt;p&gt;\n    Whenever I think of my childhood, I&amp;#39;ll always feel that the period of free time seem to have passed ________\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．for ever\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．by and by\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．little by little\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．in a flash\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('228', '英语', '词组/短语', '福建省厦门一中2009-2010学年度高一下学期期中考试试卷（英语）', '&lt;p&gt;\n    The doctor suggested that I should have a balanced diet ____ just protective food.&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．other than\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．more than\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．less than\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．rather than&lt;br/&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('229', '英语', '词组/短语', '2015学年甘肃民乐第一中学高一上10月月考英语试卷（带解析）', '&lt;p&gt;\n    The boss didn&rsquo;t _____ to the workers&rsquo; request for increasing their wages(工资).\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．give in\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．give up&amp;nbsp;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．give out\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．give away\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析：句意：老板拒绝对员工们要加薪水的请求让步。A. give in 屈服；让步；give in to 向某人或某事妥协B. give up 放弃  C. give out 分发；公布；筋疲力尽  D. give away 赠送；泄露，故选A。<br>考点：考查动词短语。');
INSERT INTO `t_sys_questions` VALUES ('230', '英语', '词组/短语', '2015届江西省高考人教版一轮课时作业必修1Unit2英语试卷（带解析）', '&lt;p&gt;(2013&middot;北京四中高三质检)There is________as a free dinner in this world.As the saying goes，&ldquo;No pains，no gains.&rdquo;&lt;/p&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;50%&quot;&gt;A．no such a good thing&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;B．such no good thing&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot;&gt;C．no such good thing&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;D．not so a good thing&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('231', '英语', '词组/短语', '外研版选修7同步训练：Module 2（5）英语试卷（带解析）', '&lt;p&gt;&amp;nbsp; ________ I am concerned, I think the project should be held off right now.&lt;/p&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;50%&quot;&gt;A．As long as&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;B．As far as&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot;&gt;C．As soon as&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;D．As well as&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'B', '无解析');
INSERT INTO `t_sys_questions` VALUES ('232', '英语', '词组/短语', '外研版选修7同步训练：Module 3（8）英语试卷（带解析）', '&lt;p&gt;\n    The young actress looked so charming in her beautiful dress that we took &lt;br/&gt;________ pictures with her.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．a great many of\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．a good many\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．the number of\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．a large amount of\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '无解析');
INSERT INTO `t_sys_questions` VALUES ('233', '英语', '词组/短语', '外研版选修7同步训练：Module 4（10）英语试卷（带解析）', '&lt;p&gt;\n    Every morning, he was running ________ with his father.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．side in side\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．side by side\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．side to side\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．side with side\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '无解析');
INSERT INTO `t_sys_questions` VALUES ('234', '英语', '词组/短语', '外研版选修7同步训练：Module 4（10）英语试卷（带解析）', '&lt;p&gt;\n    &amp;nbsp; Let us fight against the trouble ________.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．face to face\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．shoulder to shoulder\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．side by side\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．B and\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('235', '英语', '词组/短语', '外研版选修7同步训练：Module 4（10）英语试卷（带解析）', '&lt;p&gt;\n    He came all the way to China for knowing its culture and history ________ for making money.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．less than\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．other than\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．better than\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．rather than&lt;br/&gt;\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('236', '英语', '词组/短语', '外研版选修7同步训练：Module 4（11）英语试卷（带解析）', '&lt;p&gt;\n    &amp;nbsp; The form cannot be signed by anyone ________ yourself.(2011&middot;全国Ⅰ)\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．rather than\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．other than\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．more than\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．better than\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '无解析');
INSERT INTO `t_sys_questions` VALUES ('237', '英语', '词组/短语', '外研版选修7同步训练：Module 6（16）英语试卷（带解析）', '&lt;p&gt;\n    ．Our teacher is very busy.He is ________ in working out a teaching plan.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．involve\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．involving\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．involved\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．to involve\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('238', '英语', '词组/短语', '2013-2014学年黑龙江省大庆铁人中学高一下期末英语试卷（带解析）', '&lt;p&gt;\n    His English is improving _______, which makes both his parents and his teacher happy.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．now and then\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．little by little\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．sooner or later\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．one after another\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：句意：他的英语在一点一点的提高，这让他的父母和老师很高兴。这里使用短语，四个选项的含义分别是：A. now and then时而，B. little by little一点一点的， C. sooner or later迟早，           D. one after another一个接一个，所以选B。<br>考点：考查短语辨析');
INSERT INTO `t_sys_questions` VALUES ('239', '英语', '词组/短语', '2013-2014学年吉林省白城市高一上期末（二）英语试卷（带解析）', '&lt;p&gt;\n    Go back home now, Mary. Your parents ______ your safety.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．are concerned about\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．are concerned with\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．are concerned on\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．concern of\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '试题分析:句意：现在回家，玛丽。你的父母担心你的安全。Be concerned about 担心；be concerned with牵涉到,与……有关，其他不构成搭配，根据句意可知选A。<br>考点：考查短语辨析');
INSERT INTO `t_sys_questions` VALUES ('240', '英语', '词组/短语', '2013-2014学年浙江省桐乡市第一中学高一下学期期中测试英语卷（带解析）', '&lt;p&gt;\n    You needn&rsquo;t write on __________ line. You can write on __________ line.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．every; every\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．every; every other\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．every other; each other\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．every; each other\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '试题分析：句意：你不必每行都写, 你可以隔行写。第一空填every“每个”，第二空填every other， every other+名词单数是“每隔一个”的意思, 所以选B。<br>考点：考查词组');
INSERT INTO `t_sys_questions` VALUES ('241', '英语', '词组/短语', '2013-2014学年河北省容城中学高一下学期期中考试英语试卷（带解析）', '&lt;p&gt;\n    &mdash; I failed my driving test again.&lt;br/&gt;&mdash; Don&amp;#39;t be discouraged. You&amp;#39;ll be successful ________.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．at times\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．at one time\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．on time\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．in time\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '试题分析：考查短语辨析。A有时；B曾经；C准时；D最终。句意：——我驾驶考试再次失败。——不要灰心。最终你会成功的。故D正确。<br>考点：考查短语辨析');
INSERT INTO `t_sys_questions` VALUES ('242', '英语', '词组/短语', '2014届浙江省台州市高三下学期3月第一次高考模拟考试英语卷（带解析）', '&lt;p&gt;\n    Don&amp;#39;t worry. It&amp;#39;s just&lt;span style=&quot;text-decoration:underline;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&lt;/span&gt;a regular blood test. It&amp;#39;ll finish within seconds.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．other than\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．rather than\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．no more than\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．much more than\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '试题分析：考查固定搭配。句意：别担心。这仅仅不过是一次常规的血液检测，几秒钟就做好了。A除了；B而不是；C不过，仅仅；D多于，比......更。故选C。<br>考点：考查固定搭配');
INSERT INTO `t_sys_questions` VALUES ('243', '英语', '词组/短语', '2013-2014外研版必修1Module1同步精练（1）英语试卷（带解析）', '&lt;p&gt;\n    &mdash;Well，the chief is not ready to make a decision yet.&lt;br/&gt;&mdash;So，________，we have to wait，right?\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．for example\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．on the other hand\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．in other words&lt;br/&gt;&amp;nbsp;\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．in some ways\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'C', '无解析');
INSERT INTO `t_sys_questions` VALUES ('244', '英语', '词组/短语', '2013-2014外研版必修1Module3同步精练（2）英语试卷（带解析）', '&lt;p&gt;\n    The fact is that your passport has been________.So you can&amp;#39;t use it.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．ahead of time\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．up to date\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．out of reach\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．out of date\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('245', '英语', '词组/短语', '2013-2014外研版必修1Module4同步精练（1）英语试卷（带解析）', '&lt;p&gt;\n    We ________ contact with each other for years. And last week we ________ contact again.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                A．lost; made\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                B．have been out of; got into\n            &lt;/td&gt;\n        &lt;/tr&gt;\n        &lt;tr&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                C．had been out of; made\n            &lt;/td&gt;\n            &lt;td width=&quot;50%&quot;&gt;\n                D．came; kept\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'B', '无解析');
INSERT INTO `t_sys_questions` VALUES ('246', '英语', '词组/短语', '2013-2014外研版必修1Module6同步精练（3）英语试卷（带解析）', '&lt;p&gt;\n    Peter took advantage________ his visit to Paris to improve his French.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．on\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．at\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．with\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．of\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('247', '英语', '词组/短语', '2013-2014外研版必修1Module6综合测试（2）英语试卷', '&lt;p&gt;\n    Science and technology is changing fast nowadays. I bought this MP3 player at the beginning of this year but now it&amp;#39;s out of ________.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．date\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．order\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．use&amp;nbsp;\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．sight\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'A', '无解析');
INSERT INTO `t_sys_questions` VALUES ('248', '英语', '词组/短语', '2013-2014英语外研版必修1Module6同步精练（1）英语试卷', '&lt;p&gt;\n    Nearly 27 percent of the students in this city have ________ the Internet from home.\n&lt;/p&gt;\n&lt;table width=&quot;100%&quot;&gt;\n    &lt;tbody&gt;\n        &lt;tr class=&quot;firstRow&quot;&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                A．way of\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                B．way to\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                C．access of\n            &lt;/td&gt;\n            &lt;td width=&quot;25%&quot;&gt;\n                D．access to\n            &lt;/td&gt;\n        &lt;/tr&gt;\n    &lt;/tbody&gt;\n&lt;/table&gt;', 'D', '无解析');
INSERT INTO `t_sys_questions` VALUES ('249', '英语', '词组/短语', '2015届江西省高考人教版一轮课时作业必修', '&lt;p&gt;(2014&middot;江西六校高三联考)The decision about which college to go to cannot be made by any one of us________yourself.&lt;/p&gt;&lt;table width=&quot;100%&quot;&gt;&lt;tbody&gt;&lt;tr class=&quot;firstRow&quot;&gt;&lt;td width=&quot;50%&quot;&gt;A．more than&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;B．other than&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;td width=&quot;50%&quot;&gt;C．rather than&lt;/td&gt;&lt;td width=&quot;50%&quot;&gt;D．better than&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'B', '无解析');

-- ----------------------------
-- Table structure for t_sys_role
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role`;
CREATE TABLE `t_sys_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_name` varchar(200) NOT NULL COMMENT '权限名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role
-- ----------------------------
INSERT INTO `t_sys_role` VALUES ('1', '管理员');
INSERT INTO `t_sys_role` VALUES ('2', '学生');
INSERT INTO `t_sys_role` VALUES ('3', '老师');

-- ----------------------------
-- Table structure for t_sys_role_menu_id
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_menu_id`;
CREATE TABLE `t_sys_role_menu_id` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NOT NULL COMMENT '权限id',
  `menu_id` varchar(200) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`,`role_id`,`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_role_menu_id
-- ----------------------------
INSERT INTO `t_sys_role_menu_id` VALUES ('12', '2', '1');
INSERT INTO `t_sys_role_menu_id` VALUES ('13', '2', '101');
INSERT INTO `t_sys_role_menu_id` VALUES ('14', '2', '102');
INSERT INTO `t_sys_role_menu_id` VALUES ('15', '2', '3');
INSERT INTO `t_sys_role_menu_id` VALUES ('16', '2', '301');
INSERT INTO `t_sys_role_menu_id` VALUES ('17', '3', '2');
INSERT INTO `t_sys_role_menu_id` VALUES ('18', '3', '201');
INSERT INTO `t_sys_role_menu_id` VALUES ('19', '3', '202');
INSERT INTO `t_sys_role_menu_id` VALUES ('20', '3', '3');
INSERT INTO `t_sys_role_menu_id` VALUES ('21', '3', '301');
INSERT INTO `t_sys_role_menu_id` VALUES ('35', '1', '1');
INSERT INTO `t_sys_role_menu_id` VALUES ('36', '1', '101');
INSERT INTO `t_sys_role_menu_id` VALUES ('37', '1', '102');
INSERT INTO `t_sys_role_menu_id` VALUES ('38', '1', '2');
INSERT INTO `t_sys_role_menu_id` VALUES ('39', '1', '201');
INSERT INTO `t_sys_role_menu_id` VALUES ('40', '1', '202');
INSERT INTO `t_sys_role_menu_id` VALUES ('41', '1', '3');
INSERT INTO `t_sys_role_menu_id` VALUES ('42', '1', '301');
INSERT INTO `t_sys_role_menu_id` VALUES ('43', '1', '302');
INSERT INTO `t_sys_role_menu_id` VALUES ('44', '1', '303');
INSERT INTO `t_sys_role_menu_id` VALUES ('45', '1', '304');
INSERT INTO `t_sys_role_menu_id` VALUES ('46', '1', '305');

-- ----------------------------
-- Table structure for t_sys_user
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user`;
CREATE TABLE `t_sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `role` varchar(200) DEFAULT NULL COMMENT '角色',
  `sex` varchar(200) DEFAULT NULL COMMENT '性别',
  `birthday` varchar(200) DEFAULT NULL COMMENT '生日',
  `classname` varchar(200) DEFAULT NULL COMMENT '班级',
  `truename` varchar(200) DEFAULT NULL COMMENT '姓名',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `roleid` int(10) unsigned NOT NULL COMMENT '权限id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'nn200433', '123', 'admin', '男', '1485522962', '10', '测试管理员', '福建师范大学', '12315@qq.com', '12315', '1');
INSERT INTO `t_sys_user` VALUES ('16', 'nn200431', '123', 'stu', '女', '1489766400', '10', '王大田', '福建', '12315@qq.com', '12315', '2');
INSERT INTO `t_sys_user` VALUES ('17', 'nn200432', '123', 'teacher', '女', '1489852800', '10', '谢土鳖', '福建省', '12315@qq.com', '12315', '3');

-- ----------------------------
-- Table structure for t_sys_user_papers
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_user_papers`;
CREATE TABLE `t_sys_user_papers` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `papers_id` int(11) NOT NULL COMMENT '卷子id',
  `answer_json` text,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '是否已做',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user_papers
-- ----------------------------
INSERT INTO `t_sys_user_papers` VALUES ('13', '16', '3', '[{\"papers_id\":\"3\",\"question_id\":\"116\",\"rightkey\":\"D\",\"answer\":\"A\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"117\",\"rightkey\":\"C\",\"answer\":\"B\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"118\",\"rightkey\":\"A\",\"answer\":\"C\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"119\",\"rightkey\":\"D\",\"answer\":\"D\",\"result\":true},{\"papers_id\":\"3\",\"question_id\":\"120\",\"rightkey\":\"B\",\"answer\":\"D\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"121\",\"rightkey\":\"D\",\"answer\":\"C\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"122\",\"rightkey\":\"A\",\"answer\":\"B\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"123\",\"rightkey\":\"A\",\"answer\":\"A\",\"result\":true},{\"papers_id\":\"3\",\"question_id\":\"124\",\"rightkey\":\"A\",\"answer\":\"A\",\"result\":true},{\"papers_id\":\"3\",\"question_id\":\"127\",\"rightkey\":\"B\",\"answer\":\"B\",\"result\":true},{\"papers_id\":\"3\",\"question_id\":\"106\",\"rightkey\":\"C\",\"answer\":\"C\",\"result\":true},{\"papers_id\":\"3\",\"question_id\":\"107\",\"rightkey\":\"A\",\"answer\":\"D\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"108\",\"rightkey\":\"C\",\"answer\":\"D\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"109\",\"rightkey\":\"B\",\"answer\":\"C\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"110\",\"rightkey\":\"A\",\"answer\":\"B\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"111\",\"rightkey\":\"B\",\"answer\":\"A\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"112\",\"rightkey\":\"B\",\"answer\":\"A\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"113\",\"rightkey\":\"D\",\"answer\":\"B\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"114\",\"rightkey\":\"B\",\"answer\":\"C\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"115\",\"rightkey\":\"B\",\"answer\":\"D\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"95\",\"rightkey\":\"D\",\"answer\":\"D\",\"result\":true},{\"papers_id\":\"3\",\"question_id\":\"96\",\"rightkey\":\"A\",\"answer\":\"C\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"98\",\"rightkey\":\"C\",\"answer\":\"B\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"99\",\"rightkey\":\"D\",\"answer\":\"A\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"100\",\"rightkey\":\"D\",\"answer\":\"A\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"101\",\"rightkey\":\"C\",\"answer\":\"B\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"102\",\"rightkey\":\"D\",\"answer\":\"C\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"103\",\"rightkey\":\"D\",\"answer\":\"D\",\"result\":true},{\"papers_id\":\"3\",\"question_id\":\"104\",\"rightkey\":\"A\",\"answer\":\"D\",\"result\":false},{\"papers_id\":\"3\",\"question_id\":\"105\",\"rightkey\":\"A\",\"answer\":\"C\",\"result\":false}]', '1');
INSERT INTO `t_sys_user_papers` VALUES ('14', '16', '4', null, '0');
INSERT INTO `t_sys_user_papers` VALUES ('15', '16', '5', '[{\"papers_id\":\"5\",\"question_id\":\"240\",\"rightkey\":\"B\",\"answer\":\"A\",\"result\":false},{\"papers_id\":\"5\",\"question_id\":\"241\",\"rightkey\":\"D\",\"answer\":\"B\",\"result\":false},{\"papers_id\":\"5\",\"question_id\":\"242\",\"rightkey\":\"C\",\"answer\":\"C\",\"result\":true},{\"papers_id\":\"5\",\"question_id\":\"243\",\"rightkey\":\"C\",\"answer\":\"D\",\"result\":false},{\"papers_id\":\"5\",\"question_id\":\"244\",\"rightkey\":\"D\",\"answer\":\"D\",\"result\":true},{\"papers_id\":\"5\",\"question_id\":\"245\",\"rightkey\":\"B\",\"answer\":\"C\",\"result\":false},{\"papers_id\":\"5\",\"question_id\":\"246\",\"rightkey\":\"D\",\"answer\":\"B\",\"result\":false},{\"papers_id\":\"5\",\"question_id\":\"247\",\"rightkey\":\"A\",\"answer\":\"A\",\"result\":true},{\"papers_id\":\"5\",\"question_id\":\"248\",\"rightkey\":\"D\",\"answer\":\"B\",\"result\":false},{\"papers_id\":\"5\",\"question_id\":\"249\",\"rightkey\":\"B\",\"answer\":\"C\",\"result\":false}]', '1');
