-- 数据库 test_on_line

-- ----------------------------
-- 创建数据库
-- ----------------------------
CREATE DATABASE test_on_line DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------分割线-- ----------------------------
/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50713
Source Host           : localhost:3306
Source Database       : test_on_line

Target Server Type    : MYSQL
Target Server Version : 50713
File Encoding         : 65001

Date: 2017-03-19 03:24:23
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
INSERT INTO `t_sys_dic` VALUES ('101046', '其他', '46', '2', '101', '试题目录', '1');
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
INSERT INTO `t_sys_dic` VALUES ('106060', '辛亥革命', '621', '2', '106', '试题目录', '1');
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
INSERT INTO `t_sys_dic` VALUES ('109066', '微生物学', '985', '2', '109', '试题目录', '1');

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
INSERT INTO `t_sys_menu` VALUES ('2', '出题管理', '', '0', '0', '0', 'my_001');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_papers
-- ----------------------------
INSERT INTO `t_sys_papers` VALUES ('1', '测试卷子', '1', 'yw', '胡建吃饭大学');
INSERT INTO `t_sys_papers` VALUES ('2', '测试卷子2', '1', 'yy', '胡建吃饭大学');

-- ----------------------------
-- Table structure for t_sys_papers_questions
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_papers_questions`;
CREATE TABLE `t_sys_papers_questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `papers_id` int(11) NOT NULL COMMENT '卷子id',
  `questions_id` int(11) NOT NULL COMMENT '题目id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_papers_questions
-- ----------------------------
INSERT INTO `t_sys_papers_questions` VALUES ('2', '1', '95');
INSERT INTO `t_sys_papers_questions` VALUES ('3', '1', '96');
INSERT INTO `t_sys_papers_questions` VALUES ('5', '1', '98');
INSERT INTO `t_sys_papers_questions` VALUES ('6', '1', '99');
INSERT INTO `t_sys_papers_questions` VALUES ('7', '1', '100');
INSERT INTO `t_sys_papers_questions` VALUES ('10', '1', '101');
INSERT INTO `t_sys_papers_questions` VALUES ('11', '1', '102');
INSERT INTO `t_sys_papers_questions` VALUES ('13', '2', '124');
INSERT INTO `t_sys_papers_questions` VALUES ('14', '2', '129');
INSERT INTO `t_sys_papers_questions` VALUES ('15', '2', '95');

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
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;

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
INSERT INTO `t_sys_questions` VALUES ('129', '历史', '宋明理学', '2015•北京文综•15', '&lt;p&gt;\n    明朝中后期，王阳明学说在中国士大夫中流行。朝鲜来华使者对此不理解，认为&ldquo;阳明敢肆己意，谤辱朱子，实斯文之罪人也&rdquo;。结合所学判断，下列选项正确的有( &amp;nbsp;)&amp;nbsp;\n&lt;/p&gt;\n&lt;p&gt;\n    ①朝鲜使者以程朱理学为正宗&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;②王阳明心学超越了理学范畴&amp;nbsp;\n&lt;/p&gt;\n&lt;p&gt;\n    ③王阳明与朱熹观点明显不同&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;④王阳明心学是对儒学的叛逆&amp;nbsp;\n&lt;/p&gt;\n&lt;p&gt;\n    &lt;br/&gt;\n&lt;/p&gt;\n&lt;p&gt;\n    A．①②\n&lt;/p&gt;\n&lt;p&gt;\n    B．②③\n&lt;/p&gt;\n&lt;p&gt;\n    C．①③\n&lt;/p&gt;\n&lt;p&gt;\n    D．②④\n&lt;/p&gt;', 'C', '【解析】朝鲜来华使者认为“谤辱朱子，实斯文之罪人也”，说明他们以程朱理学为正宗，故①正确；心学是对程朱理学的发展，并未超越理学范畴，心学承认“理”的存在，只是求理的方法不是外求而是在内心中领悟，故②错误；王阳明主张“发明本心以求理”，朱熹求理的方法是“格物致知”，二者观点明显不同，故③正确；王阳明心学是对儒学的发展而不是叛逆，故④错误，选择C项符合题意。【考点】宋明理学——程朱理学、陆王心学');

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
INSERT INTO `t_sys_role` VALUES ('4', '测试角色');

-- ----------------------------
-- Table structure for t_sys_role_menu_id
-- ----------------------------
DROP TABLE IF EXISTS `t_sys_role_menu_id`;
CREATE TABLE `t_sys_role_menu_id` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `role_id` int(11) NOT NULL COMMENT '权限id',
  `menu_id` varchar(200) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`,`role_id`,`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;

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
INSERT INTO `t_sys_role_menu_id` VALUES ('29', '4', '1');
INSERT INTO `t_sys_role_menu_id` VALUES ('30', '4', '101');
INSERT INTO `t_sys_role_menu_id` VALUES ('31', '4', '102');
INSERT INTO `t_sys_role_menu_id` VALUES ('32', '4', '3');
INSERT INTO `t_sys_role_menu_id` VALUES ('33', '4', '301');
INSERT INTO `t_sys_role_menu_id` VALUES ('34', '4', '305');
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
INSERT INTO `t_sys_role_menu_id` VALUES ('45', '1', '305');
INSERT INTO `t_sys_role_menu_id` VALUES ('46', '1', '306');

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user
-- ----------------------------
INSERT INTO `t_sys_user` VALUES ('1', 'nn200433', '123', 'admin', '男', '1485522962', '10', '测试管理员', '福建师范大学', '12315@qq.com', '12315', '1');
INSERT INTO `t_sys_user` VALUES ('16', 'nn200431', '123', 'stu', '女', '1489766400', '10', '测试学生', '福建师范大学', '12315@qq.com', '12315', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_sys_user_papers
-- ----------------------------
INSERT INTO `t_sys_user_papers` VALUES ('11', '16', '2', null, '0');
INSERT INTO `t_sys_user_papers` VALUES ('12', '16', '1', '[{\"papers_id\":\"1\",\"question_id\":\"95\",\"rightkey\":\"D\",\"answer\":\"A\",\"result\":false},{\"papers_id\":\"1\",\"question_id\":\"96\",\"rightkey\":\"A\",\"answer\":\"B\",\"result\":false},{\"papers_id\":\"1\",\"question_id\":\"98\",\"rightkey\":\"C\",\"answer\":\"C\",\"result\":true},{\"papers_id\":\"1\",\"question_id\":\"99\",\"rightkey\":\"D\",\"answer\":\"D\",\"result\":true},{\"papers_id\":\"1\",\"question_id\":\"100\",\"rightkey\":\"D\",\"answer\":\"D\",\"result\":true},{\"papers_id\":\"1\",\"question_id\":\"101\",\"rightkey\":\"C\",\"answer\":\"C\",\"result\":true},{\"papers_id\":\"1\",\"question_id\":\"102\",\"rightkey\":\"D\",\"answer\":\"B\",\"result\":false}]', '1');


