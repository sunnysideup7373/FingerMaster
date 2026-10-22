//Maya ASCII 2025ff03 scene
//Name: test_scene_clean.ma
//Last modified: Tue, Oct 20, 2026 10:55:30 PM
//Codeset: 936
requires maya "2025ff03";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2025";
fileInfo "version" "2025";
fileInfo "cutIdentifier" "202512041342-b90de33065";
fileInfo "osv" "Windows 11 Home v2009 (Build: 26200)";
fileInfo "UUID" "85DFF6B4-4319-F29B-618F-C68AE251FB30";
createNode transform -s -n "persp";
	rename -uid "1BC732FD-4D85-3723-9B44-7FAE5047F5E0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 80 158 40 ;
	setAttr ".r" -type "double3" -25.029767087642142 16.699244233993635 3.4451189458185574e-14 ;
	setAttr ".rp" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 0 ;
	setAttr ".rpt" -type "double3" -8.3753924932596578e-15 -3.3124874619610364e-15 -6.9038103042720877e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "4E2BE9E3-427B-0431-590D-898EF878212E";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 46.08958667638494;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 68 138.5 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "E6563AF4-4E29-FCA0-335C-6B9D6EEEC55E";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "8CDE69C0-4DA5-382B-A0F1-C394EB8D28E9";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "D452018E-4471-712E-AC20-AC8823C0D7C6";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "04A33D05-4211-4F96-5649-8A906C36E3A7";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "610ACE17-4A78-5453-25D5-9C8480AF80BA";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "9A20D193-4C7E-183C-6EB4-9EA4460EF771";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "GeneratedRig";
	rename -uid "553C3ED3-48B8-71A2-4278-59825057C656";
createNode transform -n "ctl_l_hand" -p "GeneratedRig";
	rename -uid "BD1F37C6-4BC9-3189-4BAD-F7BEDBA682A3";
	setAttr ".t" -type "double3" 60 140 0 ;
createNode nurbsCurve -n "ctl_l_handShape" -p "ctl_l_hand";
	rename -uid "8DFFE194-43DC-7871-2FCF-3DAF68455C6A";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.919294936395389e-16 3.1344464995648984 -3.134446499564898
		1.6620250738737023e-32 4.4327767502175508 -2.7142929292443649e-16
		-1.919294936395389e-16 3.1344464995648975 3.134446499564898
		-2.7142929292443659e-16 2.2979592950099322e-16 4.4327767502175526
		-1.919294936395389e-16 -3.134446499564898 3.134446499564898
		-2.7189257911234355e-32 -4.4327767502175535 4.4403427878412899e-16
		1.919294936395389e-16 -3.1344464995648975 -3.134446499564898
		2.7142929292443659e-16 -6.044962003119836e-16 -4.4327767502175526
		1.919294936395389e-16 3.1344464995648984 -3.134446499564898
		1.6620250738737023e-32 4.4327767502175508 -2.7142929292443649e-16
		-1.919294936395389e-16 3.1344464995648975 3.134446499564898
		;
createNode transform -n "_module_l_FingerThumb" -p "GeneratedRig";
	rename -uid "D87F97F5-4F2B-A6C4-FA76-D3AE07A8C011";
createNode transform -n "drivenChains_l_FingerThumb" -p "_module_l_FingerThumb";
	rename -uid "459EBDD2-49BE-E816-51BA-A8AB2F06CD11";
createNode joint -n "jnt_l_FingerThumbA" -p "drivenChains_l_FingerThumb";
	rename -uid "7B699694-47D8-C8C1-EB7E-0588DE8CF47E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 15.225157010678124 -42.875988666635777 -21.801409486352192 ;
createNode joint -n "jnt_l_FingerThumbB" -p "jnt_l_FingerThumbA";
	rename -uid "C7BF6CD6-4E2B-827C-C40A-B8AE5DF06615";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -1.8217975217512576 6.8893340331602291 0.94210657940607445 ;
createNode joint -n "jnt_l_FingerThumbC" -p "jnt_l_FingerThumbB";
	rename -uid "57F1D26E-4C95-E562-FC4E-A09C7383A05F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.90804311435320462 4.085385972930669 2.1988800441044392 ;
createNode joint -n "jnt_l_FingerThumbEnd" -p "jnt_l_FingerThumbC";
	rename -uid "118B9DEC-40D7-EB93-B057-3EACB1F8C777";
	setAttr ".t" -type "double3" 1.8466185312619283 -6.7723604502134549e-15 -5.5511151231257827e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "jnt_l_FingerThumbC_parentConstraint1" -p "jnt_l_FingerThumbC";
	rename -uid "A8B5536E-41CA-3BCD-9C18-618D4AE6A9DE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerThumbC_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.0658141036401503e-14 -2.8421709430404007e-14 
		-2.1316282072803006e-14 ;
	setAttr ".tg[0].tor" -type "double3" 7.9513867036587919e-16 3.3395824155366928e-14 
		-3.6278201835443235e-15 ;
	setAttr ".lr" -type "double3" -7.5786654519247955e-16 -3.2634851599743329e-14 3.3047950987081855e-15 ;
	setAttr ".rst" -type "double3" 2.3579652245103198 0 7.1054273576010019e-15 ;
	setAttr ".rsrr" -type "double3" -7.5786654519247955e-16 -3.2634851599743329e-14 
		3.3047950987081855e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_FingerThumbB_parentConstraint1" -p "jnt_l_FingerThumbB";
	rename -uid "9826B238-4065-52BB-B823-9880484D48BB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerThumbB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 
		-2.1316282072803006e-14 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.2722218725854067e-14 -6.9077671988035752e-15 ;
	setAttr ".lr" -type "double3" 2.7332891793827016e-16 -1.3635385792602381e-14 6.5847421139674373e-15 ;
	setAttr ".rst" -type "double3" 2.9393876913398156 5.6843418860808015e-14 -7.1054273576010019e-15 ;
	setAttr ".rsrr" -type "double3" 2.7332891793827016e-16 -1.3635385792602381e-14 6.5847421139674373e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_FingerThumbA_parentConstraint1" -p "jnt_l_FingerThumbA";
	rename -uid "3786F676-495D-EB65-BB88-499260595603";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerThumbA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 
		7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.9083328088781104e-14 -9.5416640443905503e-15 
		9.5416640443905503e-15 ;
	setAttr ".lr" -type "double3" 1.8288189418415214e-14 2.683593012484843e-15 -7.5538173684758504e-15 ;
	setAttr ".rst" -type "double3" 62 139.00000000000003 3.000000000000008 ;
	setAttr ".rsrr" -type "double3" 1.8288189418415214e-14 2.683593012484843e-15 -7.5538173684758504e-15 ;
	setAttr -k on ".w0";
createNode transform -n "driverChains_l_FingerThumb" -p "_module_l_FingerThumb";
	rename -uid "B14989F4-4BB9-7183-B0AA-EFBE30C11943";
createNode transform -n "fkChain_l_FingerThumb" -p "driverChains_l_FingerThumb";
	rename -uid "557BB182-47B5-2A87-D70A-6097B57356D8";
createNode transform -n "fkControls_l_FingerThumb" -p "fkChain_l_FingerThumb";
	rename -uid "451DCDFA-4859-6BE3-CFDB-BEA8955DD291";
createNode transform -n "off_l_FingerThumbA_fk" -p "fkControls_l_FingerThumb";
	rename -uid "1B8A9178-4DB9-955C-CB20-359E0782A919";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "ctl_l_FingerThumbA_fk" -p "off_l_FingerThumbA_fk";
	rename -uid "B817057E-4768-D0E7-7F3B-96B2140D0EC6";
createNode nurbsCurve -n "ctl_l_FingerThumbA_fkShape" -p "ctl_l_FingerThumbA_fk";
	rename -uid "75FF95BE-4A0E-9600-9E85-9DA2BC337D34";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerThumbA_fk_parentConstraint" -p "off_l_FingerThumbA_fk";
	rename -uid "21A882BD-4F75-7824-BECA-F89B715909C5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2 -1 3 ;
	setAttr ".tg[0].tor" -type "double3" 15.22515701067814 -42.875988666635777 -21.801409486352199 ;
	setAttr ".lr" -type "double3" 15.225157010678144 -42.875988666635777 -21.801409486352199 ;
	setAttr ".rst" -type "double3" 62 139 3 ;
	setAttr ".rsrr" -type "double3" 15.225157010678144 -42.875988666635777 -21.801409486352199 ;
	setAttr -k on ".w0";
createNode transform -n "off_l_FingerThumbB_fk" -p "fkControls_l_FingerThumb";
	rename -uid "60FB9F01-48AD-7363-A53A-8588904FBB5D";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "ctl_l_FingerThumbB_fk" -p "off_l_FingerThumbB_fk";
	rename -uid "7A41EC97-4BB0-2CB3-E556-BBB7768FEF27";
createNode nurbsCurve -n "ctl_l_FingerThumbB_fkShape" -p "ctl_l_FingerThumbB_fk";
	rename -uid "AC636774-40CC-0BCD-E7A5-D6A0D8DAC0A6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerThumbB_fk_parentConstraint" -p "off_l_FingerThumbB_fk";
	rename -uid "0620F508-447A-26E1-0C1C-84A178914FAB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerThumbA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.9393876913398076 2.8421709430404007e-14 1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" -1.8217975217512736 6.8893340331602255 0.94210657940608322 ;
	setAttr ".lr" -type "double3" 11.194785218593688 -36.422309803534098 -18.434948822922248 ;
	setAttr ".rst" -type "double3" 63.999999999999986 138.20000000000002 5.0000000000000133 ;
	setAttr ".rsrr" -type "double3" 11.194785218593688 -36.422309803534098 -18.434948822922248 ;
	setAttr -k on ".w0";
createNode transform -n "off_l_FingerThumbC_fk" -p "fkControls_l_FingerThumb";
	rename -uid "78B56D14-4345-8FDF-B224-DD9E05F35484";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "ctl_l_FingerThumbC_fk" -p "off_l_FingerThumbC_fk";
	rename -uid "B33920E0-4DBA-35FF-60D8-04BB5C89A078";
createNode nurbsCurve -n "ctl_l_FingerThumbC_fkShape" -p "ctl_l_FingerThumbC_fk";
	rename -uid "7C6CBF3A-43ED-F7DF-93D1-9FAFF0E372F8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerThumbC_fk_parentConstraint" -p "off_l_FingerThumbC_fk";
	rename -uid "E71C5736-4ABC-BCCF-E34B-38B59155A08B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerThumbB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.3579652245103375 5.6843418860808015e-14 0 ;
	setAttr ".tg[0].tor" -type "double3" -0.9080431143531994 4.0853859729306583 2.1988800441044418 ;
	setAttr ".lr" -type "double3" 8.2171692059965338 -32.787878040297102 -14.931417178137629 ;
	setAttr ".rst" -type "double3" 65.800000000000011 137.60000000000005 6.4000000000000217 ;
	setAttr ".rsrr" -type "double3" 8.2171692059965338 -32.787878040297102 -14.931417178137629 ;
	setAttr -k on ".w0";
createNode transform -n "_module_l_FingerIndex" -p "GeneratedRig";
	rename -uid "138B4FB2-483D-FE4E-87A9-1BBDFC017CAF";
createNode transform -n "drivenChains_l_FingerIndex" -p "_module_l_FingerIndex";
	rename -uid "F9155AA6-4FAF-8479-DEC5-6FA63391F01C";
createNode joint -n "jnt_l_FingerIndexA" -p "drivenChains_l_FingerIndex";
	rename -uid "DB38113C-49B7-4389-FEC7-AA9ED0977BED";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.27915285872323897 -4.8911522098506142 -3.270487923183381 ;
createNode joint -n "jnt_l_FingerIndexB" -p "jnt_l_FingerIndexA";
	rename -uid "69F477EE-40DF-9183-B634-A4A8B2F091FD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.20866405160209583 2.400492771854482 -1.7108798518032167 ;
createNode joint -n "jnt_l_FingerIndexC" -p "jnt_l_FingerIndexB";
	rename -uid "74DE28C6-4202-29D5-08ED-01BC870EEED8";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.27509616299104861 2.4743166538306371 -1.3810591524600502 ;
createNode joint -n "jnt_l_FingerIndexEnd" -p "jnt_l_FingerIndexC";
	rename -uid "B73E3ADD-4200-2CEF-D7D0-5BBFD484943D";
	setAttr ".t" -type "double3" 1.8110770276274795 4.4908521346087595e-14 -1.9461642838239213e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "jnt_l_FingerIndexC_parentConstraint1" -p "jnt_l_FingerIndexC";
	rename -uid "F50404FB-4F62-4F83-4364-EEB82F0931C5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerIndexC_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.1316282072803006e-14 0 -1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.1704938189454721e-12 -1.4431766867140709e-13 
		-2.1198521192371588e-15 ;
	setAttr ".lr" -type "double3" -1.1704876069246098e-12 1.4415809738550847e-13 2.1151931035890108e-15 ;
	setAttr ".rst" -type "double3" 2.310844001658289 0 -8.6042284408449632e-16 ;
	setAttr ".rsrr" -type "double3" -1.1704876069246098e-12 1.4415809738550847e-13 2.1151931035890108e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_FingerIndexB_parentConstraint1" -p "jnt_l_FingerIndexB";
	rename -uid "33F82813-482A-818F-8C95-D5B6CB5D25E3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerIndexB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 2.8421709430404007e-14 
		2.0261570199409107e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.2424041724466862e-16 3.975693351829396e-16 
		-4.5192451772748207e-16 ;
	setAttr ".lr" -type "double3" -1.0560435465796834e-16 -3.9989884300627713e-16 5.9324799234329268e-16 ;
	setAttr ".rst" -type "double3" 3.5185224171518428 2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" -1.0560435465796834e-16 -3.9989884300627713e-16 
		5.9324799234329268e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_FingerIndexA_parentConstraint1" -p "jnt_l_FingerIndexA";
	rename -uid "6D745DB3-453D-270C-1C22-DD8A12B7999B";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerIndexA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 9.9392333795734899e-17 7.9513867036587919e-15 
		4.42606486434132e-15 ;
	setAttr ".lr" -type "double3" -1.4908850069360205e-16 -7.961481237559919e-15 -3.9586102944582535e-15 ;
	setAttr ".rst" -type "double3" 69 140 3 ;
	setAttr ".rsrr" -type "double3" -1.4908850069360205e-16 -7.961481237559919e-15 -3.9586102944582535e-15 ;
	setAttr -k on ".w0";
createNode transform -n "driverChains_l_FingerIndex" -p "_module_l_FingerIndex";
	rename -uid "84D5BD61-4954-4CED-6E5A-2DBBD941E285";
createNode transform -n "fkChain_l_FingerIndex" -p "driverChains_l_FingerIndex";
	rename -uid "6DCA14FF-41B2-C44C-2C5B-1F925F2FCC53";
createNode transform -n "fkControls_l_FingerIndex" -p "fkChain_l_FingerIndex";
	rename -uid "8BD4098B-4ED6-1703-2225-4AAEF002CE01";
createNode transform -n "off_l_FingerIndexA_fk" -p "fkControls_l_FingerIndex";
	rename -uid "6B395D64-481B-67D3-E21C-08AFBDD9EC34";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "ctl_l_FingerIndexA_fk" -p "off_l_FingerIndexA_fk";
	rename -uid "BF0EED9F-4C2E-6440-23A5-FE9366EC3FEB";
createNode nurbsCurve -n "ctl_l_FingerIndexA_fkShape" -p "ctl_l_FingerIndexA_fk";
	rename -uid "36BF068C-4CA7-B776-0DED-92A5427EE330";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerIndexA_fk_parentConstraint" -p "off_l_FingerIndexA_fk";
	rename -uid "85A11913-4321-692B-8132-809284675852";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 9 0 3 ;
	setAttr ".tg[0].tor" -type "double3" 0.27915285872323914 -4.8911522098506186 -3.2704879231833832 ;
	setAttr ".lr" -type "double3" 0.27915285872323919 -4.8911522098506204 -3.2704879231833841 ;
	setAttr ".rst" -type "double3" 69 140 3 ;
	setAttr ".rsrr" -type "double3" 0.27915285872323919 -4.8911522098506204 -3.2704879231833841 ;
	setAttr -k on ".w0";
createNode transform -n "off_l_FingerIndexB_fk" -p "fkControls_l_FingerIndex";
	rename -uid "C5647A1E-43B5-4765-6DEE-A29A4545C1B0";
createNode transform -n "ctl_l_FingerIndexB_fk" -p "off_l_FingerIndexB_fk";
	rename -uid "FAE0802A-467C-5D04-45AB-49AA777A68A8";
createNode nurbsCurve -n "ctl_l_FingerIndexB_fkShape" -p "ctl_l_FingerIndexB_fk";
	rename -uid "03860628-47D8-2AF1-AEEC-D78E68261A49";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerIndexB_fk_parentConstraint" -p "off_l_FingerIndexB_fk";
	rename -uid "13A6AE11-4F2B-A8D7-C563-97A82EE80816";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerIndexA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5185224171518215 0 -1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" -0.20866405160209592 2.4004927718544891 -1.710879851803212 ;
	setAttr ".lr" -type "double3" 0.21560166663048277 -2.4802053767472123 -4.9697407281108132 ;
	setAttr ".rst" -type "double3" 72.499999999999986 139.8 3.2999999999999985 ;
	setAttr ".rsrr" -type "double3" 0.21560166663048277 -2.4802053767472123 -4.9697407281108132 ;
	setAttr -k on ".w0";
createNode transform -n "off_l_FingerIndexC_fk" -p "fkControls_l_FingerIndex";
	rename -uid "26BB0721-4107-4229-A509-5087CC3BB832";
createNode transform -n "ctl_l_FingerIndexC_fk" -p "off_l_FingerIndexC_fk";
	rename -uid "96B1205B-491D-C421-EB66-D6BCAF9955A2";
createNode nurbsCurve -n "ctl_l_FingerIndexC_fkShape" -p "ctl_l_FingerIndexC_fk";
	rename -uid "248577AD-43A2-69E0-7CF1-B0888EFF8E3F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerIndexC_fk_parentConstraint" -p "off_l_FingerIndexC_fk";
	rename -uid "C2EEEA43-4AE8-49F8-AB5F-6C965A0E0ABF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerIndexB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.3108440016583103 5.6843418860808015e-14 -1.9428902930940239e-16 ;
	setAttr ".tg[0].tor" -type "double3" -0.2750961629922189 2.4743166538307806 -1.3810591524600493 ;
	setAttr ".lr" -type "double3" 5.7765088385495588e-18 3.4503220516150508e-16 -6.3401917459109809 ;
	setAttr ".rst" -type "double3" 74.800000000000026 139.60000000000005 3.400000000000007 ;
	setAttr ".rsrr" -type "double3" 5.7765088385495588e-18 3.4503220516150508e-16 -6.3401917459109809 ;
	setAttr -k on ".w0";
createNode transform -n "_module_l_FingerMiddle" -p "GeneratedRig";
	rename -uid "21E9B078-4A9B-3DF7-809C-B38A77EEDF37";
createNode transform -n "drivenChains_l_FingerMiddle" -p "_module_l_FingerMiddle";
	rename -uid "ED30D1C6-4FE6-FC01-758F-9183BAB50448";
createNode joint -n "jnt_l_FingerMiddleA" -p "drivenChains_l_FingerMiddle";
	rename -uid "96F05CF7-4763-8B34-7A1B-5BA07E46BEE4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -3.0127875041831653 ;
createNode joint -n "jnt_l_FingerMiddleB" -p "jnt_l_FingerMiddleA";
	rename -uid "770C8A78-4A54-749F-3E36-42A36F952463";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.3859178508130265 ;
createNode joint -n "jnt_l_FingerMiddleC" -p "jnt_l_FingerMiddleB";
	rename -uid "6B04B2A9-45A1-AE14-F38C-88A464AD81B3";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.3118877825030784 ;
createNode joint -n "jnt_l_FingerMiddleEnd" -p "jnt_l_FingerMiddleC";
	rename -uid "8E2087E8-446B-9022-81CE-CD9483433036";
	setAttr ".t" -type "double3" 2.009975124224177 -1.7208456881689926e-15 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "jnt_l_FingerMiddleC_parentConstraint1" -p "jnt_l_FingerMiddleC";
	rename -uid "25993CE5-4AB3-A6C7-A75B-1B9B98A9C66A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerMiddleC_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 1.7890620083232284e-15 ;
	setAttr ".lr" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr ".rst" -type "double3" 2.6076809620810266 -2.8421709430404007e-14 0 ;
	setAttr ".rsrr" -type "double3" 0 0 -1.5902773407317584e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_FingerMiddleB_parentConstraint1" -p "jnt_l_FingerMiddleB";
	rename -uid "F7FB3428-478F-0E59-B3AB-328BF569BAA9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerMiddleB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 2.7829853462805772e-15 ;
	setAttr ".lr" -type "double3" 0 0 -2.5842006786891076e-15 ;
	setAttr ".rst" -type "double3" 3.8052595180880786 0 0 ;
	setAttr ".rsrr" -type "double3" 0 0 -2.5842006786891076e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_FingerMiddleA_parentConstraint1" -p "jnt_l_FingerMiddleA";
	rename -uid "CD42A1B5-491A-6A3B-93D8-3E9E9704BFCB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerMiddleA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -7.9513867036587939e-16 ;
	setAttr ".lr" -type "double3" 0 0 -3.975693351829395e-16 ;
	setAttr ".rst" -type "double3" 69.5 140.2 1 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.975693351829395e-16 ;
	setAttr -k on ".w0";
createNode transform -n "driverChains_l_FingerMiddle" -p "_module_l_FingerMiddle";
	rename -uid "E725B7BF-40AD-6F43-09B4-7FA75FBEC605";
createNode transform -n "fkChain_l_FingerMiddle" -p "driverChains_l_FingerMiddle";
	rename -uid "B1D39D32-40A9-31E4-C1DF-6F9C93E20E84";
createNode transform -n "fkControls_l_FingerMiddle" -p "fkChain_l_FingerMiddle";
	rename -uid "5623F625-40D9-8F2D-CEFD-1BB59CF66ECA";
createNode transform -n "off_l_FingerMiddleA_fk" -p "fkControls_l_FingerMiddle";
	rename -uid "EB830D60-4EEE-5858-C59C-0FA8E62CC21F";
createNode transform -n "ctl_l_FingerMiddleA_fk" -p "off_l_FingerMiddleA_fk";
	rename -uid "AE9CF82B-4184-3A25-B370-7ABD3407E9AC";
createNode nurbsCurve -n "ctl_l_FingerMiddleA_fkShape" -p "ctl_l_FingerMiddleA_fk";
	rename -uid "8735E60B-409F-4176-9B4D-73A7B948FD50";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerMiddleA_fk_parentConstraint" -p "off_l_FingerMiddleA_fk";
	rename -uid "CC90D1B1-44A3-EA25-9185-41AFE79CEB64";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 9.5 0.19999999999998863 1 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -3.0127875041831658 ;
	setAttr ".lr" -type "double3" 0 0 -3.0127875041831653 ;
	setAttr ".rst" -type "double3" 69.5 140.2 1 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.0127875041831653 ;
	setAttr -k on ".w0";
createNode transform -n "off_l_FingerMiddleB_fk" -p "fkControls_l_FingerMiddle";
	rename -uid "FE094407-4B55-DDE1-4E9E-CDBF611F3208";
createNode transform -n "ctl_l_FingerMiddleB_fk" -p "off_l_FingerMiddleB_fk";
	rename -uid "BBABA552-4339-7750-7A2E-579A60A383A9";
createNode nurbsCurve -n "ctl_l_FingerMiddleB_fkShape" -p "ctl_l_FingerMiddleB_fk";
	rename -uid "1BEABFE5-48FE-848A-E1F0-1EA6424763C8";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerMiddleB_fk_parentConstraint" -p "off_l_FingerMiddleB_fk";
	rename -uid "627B9603-4EA8-9B34-9CD4-068EE23F0460";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerMiddleA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.8052595180880857 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.3859178508130281 ;
	setAttr ".lr" -type "double3" 0 0 -4.3987053549961939 ;
	setAttr ".rst" -type "double3" 73.3 140 1 ;
	setAttr ".rsrr" -type "double3" 0 0 -4.3987053549961939 ;
	setAttr -k on ".w0";
createNode transform -n "off_l_FingerMiddleC_fk" -p "fkControls_l_FingerMiddle";
	rename -uid "2562B293-4806-34FA-7A0C-F0A069B84BCA";
createNode transform -n "ctl_l_FingerMiddleC_fk" -p "off_l_FingerMiddleC_fk";
	rename -uid "729B3443-4B52-DFD1-85E5-6EA8C206C2D9";
createNode nurbsCurve -n "ctl_l_FingerMiddleC_fkShape" -p "ctl_l_FingerMiddleC_fk";
	rename -uid "605082D2-4450-347A-475D-D4B26CDB5E7A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerMiddleC_fk_parentConstraint" -p "off_l_FingerMiddleC_fk";
	rename -uid "01E4B752-428C-47AE-B5C2-2BAEADCFD102";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerMiddleB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.6076809620810195 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -1.3118877825030766 ;
	setAttr ".lr" -type "double3" 0 0 -5.7105931374992709 ;
	setAttr ".rst" -type "double3" 75.899999999999949 139.79999999999998 1 ;
	setAttr ".rsrr" -type "double3" 0 0 -5.7105931374992709 ;
	setAttr -k on ".w0";
createNode transform -n "_module_l_FingerRing" -p "GeneratedRig";
	rename -uid "DE26DEDC-4BB0-DEAD-9B4E-DBBED766A197";
createNode transform -n "drivenChains_l_FingerRing" -p "_module_l_FingerRing";
	rename -uid "57864963-45CB-5F81-58E2-249EF39F01FA";
createNode joint -n "jnt_l_FingerRingA" -p "drivenChains_l_FingerRing";
	rename -uid "DE8ECF22-401A-7A8E-554F-BAB0CD636172";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.18647967670467971 3.2651729263822591 -3.2704879231833583 ;
createNode joint -n "jnt_l_FingerRingB" -p "jnt_l_FingerRingA";
	rename -uid "808BDD5F-4428-97FF-F9C3-6692A9ED71A6";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.073399919739062611 -0.88149349126331744 -1.4949226541585279 ;
createNode joint -n "jnt_l_FingerRingC" -p "jnt_l_FingerRingB";
	rename -uid "61668A77-400A-EFD8-E926-A789133B6282";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.24991492890647884 -2.3728268279242761 -1.2546507072136828 ;
createNode joint -n "jnt_l_FingerRingEnd" -p "jnt_l_FingerRingC";
	rename -uid "89D1F08D-4626-F390-1050-66B300CFE823";
	setAttr ".t" -type "double3" 1.9104973174542847 4.912736883966279e-15 1.0783657197545169e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "jnt_l_FingerRingC_parentConstraint1" -p "jnt_l_FingerRingC";
	rename -uid "3DD3BBBF-45A4-6E65-8C06-C483518D0F21";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerRingC_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 -2.8421709430404007e-14 
		-6.6613381477509392e-16 ;
	setAttr ".tg[0].tor" -type "double3" 3.8360471228463885e-13 -9.8318896590740976e-13 
		2.0950040357882251e-15 ;
	setAttr ".lr" -type "double3" -3.8350842596127414e-13 9.8348403689836552e-13 -2.1571242444138498e-15 ;
	setAttr ".rst" -type "double3" 2.410394158638816 -2.8421709430404007e-14 4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" -3.8350842596127414e-13 9.8348403689836552e-13 -2.1571242444138498e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_FingerRingB_parentConstraint1" -p "jnt_l_FingerRingB";
	rename -uid "0B3E5479-470D-8330-210E-428AD2DB4BEA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerRingB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 8.5265128291212022e-14 
		4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 -4.9696166897867459e-16 2.6604920599034119e-15 ;
	setAttr ".lr" -type "double3" -3.1060104311167271e-18 4.9569985224103331e-16 -2.7834706604104393e-15 ;
	setAttr ".rst" -type "double3" 3.5114099732159048 5.6843418860808015e-14 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" -3.1060104311167271e-18 4.9569985224103331e-16 -2.7834706604104393e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_FingerRingA_parentConstraint1" -p "jnt_l_FingerRingA";
	rename -uid "68ACFD4A-4DD8-67FD-822A-1589D778E32A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerRingA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 9.9392333795734899e-17 0 -5.388928097987502e-16 ;
	setAttr ".lr" -type "double3" -1.2424041724466862e-16 -3.8825130388958945e-18 -3.4942617350063054e-18 ;
	setAttr ".rst" -type "double3" 69 140 -1.0000000000000004 ;
	setAttr ".rsrr" -type "double3" -1.2424041724466862e-16 -3.8825130388958945e-18 
		-3.4942617350063054e-18 ;
	setAttr -k on ".w0";
createNode transform -n "driverChains_l_FingerRing" -p "_module_l_FingerRing";
	rename -uid "562A58B2-4B5E-0FBE-D747-DDB69C2427B9";
createNode transform -n "fkChain_l_FingerRing" -p "driverChains_l_FingerRing";
	rename -uid "80AE4192-4D12-CACF-47E7-F293A57E15B1";
createNode transform -n "fkControls_l_FingerRing" -p "fkChain_l_FingerRing";
	rename -uid "557E9570-4D63-C240-4A9F-8492931FE00D";
createNode transform -n "off_l_FingerRingA_fk" -p "fkControls_l_FingerRing";
	rename -uid "430DF797-46C6-BEAE-1AF2-579B6BC0CF13";
createNode transform -n "ctl_l_FingerRingA_fk" -p "off_l_FingerRingA_fk";
	rename -uid "099AD77C-468D-B2EF-1EE3-008737F79E75";
createNode nurbsCurve -n "ctl_l_FingerRingA_fkShape" -p "ctl_l_FingerRingA_fk";
	rename -uid "197DBA94-4D44-9471-4286-D291056D0B60";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerRingA_fk_parentConstraint" -p "off_l_FingerRingA_fk";
	rename -uid "028B2DFC-4D34-62D9-7691-79A0C8B03A29";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 9 0 -1 ;
	setAttr ".tg[0].tor" -type "double3" -0.18647967670467977 3.2651729263822591 -3.2704879231833583 ;
	setAttr ".lr" -type "double3" -0.1864796767046798 3.2651729263822591 -3.2704879231833583 ;
	setAttr ".rst" -type "double3" 69 140 -1 ;
	setAttr ".rsrr" -type "double3" -0.1864796767046798 3.2651729263822591 -3.2704879231833583 ;
	setAttr -k on ".w0";
createNode transform -n "off_l_FingerRingB_fk" -p "fkControls_l_FingerRing";
	rename -uid "3D62FA43-4BA5-1D58-72C6-C884343ACC9E";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "ctl_l_FingerRingB_fk" -p "off_l_FingerRingB_fk";
	rename -uid "D79A4D59-4B68-14C2-EC1E-0093EA7EEE00";
createNode nurbsCurve -n "ctl_l_FingerRingB_fkShape" -p "ctl_l_FingerRingB_fk";
	rename -uid "463AE205-4548-23EC-DC3F-298C7D20815D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerRingB_fk_parentConstraint" -p "off_l_FingerRingB_fk";
	rename -uid "C37EB855-4AC6-53C5-BA27-2FA6574E5DF7";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerRingA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5114099732158834 0 -2.6645352591003757e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0.073399919739062708 -0.88149349126331711 -1.4949226541585297 ;
	setAttr ".lr" -type "double3" -0.19808500003651178 2.3777118782594004 -4.7636416907262067 ;
	setAttr ".rst" -type "double3" 72.5 139.8 -1.2000000000000011 ;
	setAttr ".rsrr" -type "double3" -0.19808500003651178 2.3777118782594004 -4.7636416907262067 ;
	setAttr -k on ".w0";
createNode transform -n "off_l_FingerRingC_fk" -p "fkControls_l_FingerRing";
	rename -uid "17D8726D-413D-6E37-679D-66B9461EF740";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "ctl_l_FingerRingC_fk" -p "off_l_FingerRingC_fk";
	rename -uid "80CF1F40-483B-D74E-CAA7-D79F1DC94094";
createNode nurbsCurve -n "ctl_l_FingerRingC_fkShape" -p "ctl_l_FingerRingC_fk";
	rename -uid "B54078CC-4E09-CE6E-CFD5-08BF93BC1CD3";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerRingC_fk_parentConstraint" -p "off_l_FingerRingC_fk";
	rename -uid "66ACBACA-4EB4-C651-BDF9-D69D79790A5D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerRingB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.4103941586388018 2.8421709430404007e-14 -4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0.24991492890609518 -2.3728268279232929 -1.2546507072136772 ;
	setAttr ".lr" -type "double3" -1.1632647327531538e-16 -1.5403854664228278e-16 -6.0090059574943169 ;
	setAttr ".rst" -type "double3" 74.90000000000002 139.60000000000005 -1.3000000000000136 ;
	setAttr ".rsrr" -type "double3" -1.1632647327531538e-16 -1.5403854664228278e-16 
		-6.0090059574943169 ;
	setAttr -k on ".w0";
createNode transform -n "_module_l_FingerPinky" -p "GeneratedRig";
	rename -uid "E77599AF-44C2-887C-F0A0-CC971AA32832";
createNode transform -n "drivenChains_l_FingerPinky" -p "_module_l_FingerPinky";
	rename -uid "0BCA4162-4E44-4C82-C45B-2D9830C0E3D9";
createNode joint -n "jnt_l_FingerPinkyA" -p "drivenChains_l_FingerPinky";
	rename -uid "311BE5D0-4775-B3A6-C86A-48A01C2997CB";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.18632190898579407 10.303180086780648 1.041626676009914 ;
createNode joint -n "jnt_l_FingerPinkyB" -p "jnt_l_FingerPinkyA";
	rename -uid "A58AF814-4EF7-8FDE-9521-8A8BA8C71AE4";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.29731564120064291 -4.1787981713703957 -5.0981199988219137 ;
createNode joint -n "jnt_l_FingerPinkyC" -p "jnt_l_FingerPinkyB";
	rename -uid "BC1534A3-4E00-1415-39DD-369F77ACB8BC";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.32467709582146698 -3.0856982486484119 -1.947061874104159 ;
createNode joint -n "jnt_l_FingerPinkyD" -p "jnt_l_FingerPinkyC";
	rename -uid "110C71E4-46AB-D891-0DEB-40863F0D2C2A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.39854217037264983 -2.9863349684018754 -1.6042709166474074 ;
createNode joint -n "jnt_l_FingerPinkyEnd" -p "jnt_l_FingerPinkyD";
	rename -uid "EDB995BD-425D-92FA-5D72-36A12431AEBB";
	setAttr ".t" -type "double3" 1.51327459504214 -9.2426066800044282e-15 2.6185892813645936e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "jnt_l_FingerPinkyD_parentConstraint1" -p "jnt_l_FingerPinkyD";
	rename -uid "47384B9D-4661-D164-4012-97BD4CEFBE3C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerPinkyD_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 -2.8421709430404007e-14 
		1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" -6.7243883429504454e-13 2.7034714792439894e-14 
		2.8885897009385454e-16 ;
	setAttr ".lr" -type "double3" 6.7239535014900872e-13 -2.7183803293133484e-14 -5.2491576285888431e-16 ;
	setAttr ".rst" -type "double3" 1.9131126469708946 -5.6843418860808015e-14 2.1094237467877974e-15 ;
	setAttr ".rsrr" -type "double3" 6.7239535014900872e-13 -2.7183803293133484e-14 -5.2491576285888431e-16 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_FingerPinkyC_parentConstraint1" -p "jnt_l_FingerPinkyC";
	rename -uid "A87FFFB4-42BA-6104-3907-50A72B7FC8AD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerPinkyC_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -2.8421709430404007e-14 
		-7.7715611723760958e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 1.9878466759146976e-15 -3.081162347667781e-15 ;
	setAttr ".lr" -type "double3" -4.3484146035634068e-17 -1.9839641628758019e-15 2.7907503723583689e-15 ;
	setAttr ".rst" -type "double3" 2.8231188426986122 -5.6843418860808015e-14 3.5527136788005009e-15 ;
	setAttr ".rsrr" -type "double3" -4.3484146035634068e-17 -1.9839641628758019e-15 
		2.7907503723583689e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_FingerPinkyB_parentConstraint1" -p "jnt_l_FingerPinkyB";
	rename -uid "1EE72DE3-42A6-7ED6-A47F-E3A652137B1A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerPinkyB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8421709430404007e-14 0 4.4408920985006262e-15 ;
	setAttr ".tg[0].tor" -type "double3" 4.9696166897867449e-16 -7.9513867036587919e-16 
		3.4538835994017876e-15 ;
	setAttr ".lr" -type "double3" -4.9696166897867449e-16 -1.9412565194479486e-17 -3.1673541371312708e-15 ;
	setAttr ".rst" -type "double3" 5.5910642993977504 0 5.3290705182007514e-15 ;
	setAttr ".rsrr" -type "double3" -4.9696166897867449e-16 -1.9412565194479486e-17 
		-3.1673541371312708e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_l_FingerPinkyA_parentConstraint1" -p "jnt_l_FingerPinkyA";
	rename -uid "39606E2F-418F-4EB0-20F4-4DAD00B7A71A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerPinkyA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -2.8421709430404007e-14 -1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" -4.2241741863187325e-16 -1.7493050748049341e-14 
		7.0195835743237773e-16 ;
	setAttr ".lr" -type "double3" 4.0999337690740627e-16 1.5900443899494245e-14 -7.9047965471920382e-16 ;
	setAttr ".rst" -type "double3" 62 139.79999999999998 -2.0000000000000018 ;
	setAttr ".rsrr" -type "double3" 4.0999337690740627e-16 1.5900443899494245e-14 -7.9047965471920382e-16 ;
	setAttr -k on ".w0";
createNode transform -n "driverChains_l_FingerPinky" -p "_module_l_FingerPinky";
	rename -uid "77428623-4BBE-727D-6B36-A0BEB9F43485";
createNode transform -n "fkChain_l_FingerPinky" -p "driverChains_l_FingerPinky";
	rename -uid "FBBDDD0F-44F7-1108-5502-82948F88C306";
createNode transform -n "fkControls_l_FingerPinky" -p "fkChain_l_FingerPinky";
	rename -uid "EDC59F3E-48AE-C7AC-5E34-688301264A97";
createNode transform -n "off_l_FingerPinkyA_fk" -p "fkControls_l_FingerPinky";
	rename -uid "E4B06B23-4676-3B19-3E59-B39C71200815";
createNode transform -n "ctl_l_FingerPinkyA_fk" -p "off_l_FingerPinkyA_fk";
	rename -uid "81DD04C1-4A6E-C354-62F0-239F982CD33B";
createNode nurbsCurve -n "ctl_l_FingerPinkyA_fkShape" -p "ctl_l_FingerPinkyA_fk";
	rename -uid "E691940D-4506-5AE9-794C-34A320A7F3AF";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerPinkyA_fk_parentConstraint" -p "off_l_FingerPinkyA_fk";
	rename -uid "2C51CABB-4F36-328A-2320-8F895AEEECCF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2 -0.19999999999998863 -2 ;
	setAttr ".tg[0].tor" -type "double3" 0.18632190898579423 10.303180086780658 1.0416266760099133 ;
	setAttr ".lr" -type "double3" 0.18632190898579429 10.303180086780662 1.0416266760099133 ;
	setAttr ".rst" -type "double3" 62 139.8 -2 ;
	setAttr ".rsrr" -type "double3" 0.18632190898579429 10.303180086780662 1.0416266760099133 ;
	setAttr -k on ".w0";
createNode transform -n "off_l_FingerPinkyB_fk" -p "fkControls_l_FingerPinky";
	rename -uid "7F8F3779-4BC2-957F-24C6-91AC9ED66283";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "ctl_l_FingerPinkyB_fk" -p "off_l_FingerPinkyB_fk";
	rename -uid "A97D92A6-4669-B547-0D9E-C7BB8E9D72BA";
createNode nurbsCurve -n "ctl_l_FingerPinkyB_fkShape" -p "ctl_l_FingerPinkyB_fk";
	rename -uid "101102C2-4240-0C79-B683-A8B3F4846BF5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerPinkyB_fk_parentConstraint" -p "off_l_FingerPinkyB_fk";
	rename -uid "3E4C64A4-4303-8CC8-3C1E-1C92EB042E52";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerPinkyA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.5910642993977362 -5.6843418860808015e-14 
		-1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0.29731564120064369 -4.1787981713704108 -5.0981199988219155 ;
	setAttr ".lr" -type "double3" -0.43488892753394309 6.1000795593389849 -4.0856167799736847 ;
	setAttr ".rst" -type "double3" 67.499999999999986 139.89999999999995 -3.0000000000000018 ;
	setAttr ".rsrr" -type "double3" -0.43488892753394309 6.1000795593389849 -4.0856167799736847 ;
	setAttr -k on ".w0";
createNode transform -n "off_l_FingerPinkyC_fk" -p "fkControls_l_FingerPinky";
	rename -uid "D2EB0854-4B46-7741-DAFC-8CB194EECDD3";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "ctl_l_FingerPinkyC_fk" -p "off_l_FingerPinkyC_fk";
	rename -uid "207D3B61-44DF-0484-E0A0-72831F4E4C6F";
createNode nurbsCurve -n "ctl_l_FingerPinkyC_fkShape" -p "ctl_l_FingerPinkyC_fk";
	rename -uid "23F34EC4-4954-1695-C4EE-18B500CBA198";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerPinkyC_fk_parentConstraint" -p "off_l_FingerPinkyC_fk";
	rename -uid "2FF91E0F-4FA0-A085-D2E4-C8A3113AB779";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerPinkyB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.8231188426986265 -2.8421709430404007e-14 
		9.7699626167013776e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0.32467709582146742 -3.0856982486484137 -1.9470618741041545 ;
	setAttr ".lr" -type "double3" -0.31524927890584692 2.9962638483135344 -6.0090059574923327 ;
	setAttr ".rst" -type "double3" 70.3 139.7 -3.2999999999999923 ;
	setAttr ".rsrr" -type "double3" -0.31524927890584692 2.9962638483135344 -6.0090059574923327 ;
	setAttr -k on ".w0";
createNode transform -n "off_l_FingerPinkyD_fk" -p "fkControls_l_FingerPinky";
	rename -uid "1B6F1AF6-4659-A0AD-DFE3-608B0CCEDBFF";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "ctl_l_FingerPinkyD_fk" -p "off_l_FingerPinkyD_fk";
	rename -uid "79DD9A50-41BA-6827-72B3-A29D2714F3B8";
createNode nurbsCurve -n "ctl_l_FingerPinkyD_fkShape" -p "ctl_l_FingerPinkyD_fk";
	rename -uid "E9E2FD96-46EC-5674-9D2D-D2BCD8DD8D1D";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 6;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_l_FingerPinkyD_fk_parentConstraint" -p "off_l_FingerPinkyD_fk";
	rename -uid "DBCAB33B-491C-DF40-80CC-8195FD1C59A4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_FingerPinkyC_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.9131126469708946 -5.6843418860808015e-14 
		1.8873791418627661e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0.39854217037332218 -2.9863349684019012 -1.6042709166474127 ;
	setAttr ".lr" -type "double3" -9.2418245450564773e-17 1.0172135482938273e-15 -7.5946433685907442 ;
	setAttr ".rst" -type "double3" 72.199999999999989 139.5 -3.4000000000000044 ;
	setAttr ".rsrr" -type "double3" -9.2418245450564773e-17 1.0172135482938273e-15 -7.5946433685907442 ;
	setAttr -k on ".w0";
createNode transform -n "ctl_r_hand" -p "GeneratedRig";
	rename -uid "5ED42856-4F63-2CA1-1EAA-B5974EE5DB58";
	setAttr ".t" -type "double3" -60 140 0 ;
createNode nurbsCurve -n "ctl_r_handShape" -p "ctl_r_hand";
	rename -uid "FF693C6D-45F4-6BDC-5062-A7BE757F82D7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		1.919294936395389e-16 3.1344464995648984 -3.134446499564898
		1.6620250738737023e-32 4.4327767502175508 -2.7142929292443649e-16
		-1.919294936395389e-16 3.1344464995648975 3.134446499564898
		-2.7142929292443659e-16 2.2979592950099322e-16 4.4327767502175526
		-1.919294936395389e-16 -3.134446499564898 3.134446499564898
		-2.7189257911234355e-32 -4.4327767502175535 4.4403427878412899e-16
		1.919294936395389e-16 -3.1344464995648975 -3.134446499564898
		2.7142929292443659e-16 -6.044962003119836e-16 -4.4327767502175526
		1.919294936395389e-16 3.1344464995648984 -3.134446499564898
		1.6620250738737023e-32 4.4327767502175508 -2.7142929292443649e-16
		-1.919294936395389e-16 3.1344464995648975 3.134446499564898
		;
createNode transform -n "_module_r_FingerThumb" -p "GeneratedRig";
	rename -uid "55E3523B-4157-5129-98D6-A4A6FAC67D19";
createNode transform -n "drivenChains_r_FingerThumb" -p "_module_r_FingerThumb";
	rename -uid "6CF42F9A-4651-7569-D5D8-D1AD051588F8";
createNode joint -n "jnt_r_FingerThumbA" -p "drivenChains_r_FingerThumb";
	rename -uid "516B0947-476E-E0E6-CE82-4EA519BC241F";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 164.77484298932194 -42.875988666635756 -158.19859051364784 ;
createNode joint -n "jnt_r_FingerThumbB" -p "jnt_r_FingerThumbA";
	rename -uid "90972DD5-4603-CF19-A686-0E91B5574E55";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.8217975217512152 -6.8893340331602362 0.94210657940677023 ;
createNode joint -n "jnt_r_FingerThumbC" -p "jnt_r_FingerThumbB";
	rename -uid "91F7F2CA-4517-4012-D3B6-1DB8F15DE591";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.90804311435283369 -4.0853859729308901 2.198880044104361 ;
createNode joint -n "jnt_r_FingerThumbEnd" -p "jnt_r_FingerThumbC";
	rename -uid "12135A0E-4D37-CA71-EDCF-D79DBB2CF28B";
	setAttr ".t" -type "double3" 1.8466185312619294 -2.4244495300251856e-14 -7.8825834748386114e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "jnt_r_FingerThumbC_parentConstraint1" -p "jnt_r_FingerThumbC";
	rename -uid "97CAE7C3-4C4D-14C7-8A88-4A8527A54727";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerThumbC_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 2.8421709430404007e-14 
		-3.1974423109204508e-14 ;
	setAttr ".tg[0].tor" -type "double3" -9.9392333795734899e-16 2.7034714792439888e-14 
		-9.0074302502384739e-15 ;
	setAttr ".lr" -type "double3" 1.1554358803754162e-15 -2.6988124635973143e-14 8.5291046438465012e-15 ;
	setAttr ".rst" -type "double3" 2.3579652245103055 0 -2.1316282072803006e-14 ;
	setAttr ".rsrr" -type "double3" 1.1554358803754162e-15 -2.6988124635973143e-14 8.5291046438465012e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_FingerThumbB_parentConstraint1" -p "jnt_r_FingerThumbB";
	rename -uid "4A8ECD5D-491A-BE37-50C8-7E9E1662B763";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerThumbB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.7763568394002505e-14 5.6843418860808015e-14 
		7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" -3.578124016646456e-15 -1.3517357396219947e-14 
		-1.2771914892751935e-14 ;
	setAttr ".lr" -type "double3" 3.6899403921666594e-15 1.4498856692452828e-14 1.2324649390671129e-14 ;
	setAttr ".rst" -type "double3" 2.9393876913398067 5.6843418860808015e-14 0 ;
	setAttr ".rsrr" -type "double3" 3.6899403921666594e-15 1.4498856692452828e-14 1.2324649390671129e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_FingerThumbA_parentConstraint1" -p "jnt_r_FingerThumbA";
	rename -uid "F3E22BDC-4ACE-A981-6339-C3B73F926D79";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerThumbA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-15 0 -7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 2.385416011097638e-14 -9.541664044390555e-15 
		-6.3611093629270367e-15 ;
	setAttr ".lr" -type "double3" -2.464929878134226e-14 9.4422717105948185e-15 -2.0310865699621442e-30 ;
	setAttr ".rst" -type "double3" -61.999999999999993 139 3.0000000000000031 ;
	setAttr ".rsrr" -type "double3" -2.464929878134226e-14 9.4422717105948185e-15 -2.0310865699621442e-30 ;
	setAttr -k on ".w0";
createNode transform -n "driverChains_r_FingerThumb" -p "_module_r_FingerThumb";
	rename -uid "D3E34AE2-48B6-B771-41FB-3F909449AE2B";
createNode transform -n "fkChain_r_FingerThumb" -p "driverChains_r_FingerThumb";
	rename -uid "EC84F3C8-46A7-A072-370F-CABF1BC3586F";
createNode transform -n "fkControls_r_FingerThumb" -p "fkChain_r_FingerThumb";
	rename -uid "9EC0149E-44E0-0F9B-19BF-21A324FA4CA0";
createNode transform -n "off_r_FingerThumbA_fk" -p "fkControls_r_FingerThumb";
	rename -uid "147BFDC6-40B4-0306-878E-83933CE80B23";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "ctl_r_FingerThumbA_fk" -p "off_r_FingerThumbA_fk";
	rename -uid "8B338707-4568-FE29-12E4-F2ABA6B67BDA";
createNode nurbsCurve -n "ctl_r_FingerThumbA_fkShape" -p "ctl_r_FingerThumbA_fk";
	rename -uid "EB76446D-4C7F-565C-A0EA-90BF93CE7993";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerThumbA_fk_parentConstraint" -p "off_r_FingerThumbA_fk";
	rename -uid "0024D6BF-4E9F-005C-DAE9-9FA1AF7ADD71";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2 -1 3 ;
	setAttr ".tg[0].tor" -type "double3" 164.77484298932194 -42.875988666635756 -158.19859051364784 ;
	setAttr ".lr" -type "double3" -15.225157010678094 -137.12401133336425 21.801409486352171 ;
	setAttr ".rst" -type "double3" -62 139 3 ;
	setAttr ".rsrr" -type "double3" -15.225157010678094 -137.12401133336425 21.801409486352171 ;
	setAttr -k on ".w0";
createNode transform -n "off_r_FingerThumbB_fk" -p "fkControls_r_FingerThumb";
	rename -uid "A8013409-4B24-CE8B-33A7-78A381FE054E";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "ctl_r_FingerThumbB_fk" -p "off_r_FingerThumbB_fk";
	rename -uid "2627CE09-4B53-393E-6C8B-73B95AD12CA4";
createNode nurbsCurve -n "ctl_r_FingerThumbB_fkShape" -p "ctl_r_FingerThumbB_fk";
	rename -uid "D992F2BE-41DD-EA44-5C08-E7ACC68F0211";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerThumbB_fk_parentConstraint" -p "off_r_FingerThumbB_fk";
	rename -uid "19EA3B08-49EB-588D-1B35-1EB213919307";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerThumbA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.939387691339812 0 -7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.821797521751241 -6.8893340331602504 0.94210657940676767 ;
	setAttr ".lr" -type "double3" -11.194785218593092 -143.5776901964658 18.434948822921395 ;
	setAttr ".rst" -type "double3" -63.999999999999986 138.2 5.0000000000000053 ;
	setAttr ".rsrr" -type "double3" -11.194785218593092 -143.5776901964658 18.434948822921395 ;
	setAttr -k on ".w0";
createNode transform -n "off_r_FingerThumbC_fk" -p "fkControls_r_FingerThumb";
	rename -uid "45D945B0-4A09-95B8-174B-3AB346FCAD2E";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "ctl_r_FingerThumbC_fk" -p "off_r_FingerThumbC_fk";
	rename -uid "9D672726-4A9C-D6DE-7344-A790D5F2321C";
createNode nurbsCurve -n "ctl_r_FingerThumbC_fkShape" -p "ctl_r_FingerThumbC_fk";
	rename -uid "5EF31820-44B3-0B06-643F-449562B2B1B6";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerThumbC_fk_parentConstraint" -p "off_r_FingerThumbC_fk";
	rename -uid "873D29C2-4941-43AC-ECE3-7EAC3988A665";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerThumbB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.3579652245103127 2.8421709430404007e-14 7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0.90804311435283169 -4.0853859729309141 2.198880044104361 ;
	setAttr ".lr" -type "double3" -8.2171692059963579 -147.21212195970307 14.931417178136854 ;
	setAttr ".rst" -type "double3" -65.8 137.60000000000002 6.3999999999999932 ;
	setAttr ".rsrr" -type "double3" -8.2171692059963579 -147.21212195970307 14.931417178136854 ;
	setAttr -k on ".w0";
createNode transform -n "_module_r_FingerIndex" -p "GeneratedRig";
	rename -uid "3F5A73D6-4623-42B9-E252-74ACD02B25A3";
createNode transform -n "drivenChains_r_FingerIndex" -p "_module_r_FingerIndex";
	rename -uid "AF5B0E46-4E8B-78E6-57E0-BCADED920C0E";
createNode joint -n "jnt_r_FingerIndexA" -p "drivenChains_r_FingerIndex";
	rename -uid "30B74E70-49E4-4D7E-070E-68B959F8CD94";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.72084714127504 -4.8911522098506124 -176.72951207681663 ;
createNode joint -n "jnt_r_FingerIndexB" -p "jnt_r_FingerIndexA";
	rename -uid "E4E8FAE1-411D-4782-A165-20B3DE17FD9D";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.20866405160420737 -2.4004927718546085 -1.7108798518032535 ;
createNode joint -n "jnt_r_FingerIndexC" -p "jnt_r_FingerIndexB";
	rename -uid "E8B199CA-496D-D3B5-9B7C-77864AC5A05A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.27509616299248912 -2.4743166538304115 -1.3810591524580778 ;
createNode joint -n "jnt_r_FingerIndexEnd" -p "jnt_r_FingerIndexC";
	rename -uid "1DD23C50-4E74-2CA6-3A73-658036AEA2A1";
	setAttr ".t" -type "double3" 1.8110770276274792 -1.8596235662471369e-14 3.4204201301626415e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "jnt_r_FingerIndexC_parentConstraint1" -p "jnt_r_FingerIndexC";
	rename -uid "29007425-48DE-6682-B3E7-B5885CBCD492";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerIndexC_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 7.6119618837463581e-13 -4.3732626870123352e-15 
		-3.1215404832722985e-15 ;
	setAttr ".lr" -type "double3" -7.6123967252067143e-13 4.3592856400723337e-15 3.5028032636918472e-15 ;
	setAttr ".rst" -type "double3" 2.3108440016582676 5.6843418860808015e-14 -1.0269562977782698e-15 ;
	setAttr ".rsrr" -type "double3" -7.6123967252067143e-13 4.3592856400723337e-15 3.5028032636918472e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_FingerIndexB_parentConstraint1" -p "jnt_r_FingerIndexB";
	rename -uid "D0C9965F-4044-7E53-1D5C-91B4A44D790F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerIndexB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 2.8421709430404007e-14 9.1593399531575415e-16 ;
	setAttr ".tg[0].tor" -type "double3" 5.0938571070314139e-15 -3.1805546814635168e-15 
		-1.2647674475507266e-14 ;
	setAttr ".lr" -type "double3" -5.0876450861691793e-15 3.517556813239681e-15 1.2431030247936874e-14 ;
	setAttr ".rst" -type "double3" 3.5185224171518286 0 8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" -5.0876450861691793e-15 3.517556813239681e-15 1.2431030247936874e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_FingerIndexA_parentConstraint1" -p "jnt_r_FingerIndexA";
	rename -uid "EE6CBB02-4C3A-C3AC-5F9D-FFA3C9DED6B6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerIndexA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 0 -4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -2.5494133618605989e-14 -3.9756933518293944e-15 
		9.5975722321506469e-16 ;
	setAttr ".lr" -type "double3" 2.5469285535157063e-14 2.3155307763975107e-15 5.1465321713658163e-31 ;
	setAttr ".rst" -type "double3" -69 140 3.0000000000000009 ;
	setAttr ".rsrr" -type "double3" 2.5469285535157063e-14 2.3155307763975107e-15 5.1465321713658163e-31 ;
	setAttr -k on ".w0";
createNode transform -n "driverChains_r_FingerIndex" -p "_module_r_FingerIndex";
	rename -uid "B5FDF56C-4820-FF7F-7423-DBAA54642B75";
createNode transform -n "fkChain_r_FingerIndex" -p "driverChains_r_FingerIndex";
	rename -uid "D591258C-4692-BB22-F822-B189F7FDFC4A";
createNode transform -n "fkControls_r_FingerIndex" -p "fkChain_r_FingerIndex";
	rename -uid "A04FA6CD-41A3-FAC4-0E3C-97989D92180C";
createNode transform -n "off_r_FingerIndexA_fk" -p "fkControls_r_FingerIndex";
	rename -uid "0B6B6BE9-4774-F841-4FCC-ABA4E7587BEF";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "ctl_r_FingerIndexA_fk" -p "off_r_FingerIndexA_fk";
	rename -uid "4E9BFD0C-4969-CC27-BEA8-549D07E1A858";
createNode nurbsCurve -n "ctl_r_FingerIndexA_fkShape" -p "ctl_r_FingerIndexA_fk";
	rename -uid "DB1E2758-4DEF-2B05-1F21-FB8A908A3C8F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerIndexA_fk_parentConstraint" -p "off_r_FingerIndexA_fk";
	rename -uid "CB105AAB-4415-E794-2BB5-2F91CB20BDD4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9 0 3 ;
	setAttr ".tg[0].tor" -type "double3" 179.72084714127504 -4.8911522098506151 -176.72951207681663 ;
	setAttr ".lr" -type "double3" -0.27915285872491846 -175.10884779014938 3.2704879231833663 ;
	setAttr ".rst" -type "double3" -69 140 3 ;
	setAttr ".rsrr" -type "double3" -0.27915285872491846 -175.10884779014938 3.2704879231833663 ;
	setAttr -k on ".w0";
createNode transform -n "off_r_FingerIndexB_fk" -p "fkControls_r_FingerIndex";
	rename -uid "3310F1FB-405C-E384-4AE8-0EBBC3CBF7D6";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "ctl_r_FingerIndexB_fk" -p "off_r_FingerIndexB_fk";
	rename -uid "FCE4A866-41EE-F5B8-C11B-4C9EA0A41695";
createNode nurbsCurve -n "ctl_r_FingerIndexB_fkShape" -p "ctl_r_FingerIndexB_fk";
	rename -uid "C4F1C2F9-45E5-9685-ACA2-F9B155432F4A";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerIndexB_fk_parentConstraint" -p "off_r_FingerIndexB_fk";
	rename -uid "E9D2B879-4DB2-6D74-7E5A-E586F95F0C8E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerIndexA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5185224171518357 0 -8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0.20866405160417012 -2.4004927718546121 -1.7108798518032453 ;
	setAttr ".lr" -type "double3" -0.21560166663008534 -177.51979462325298 4.9697407281107564 ;
	setAttr ".rst" -type "double3" -72.5 139.8 3.3000000000000016 ;
	setAttr ".rsrr" -type "double3" -0.21560166663008534 -177.51979462325298 4.9697407281107564 ;
	setAttr -k on ".w0";
createNode transform -n "off_r_FingerIndexC_fk" -p "fkControls_r_FingerIndex";
	rename -uid "FDA73796-43A1-D65A-DB17-3A8801C78F94";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "ctl_r_FingerIndexC_fk" -p "off_r_FingerIndexC_fk";
	rename -uid "870916D8-4B30-EA8B-5D22-44ADE629A5C3";
createNode nurbsCurve -n "ctl_r_FingerIndexC_fkShape" -p "ctl_r_FingerIndexC_fk";
	rename -uid "49A1A7B5-43D3-9C23-663D-E3BC9A00030F";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerIndexC_fk_parentConstraint" -p "off_r_FingerIndexC_fk";
	rename -uid "373DF5E9-451F-FE33-B0BE-03B12D5ACC9D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerIndexB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.3108440016582605 2.8421709430404007e-14 1.8041124150158794e-15 ;
	setAttr ".tg[0].tor" -type "double3" 0.27509616299173972 -2.4743166538304253 -1.3810591524580798 ;
	setAttr ".lr" -type "double3" 0 -179.9999999999998 6.3401917459089807 ;
	setAttr ".rst" -type "double3" -74.8 139.60000000000002 3.399999999999999 ;
	setAttr ".rsrr" -type "double3" 0 -179.9999999999998 6.3401917459089807 ;
	setAttr -k on ".w0";
createNode transform -n "_module_r_FingerMiddle" -p "GeneratedRig";
	rename -uid "256DE275-4FCD-1D47-411D-4FBF5A9D01F4";
createNode transform -n "drivenChains_r_FingerMiddle" -p "_module_r_FingerMiddle";
	rename -uid "BE42BBCA-4739-D876-9298-768926E05EB1";
createNode joint -n "jnt_r_FingerMiddleA" -p "drivenChains_r_FingerMiddle";
	rename -uid "D78EE712-4643-3745-B2C5-F5AF5E592938";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.99999914622634 0 -176.98721249581683 ;
createNode joint -n "jnt_r_FingerMiddleB" -p "jnt_r_FingerMiddleA";
	rename -uid "132E6A67-47EE-1897-CC89-8CBCF2587EDA";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.3859178508124994 ;
createNode joint -n "jnt_r_FingerMiddleC" -p "jnt_r_FingerMiddleB";
	rename -uid "B71832C8-4C35-0D60-313A-36A2D07FD2C5";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -1.3118877825022424 ;
createNode joint -n "jnt_r_FingerMiddleEnd" -p "jnt_r_FingerMiddleC";
	rename -uid "917A02AF-4C8B-E408-8EAC-36BD080E0259";
	setAttr ".t" -type "double3" 2.009975124224177 -4.8849813083506888e-14 -2.9761130693874138e-09 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "jnt_r_FingerMiddleC_parentConstraint1" -p "jnt_r_FingerMiddleC";
	rename -uid "08C622AB-4E4F-E061-8FEB-50B02A449617";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerMiddleC_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-14 0 -4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 3.1805546814635176e-15 ;
	setAttr ".lr" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr ".rst" -type "double3" 2.6076809620810693 0 -2.9761133557570929e-09 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.1805546814635168e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_FingerMiddleB_parentConstraint1" -p "jnt_r_FingerMiddleB";
	rename -uid "F7DE3F6D-44FD-F259-D0E7-0A92FEB38FF5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerMiddleB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -4.5720473546038052e-15 ;
	setAttr ".lr" -type "double3" 0 0 4.5720473546038052e-15 ;
	setAttr ".rst" -type "double3" 3.8052595180880857 -5.6843418860808015e-14 1.1102230246251565e-16 ;
	setAttr ".rsrr" -type "double3" 0 0 4.5720473546038052e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_FingerMiddleA_parentConstraint1" -p "jnt_r_FingerMiddleA";
	rename -uid "B7DE91B4-433D-3E42-C367-0FB049DDF339";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerMiddleA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -2.8421709430404007e-14 0 ;
	setAttr ".tg[0].tor" -type "double3" -8.5377365326830289e-07 7.0167092985348736e-15 
		-7.5538173684758535e-15 ;
	setAttr ".lr" -type "double3" 8.5377365326830289e-07 -7.0167094057406344e-15 7.1562479810143535e-15 ;
	setAttr ".rst" -type "double3" -69.5 140.19999999999996 1 ;
	setAttr ".rsrr" -type "double3" 8.5377365326830289e-07 -7.0167094057406344e-15 7.1562479810143535e-15 ;
	setAttr -k on ".w0";
createNode transform -n "driverChains_r_FingerMiddle" -p "_module_r_FingerMiddle";
	rename -uid "6635F310-438F-9C39-9212-D5B58D8A7496";
createNode transform -n "fkChain_r_FingerMiddle" -p "driverChains_r_FingerMiddle";
	rename -uid "4047C530-4816-57E9-789D-61A993AF4B2B";
createNode transform -n "fkControls_r_FingerMiddle" -p "fkChain_r_FingerMiddle";
	rename -uid "7E6598A6-4CA3-2274-0EC6-7A9DB4C0A884";
createNode transform -n "off_r_FingerMiddleA_fk" -p "fkControls_r_FingerMiddle";
	rename -uid "6BAEC0C7-4E2D-6BFD-F121-C2B1386E43C8";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "ctl_r_FingerMiddleA_fk" -p "off_r_FingerMiddleA_fk";
	rename -uid "0277C881-4168-7432-3502-A286AF73B7C3";
createNode nurbsCurve -n "ctl_r_FingerMiddleA_fkShape" -p "ctl_r_FingerMiddleA_fk";
	rename -uid "08ABC6E5-4B97-E60F-AE6D-1E94C534F0A2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerMiddleA_fk_parentConstraint" -p "off_r_FingerMiddleA_fk";
	rename -uid "67215B00-43DB-925D-0824-88922CC8293D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9.5 0.19999999999998863 1 ;
	setAttr ".tg[0].tor" -type "double3" 179.99999914622634 0 -176.98721249581683 ;
	setAttr ".lr" -type "double3" -8.5377364625159387e-07 180 3.0127875041831751 ;
	setAttr ".rst" -type "double3" -69.5 140.2 1 ;
	setAttr ".rsrr" -type "double3" -8.5377364625159387e-07 180 3.0127875041831751 ;
	setAttr -k on ".w0";
createNode transform -n "off_r_FingerMiddleB_fk" -p "fkControls_r_FingerMiddle";
	rename -uid "F7672239-4399-8424-D02E-E3A12A7DB14C";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "ctl_r_FingerMiddleB_fk" -p "off_r_FingerMiddleB_fk";
	rename -uid "E6066B43-4EEF-91E2-C371-D993667B9ECE";
createNode nurbsCurve -n "ctl_r_FingerMiddleB_fkShape" -p "ctl_r_FingerMiddleB_fk";
	rename -uid "B6E2F9E8-4719-283D-0607-439AB966D6C0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerMiddleB_fk_parentConstraint" -p "off_r_FingerMiddleB_fk";
	rename -uid "08569B7C-408A-9089-1E64-DAA16E380EDF";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerMiddleA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.8052595180880928 -5.6843418860808015e-14 
		-4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -8.535238908399866e-07 7.0146566621389704e-15 
		-1.3859178508125092 ;
	setAttr ".lr" -type "double3" 0 180 4.3987053549956769 ;
	setAttr ".rst" -type "double3" -73.3 139.99999999999994 1 ;
	setAttr ".rsrr" -type "double3" 0 180 4.3987053549956769 ;
	setAttr -k on ".w0";
createNode transform -n "off_r_FingerMiddleC_fk" -p "fkControls_r_FingerMiddle";
	rename -uid "CA52698E-4493-AA31-E1BA-2EB551E59BCC";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "ctl_r_FingerMiddleC_fk" -p "off_r_FingerMiddleC_fk";
	rename -uid "6A7AA756-4BFA-C933-31C5-CFB78CB0ED81";
createNode nurbsCurve -n "ctl_r_FingerMiddleC_fkShape" -p "ctl_r_FingerMiddleC_fk";
	rename -uid "9600446E-45DF-69C8-3777-FBBD2CF316AE";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerMiddleC_fk_parentConstraint" -p "off_r_FingerMiddleC_fk";
	rename -uid "105629A2-49F1-8C59-A61B-D8A78B9D2A5E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerMiddleB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.6076809620810408 -5.6843418860808015e-14 
		-2.0362880270852202e-09 ;
	setAttr ".tg[0].tor" -type "double3" -8.5282740024455746e-07 7.0148700830065867e-15 
		-1.3118877825022592 ;
	setAttr ".lr" -type "double3" 0 180 5.710593137497928 ;
	setAttr ".rst" -type "double3" -75.899999999999977 139.79999999999987 1.0000000020362878 ;
	setAttr ".rsrr" -type "double3" 0 180 5.710593137497928 ;
	setAttr -k on ".w0";
createNode transform -n "_module_r_FingerRing" -p "GeneratedRig";
	rename -uid "8AADA86D-4408-A4F0-F6D1-23A8AC417467";
createNode transform -n "drivenChains_r_FingerRing" -p "_module_r_FingerRing";
	rename -uid "BF690F6D-485F-67B4-748B-038800085199";
createNode joint -n "jnt_r_FingerRingA" -p "drivenChains_r_FingerRing";
	rename -uid "65FED9BB-49D5-E3E4-1ADF-51BF1EA7CE78";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.18647967670825838 176.73482707361774 3.2704879231833921 ;
createNode joint -n "jnt_r_FingerRingB" -p "jnt_r_FingerRingA";
	rename -uid "C8B0CE7E-4472-7893-26E2-7686332EFACD";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.07339991974494868 0.88149349126352505 -1.4949226541579166 ;
createNode joint -n "jnt_r_FingerRingC" -p "jnt_r_FingerRingB";
	rename -uid "6947DAED-4765-E1DD-52DA-A3A2D5481F5E";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.24991492890321415 2.3728268279237601 -1.2546507072134938 ;
createNode joint -n "jnt_r_FingerRingEnd" -p "jnt_r_FingerRingC";
	rename -uid "C42C1D72-4D51-DC0F-DA2C-93A665B6B9B4";
	setAttr ".t" -type "double3" 1.910497317454285 -1.9734214262712183e-14 -2.6593030031468552e-15 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "jnt_r_FingerRingC_parentConstraint1" -p "jnt_r_FingerRingC";
	rename -uid "63B72F96-472A-0A03-05A0-08BE8EF949EB";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerRingC_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -8.5265128291212022e-14 4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 5.2399638377111435e-13 2.3854160110976376e-15 
		-3.238015874439176e-15 ;
	setAttr ".lr" -type "double3" -5.2407403403189212e-13 -2.557799590024601e-15 3.0617497824733134e-15 ;
	setAttr ".rst" -type "double3" 2.4103941586387876 -8.5265128291212022e-14 4.4408920985006262e-16 ;
	setAttr ".rsrr" -type "double3" -5.2407403403189212e-13 -2.557799590024601e-15 3.0617497824733134e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_FingerRingB_parentConstraint1" -p "jnt_r_FingerRingB";
	rename -uid "F9465254-4859-BEB0-880E-A4B7ACDC10A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerRingB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-14 5.6843418860808015e-14 
		6.6613381477509392e-16 ;
	setAttr ".tg[0].tor" -type "double3" -4.2117501445942666e-15 8.7465253740246703e-15 
		-2.21303243217066e-15 ;
	setAttr ".lr" -type "double3" 4.1993261028697997e-15 -8.7936008446212842e-15 2.412108288240047e-15 ;
	setAttr ".rst" -type "double3" 3.5114099732159119 2.8421709430404007e-14 -8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" 4.1993261028697997e-15 -8.7936008446212842e-15 2.412108288240047e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_FingerRingA_parentConstraint1" -p "jnt_r_FingerRingA";
	rename -uid "3CF678F5-476E-4642-824A-4EA7B017CAE0";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerRingA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -2.8421709430404007e-14 -4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -2.4848083448933725e-17 0 2.4382181884266212e-16 ;
	setAttr ".rst" -type "double3" -69 139.99999999999997 -0.99999999999999944 ;
	setAttr -k on ".w0";
createNode transform -n "driverChains_r_FingerRing" -p "_module_r_FingerRing";
	rename -uid "B6A1B2E9-4E7B-1E04-B62E-A78453E697A2";
createNode transform -n "fkChain_r_FingerRing" -p "driverChains_r_FingerRing";
	rename -uid "A28E7C4C-48B5-DF45-4370-319AFD994442";
createNode transform -n "fkControls_r_FingerRing" -p "fkChain_r_FingerRing";
	rename -uid "EF23BA07-4FC7-63F9-F14F-AB8C034B89E3";
createNode transform -n "off_r_FingerRingA_fk" -p "fkControls_r_FingerRing";
	rename -uid "F960C593-4CE3-8B8C-9186-F9890CB762FE";
createNode transform -n "ctl_r_FingerRingA_fk" -p "off_r_FingerRingA_fk";
	rename -uid "248776CD-4B38-E3E4-9CC4-6BBD6DD8AC48";
createNode nurbsCurve -n "ctl_r_FingerRingA_fkShape" -p "ctl_r_FingerRingA_fk";
	rename -uid "6C30ACBA-49AA-7DC3-BF41-8394A63E3A08";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerRingA_fk_parentConstraint" -p "off_r_FingerRingA_fk";
	rename -uid "24A9FBB6-4D3B-C3B7-61AB-429115C525A1";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9 0 -1 ;
	setAttr ".tg[0].tor" -type "double3" 0.18647967670825838 176.73482707361774 3.2704879231833921 ;
	setAttr ".lr" -type "double3" 0.18647967670825838 176.73482707361774 3.2704879231833921 ;
	setAttr ".rst" -type "double3" -69 140 -1 ;
	setAttr ".rsrr" -type "double3" 0.18647967670825838 176.73482707361774 3.2704879231833921 ;
	setAttr -k on ".w0";
createNode transform -n "off_r_FingerRingB_fk" -p "fkControls_r_FingerRing";
	rename -uid "F969D0E0-4EE0-FC09-C2B8-41ACC9FDEA90";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "ctl_r_FingerRingB_fk" -p "off_r_FingerRingB_fk";
	rename -uid "3EB2E6B8-49B6-6C74-AA5D-6E859E75ABAC";
createNode nurbsCurve -n "ctl_r_FingerRingB_fkShape" -p "ctl_r_FingerRingB_fk";
	rename -uid "29E7AD64-4BE5-40DB-4E13-E79226363EDC";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerRingB_fk_parentConstraint" -p "off_r_FingerRingB_fk";
	rename -uid "C595532E-42BA-ADA5-9DB9-E78C484C7DC3";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerRingA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5114099732158692 -5.6843418860808015e-14 
		-4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -0.073399919744944475 0.88149349126351606 -1.4949226541579137 ;
	setAttr ".lr" -type "double3" 0.19808500003416996 177.62228812174087 4.7636416907255681 ;
	setAttr ".rst" -type "double3" -72.499999999999986 139.79999999999995 -1.199999999999998 ;
	setAttr ".rsrr" -type "double3" 0.19808500003416996 177.62228812174087 4.7636416907255681 ;
	setAttr -k on ".w0";
createNode transform -n "off_r_FingerRingC_fk" -p "fkControls_r_FingerRing";
	rename -uid "AEDA6C78-4B5C-4065-682D-2FB5124B0174";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "ctl_r_FingerRingC_fk" -p "off_r_FingerRingC_fk";
	rename -uid "86834972-4E46-10D1-9525-98B8B45E546F";
createNode nurbsCurve -n "ctl_r_FingerRingC_fkShape" -p "ctl_r_FingerRingC_fk";
	rename -uid "B2B15FB1-4F8E-79F9-2B51-E492A1B954C5";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerRingC_fk_parentConstraint" -p "off_r_FingerRingC_fk";
	rename -uid "12570BF7-48D5-3956-353E-749B43A7D7C8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerRingB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.4103941586388444 5.6843418860808015e-14 -6.6613381477509392e-16 ;
	setAttr ".tg[0].tor" -type "double3" -0.24991492890374242 2.3728268279237525 -1.254650707213492 ;
	setAttr ".lr" -type "double3" 0 -179.99999999999932 6.0090059574935877 ;
	setAttr ".rst" -type "double3" -74.900000000000048 139.60000000000002 -1.2999999999999998 ;
	setAttr ".rsrr" -type "double3" 0 -179.99999999999932 6.0090059574935877 ;
	setAttr -k on ".w0";
createNode transform -n "_module_r_FingerPinky" -p "GeneratedRig";
	rename -uid "3BD087D8-46CB-A8BD-6027-66A9B2E239FA";
createNode transform -n "drivenChains_r_FingerPinky" -p "_module_r_FingerPinky";
	rename -uid "6FC746E6-4C07-E832-179C-C7B820EEE8E4";
createNode joint -n "jnt_r_FingerPinkyA" -p "drivenChains_r_FingerPinky";
	rename -uid "01899F81-4D39-4AFF-8D6A-0C9FF58C0E8A";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 179.81367809101306 10.303180086780639 178.95837332399009 ;
createNode joint -n "jnt_r_FingerPinkyB" -p "jnt_r_FingerPinkyA";
	rename -uid "DAA1D674-4E65-2861-E70E-D5985E3CD2ED";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.29731564119083476 4.1787981713704401 -5.0981199988225265 ;
createNode joint -n "jnt_r_FingerPinkyC" -p "jnt_r_FingerPinkyB";
	rename -uid "967F78CE-4061-6D3F-2FA7-A6B8F5FDCAA1";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.32467709582957049 3.0856982486491922 -1.9470618741062975 ;
createNode joint -n "jnt_r_FingerPinkyD" -p "jnt_r_FingerPinkyC";
	rename -uid "C3C3BDC0-4B94-522B-AD06-AEB62ECB1441";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -0.39854217037360862 2.9863349684009304 -1.604270916645522 ;
createNode joint -n "jnt_r_FingerPinkyEnd" -p "jnt_r_FingerPinkyD";
	rename -uid "4D40DFCF-4BB7-948A-7B55-01973B373D94";
	setAttr ".t" -type "double3" 1.5132745950421402 2.1926904736346842e-15 8.1651152912846613e-16 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "jnt_r_FingerPinkyD_parentConstraint1" -p "jnt_r_FingerPinkyD";
	rename -uid "0DA5215F-4B2A-645A-E468-26B505A90FCD";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerPinkyD_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 2.8421709430404007e-14 0 ;
	setAttr ".tg[0].tor" -type "double3" 4.5988832847286541e-13 -6.3611093629270335e-15 
		1.5685352677139414e-15 ;
	setAttr ".lr" -type "double3" -4.5988832847286541e-13 6.2989891543046929e-15 -1.6228904502585093e-15 ;
	setAttr ".rst" -type "double3" 1.9131126469708946 0 3.2751579226442118e-15 ;
	setAttr ".rsrr" -type "double3" -4.5988832847286541e-13 6.2989891543046929e-15 -1.6228904502585093e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_FingerPinkyC_parentConstraint1" -p "jnt_r_FingerPinkyC";
	rename -uid "B0559CAA-4BD3-29BA-30CC-A99178311794";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerPinkyC_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -2.8421709430404007e-14 2.2759572004815709e-15 ;
	setAttr ".tg[0].tor" -type "double3" 1.6797304411479199e-14 1.2722218725854067e-14 
		-4.3235665201144685e-15 ;
	setAttr ".lr" -type "double3" -1.676624430716803e-14 -1.3416412057208654e-14 4.6838637301240094e-15 ;
	setAttr ".rst" -type "double3" 2.823118842698598 -2.8421709430404007e-14 8.8817841970012523e-16 ;
	setAttr ".rsrr" -type "double3" -1.676624430716803e-14 -1.3416412057208654e-14 4.6838637301240094e-15 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_FingerPinkyB_parentConstraint1" -p "jnt_r_FingerPinkyB";
	rename -uid "60B41682-485A-C187-3678-4EA084F1BC90";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerPinkyB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 -2.8421709430404007e-14 
		-8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" 1.9381505090168305e-15 1.113194138512231e-14 
		-1.7278736028302291e-14 ;
	setAttr ".lr" -type "double3" -1.9133024255678987e-15 -1.122745120587915e-14 1.7417729995094763e-14 ;
	setAttr ".rst" -type "double3" 5.5910642993977575 2.8421709430404007e-14 1.7763568394002505e-15 ;
	setAttr ".rsrr" -type "double3" -1.9133024255678987e-15 -1.122745120587915e-14 1.7417729995094763e-14 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "jnt_r_FingerPinkyA_parentConstraint1" -p "jnt_r_FingerPinkyA";
	rename -uid "9AE6D67A-4B51-82B9-BB6C-2AA815EDB68D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerPinkyA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 2.8421709430404007e-14 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 2.4848083448933731e-17 1.2722218725854064e-14 
		-6.8332229484567737e-17 ;
	setAttr ".lr" -type "double3" -1.2424041724466882e-17 -1.1132912013382033e-14 1.987846675914698e-16 ;
	setAttr ".rst" -type "double3" -62.000000000000007 139.80000000000004 -2.0000000000000013 ;
	setAttr ".rsrr" -type "double3" -1.2424041724466882e-17 -1.1132912013382033e-14 
		1.987846675914698e-16 ;
	setAttr -k on ".w0";
createNode transform -n "driverChains_r_FingerPinky" -p "_module_r_FingerPinky";
	rename -uid "F909798A-4E26-2B27-F036-C2A7B8BE56FE";
createNode transform -n "fkChain_r_FingerPinky" -p "driverChains_r_FingerPinky";
	rename -uid "F0B002DC-4A4D-FBE3-E279-0C83A3138766";
createNode transform -n "fkControls_r_FingerPinky" -p "fkChain_r_FingerPinky";
	rename -uid "A65DE3ED-4679-0165-D98F-6AB36A6579DE";
createNode transform -n "off_r_FingerPinkyA_fk" -p "fkControls_r_FingerPinky";
	rename -uid "3AD0EE57-4928-D35E-02A5-2BA84C4968D3";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "ctl_r_FingerPinkyA_fk" -p "off_r_FingerPinkyA_fk";
	rename -uid "EB447B7D-45B8-04B7-2105-9F97FE8A6596";
createNode nurbsCurve -n "ctl_r_FingerPinkyA_fkShape" -p "ctl_r_FingerPinkyA_fk";
	rename -uid "C084F680-47F4-7BBB-20D7-FEB5B30F0409";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerPinkyA_fk_parentConstraint" -p "off_r_FingerPinkyA_fk";
	rename -uid "E3A93A39-49D4-1D29-98A9-FABB75F58757";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2 -0.19999999999998863 -2 ;
	setAttr ".tg[0].tor" -type "double3" 179.81367809101306 10.303180086780639 178.95837332399009 ;
	setAttr ".lr" -type "double3" -0.18632190898692613 169.69681991321934 -1.041626676009904 ;
	setAttr ".rst" -type "double3" -62 139.8 -2 ;
	setAttr ".rsrr" -type "double3" -0.18632190898692613 169.69681991321934 -1.041626676009904 ;
	setAttr -k on ".w0";
createNode transform -n "off_r_FingerPinkyB_fk" -p "fkControls_r_FingerPinky";
	rename -uid "C373B413-4BB7-3A99-2948-F682650E804D";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "ctl_r_FingerPinkyB_fk" -p "off_r_FingerPinkyB_fk";
	rename -uid "22C7E119-4E81-AEA9-EFB3-A1AE05EC9F42";
createNode nurbsCurve -n "ctl_r_FingerPinkyB_fkShape" -p "ctl_r_FingerPinkyB_fk";
	rename -uid "2BCE8535-45E3-496F-CA1B-59ABA99F66D2";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerPinkyB_fk_parentConstraint" -p "off_r_FingerPinkyB_fk";
	rename -uid "FFF3A4E5-437A-2BC8-A153-5087FFE286F6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerPinkyA_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.5910642993977575 5.6843418860808015e-14 0 ;
	setAttr ".tg[0].tor" -type "double3" -0.29731564119083664 4.1787981713704401 -5.0981199988225079 ;
	setAttr ".lr" -type "double3" 0.43488892754273262 173.89992044066096 4.0856167799743641 ;
	setAttr ".rst" -type "double3" -67.500000000000014 139.90000000000006 -3.0000000000000022 ;
	setAttr ".rsrr" -type "double3" 0.43488892754273262 173.89992044066096 4.0856167799743641 ;
	setAttr -k on ".w0";
createNode transform -n "off_r_FingerPinkyC_fk" -p "fkControls_r_FingerPinky";
	rename -uid "034418E0-4F00-8E89-EB87-5794286262F9";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "ctl_r_FingerPinkyC_fk" -p "off_r_FingerPinkyC_fk";
	rename -uid "891FB541-4D08-1DE0-FDD4-028C5230930A";
createNode nurbsCurve -n "ctl_r_FingerPinkyC_fkShape" -p "ctl_r_FingerPinkyC_fk";
	rename -uid "B01F15F8-4E02-3C25-12E8-BEB9A251ED7B";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerPinkyC_fk_parentConstraint" -p "off_r_FingerPinkyC_fk";
	rename -uid "EF67A2B3-448E-E2EF-3724-A2A66DC3C60E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerPinkyB_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.823118842698598 0 8.8817841970012523e-16 ;
	setAttr ".tg[0].tor" -type "double3" -0.32467709582958504 3.08569824864919 -1.947061874106311 ;
	setAttr ".lr" -type "double3" 0.31524927890670562 177.00373615168752 6.0090059574946819 ;
	setAttr ".rst" -type "double3" -70.3 139.7000000000001 -3.3000000000000029 ;
	setAttr ".rsrr" -type "double3" 0.31524927890670562 177.00373615168752 6.0090059574946819 ;
	setAttr -k on ".w0";
createNode transform -n "off_r_FingerPinkyD_fk" -p "fkControls_r_FingerPinky";
	rename -uid "9B3D6FC7-40B6-8A5A-5913-4085A14701D4";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "ctl_r_FingerPinkyD_fk" -p "off_r_FingerPinkyD_fk";
	rename -uid "E1D7A6F4-458E-D7DF-2F8C-EEA57E55E125";
createNode nurbsCurve -n "ctl_r_FingerPinkyD_fkShape" -p "ctl_r_FingerPinkyD_fk";
	rename -uid "362BC1FD-45E1-C883-A72C-F6B4409B00B0";
	setAttr -k off ".v";
	setAttr ".ove" yes;
	setAttr ".ovc" 13;
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		-4.7500126261776402e-17 4.0214287662673808e-17 0.77573593128807161
		-3.3587661386919305e-17 -0.54852813742385709 0.54852813742385709
		-4.758120134466011e-33 -0.77573593128807183 7.7705998787222565e-17
		3.3587661386919305e-17 -0.54852813742385698 -0.54852813742385709
		4.7500126261776402e-17 -1.0578683505459712e-16 -0.77573593128807161
		3.3587661386919305e-17 0.5485281374238572 -0.54852813742385709
		2.9085438792789791e-33 0.77573593128807139 -4.7500126261776384e-17
		-3.3587661386919305e-17 0.54852813742385698 0.54852813742385709
		;
createNode parentConstraint -n "off_r_FingerPinkyD_fk_parentConstraint" -p "off_r_FingerPinkyD_fk";
	rename -uid "4C8803E1-4561-4B1A-3A85-F482F6D8E15E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_FingerPinkyC_fkW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.9131126469708946 -2.8421709430404007e-14 
		3.6082248300317588e-15 ;
	setAttr ".tg[0].tor" -type "double3" -0.39854217037405248 2.9863349684009388 -1.604270916645528 ;
	setAttr ".lr" -type "double3" 0 -179.99999999999989 7.5946433685911732 ;
	setAttr ".rst" -type "double3" -72.199999999999989 139.50000000000006 -3.3999999999999857 ;
	setAttr ".rsrr" -type "double3" 0 -179.99999999999989 7.5946433685911732 ;
	setAttr -k on ".w0";
createNode transform -n "GEO";
	rename -uid "27CA11CF-41BD-BD89-6EEC-F98C07FF2736";
	setAttr ".ovdt" 2;
	setAttr ".ove" yes;
createNode transform -n "geo_l_FingerThumbA_grp" -p "GEO";
	rename -uid "775A9522-4C79-0643-9845-A7B7F92ABE46";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "geo_l_FingerThumbA" -p "geo_l_FingerThumbA_grp";
	rename -uid "F90AA358-4465-B6FC-7FE1-B0AAFE50E90F";
	setAttr ".t" -type "double3" 1.469693845669906 0 0 ;
createNode mesh -n "geo_l_FingerThumbAShape" -p "geo_l_FingerThumbA";
	rename -uid "5FCFCD6A-45F8-FC4E-0EA6-7FA9DA53E681";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.4696939 -0.43301269 -0.25 -1.4696939 -0.25 -0.43301269
		 -1.4696939 0 -0.5 -1.4696939 0.25 -0.43301269 -1.4696939 0.43301269 -0.25 -1.4696939 0.5 0
		 -1.4696939 0.43301269 0.25 -1.4696939 0.25 0.43301269 -1.4696939 0 0.5 -1.4696939 -0.25 0.43301269
		 -1.4696939 -0.43301269 0.25 -1.4696939 -0.5 0 1.4696939 -0.43301269 -0.25 1.4696939 -0.25 -0.43301269
		 1.4696939 0 -0.5 1.4696939 0.25 -0.43301269 1.4696939 0.43301269 -0.25 1.4696939 0.5 0
		 1.4696939 0.43301269 0.25 1.4696939 0.25 0.43301269 1.4696939 0 0.5 1.4696939 -0.25 0.43301269
		 1.4696939 -0.43301269 0.25 1.4696939 -0.5 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerThumbA_knuckle" -p "geo_l_FingerThumbA_grp";
	rename -uid "0257354C-47F0-83E3-971B-05859CB1685F";
createNode mesh -n "geo_l_FingerThumbA_knuckleShape" -p "geo_l_FingerThumbA_knuckle";
	rename -uid "24D438FD-4150-0A43-A80D-389392842397";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.17399213 -0.48503673 -0.1004544 0.1004544 -0.48503673 -0.17399213
		 0 -0.48503673 -0.20090881 -0.1004544 -0.48503673 -0.17399213 -0.17399213 -0.48503673 -0.1004544
		 -0.20090881 -0.48503673 0 -0.17399213 -0.48503673 0.1004544 -0.1004544 -0.48503673 0.17399213
		 0 -0.48503673 0.20090881 0.1004544 -0.48503673 0.17399213 0.17399213 -0.48503673 0.1004544
		 0.20090881 -0.48503673 0 0.3214955 -0.37123105 -0.18561552 0.18561552 -0.37123105 -0.3214955
		 0 -0.37123105 -0.37123105 -0.18561552 -0.37123105 -0.3214955 -0.3214955 -0.37123105 -0.18561552
		 -0.37123105 -0.37123105 0 -0.3214955 -0.37123105 0.18561552 -0.18561552 -0.37123105 0.3214955
		 0 -0.37123105 0.37123105 0.18561552 -0.37123105 0.3214955 0.3214955 -0.37123105 0.18561552
		 0.37123105 -0.37123105 0 0.42005414 -0.20090879 -0.24251837 0.24251837 -0.20090879 -0.42005414
		 0 -0.20090879 -0.48503673 -0.24251837 -0.20090879 -0.42005414 -0.42005414 -0.20090879 -0.24251837
		 -0.48503673 -0.20090879 0 -0.42005414 -0.20090879 0.24251837 -0.24251837 -0.20090879 0.42005414
		 0 -0.20090879 0.48503673 0.24251837 -0.20090879 0.42005414 0.42005414 -0.20090879 0.24251837
		 0.48503673 -0.20090879 0 0.45466331 0 -0.26249999 0.26249999 0 -0.45466331 0 0 -0.52499998
		 -0.26249999 0 -0.45466331 -0.45466331 0 -0.26249999 -0.52499998 0 0 -0.45466331 0 0.26249999
		 -0.26249999 0 0.45466331 0 0 0.52499998 0.26249999 0 0.45466331 0.45466331 0 0.26249999
		 0.52499998 0 0 0.42005414 0.20090879 -0.24251837 0.24251837 0.20090879 -0.42005414
		 0 0.20090879 -0.48503673 -0.24251837 0.20090879 -0.42005414 -0.42005414 0.20090879 -0.24251837
		 -0.48503673 0.20090879 0 -0.42005414 0.20090879 0.24251837 -0.24251837 0.20090879 0.42005414
		 0 0.20090879 0.48503673 0.24251837 0.20090879 0.42005414 0.42005414 0.20090879 0.24251837
		 0.48503673 0.20090879 0 0.3214955 0.37123105 -0.18561552 0.18561552 0.37123105 -0.3214955
		 0 0.37123105 -0.37123105 -0.18561552 0.37123105 -0.3214955 -0.3214955 0.37123105 -0.18561552
		 -0.37123105 0.37123105 0 -0.3214955 0.37123105 0.18561552 -0.18561552 0.37123105 0.3214955
		 0 0.37123105 0.37123105 0.18561552 0.37123105 0.3214955 0.3214955 0.37123105 0.18561552
		 0.37123105 0.37123105 0 0.17399213 0.48503673 -0.1004544 0.1004544 0.48503673 -0.17399213
		 0 0.48503673 -0.20090881 -0.1004544 0.48503673 -0.17399213 -0.17399213 0.48503673 -0.1004544
		 -0.20090881 0.48503673 0 -0.17399213 0.48503673 0.1004544 -0.1004544 0.48503673 0.17399213
		 0 0.48503673 0.20090881 0.1004544 0.48503673 0.17399213 0.17399213 0.48503673 0.1004544
		 0.20090881 0.48503673 0 0 -0.52499998 0 0 0.52499998 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerThumbA_grp_parentConstraint1" -p "geo_l_FingerThumbA_grp";
	rename -uid "837EF7D0-4C3E-7365-B53C-B78AEE8EFC1A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerThumbAW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.5099033134902129e-14 0 7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 3.1805546814635168e-15 9.5416640443905535e-15 
		-1.5902773407317588e-15 ;
	setAttr ".lr" -type "double3" 15.225157010678132 -42.875988666635777 -21.801409486352195 ;
	setAttr ".rst" -type "double3" 61.999999999999986 139.00000000000003 3.0000000000000027 ;
	setAttr ".rsrr" -type "double3" 15.225157010678132 -42.875988666635777 -21.801409486352195 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerThumbB_grp" -p "GEO";
	rename -uid "F8DF1EB6-4979-DCB0-3E6E-01BDEF2B252D";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "geo_l_FingerThumbB" -p "geo_l_FingerThumbB_grp";
	rename -uid "A3A22F33-473B-DFD2-1698-6D82DD0B3B5C";
	setAttr ".t" -type "double3" 1.178982612255163 0 0 ;
createNode mesh -n "geo_l_FingerThumbBShape" -p "geo_l_FingerThumbB";
	rename -uid "54C9437E-47AE-8192-7B9F-87BA6CBA3616";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.17898262 -0.43301269 -0.25 -1.17898262 -0.25 -0.43301269
		 -1.17898262 0 -0.5 -1.17898262 0.25 -0.43301269 -1.17898262 0.43301269 -0.25 -1.17898262 0.5 0
		 -1.17898262 0.43301269 0.25 -1.17898262 0.25 0.43301269 -1.17898262 0 0.5 -1.17898262 -0.25 0.43301269
		 -1.17898262 -0.43301269 0.25 -1.17898262 -0.5 0 1.17898262 -0.43301269 -0.25 1.17898262 -0.25 -0.43301269
		 1.17898262 0 -0.5 1.17898262 0.25 -0.43301269 1.17898262 0.43301269 -0.25 1.17898262 0.5 0
		 1.17898262 0.43301269 0.25 1.17898262 0.25 0.43301269 1.17898262 0 0.5 1.17898262 -0.25 0.43301269
		 1.17898262 -0.43301269 0.25 1.17898262 -0.5 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerThumbB_knuckle" -p "geo_l_FingerThumbB_grp";
	rename -uid "105FED55-41D2-0C60-6CA8-03819B3896F0";
createNode mesh -n "geo_l_FingerThumbB_knuckleShape" -p "geo_l_FingerThumbB_knuckle";
	rename -uid "1B8DDF3D-481B-BBA1-37F0-C9BE15241CEF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.17399213 -0.48503673 -0.1004544 0.1004544 -0.48503673 -0.17399213
		 0 -0.48503673 -0.20090881 -0.1004544 -0.48503673 -0.17399213 -0.17399213 -0.48503673 -0.1004544
		 -0.20090881 -0.48503673 0 -0.17399213 -0.48503673 0.1004544 -0.1004544 -0.48503673 0.17399213
		 0 -0.48503673 0.20090881 0.1004544 -0.48503673 0.17399213 0.17399213 -0.48503673 0.1004544
		 0.20090881 -0.48503673 0 0.3214955 -0.37123105 -0.18561552 0.18561552 -0.37123105 -0.3214955
		 0 -0.37123105 -0.37123105 -0.18561552 -0.37123105 -0.3214955 -0.3214955 -0.37123105 -0.18561552
		 -0.37123105 -0.37123105 0 -0.3214955 -0.37123105 0.18561552 -0.18561552 -0.37123105 0.3214955
		 0 -0.37123105 0.37123105 0.18561552 -0.37123105 0.3214955 0.3214955 -0.37123105 0.18561552
		 0.37123105 -0.37123105 0 0.42005414 -0.20090879 -0.24251837 0.24251837 -0.20090879 -0.42005414
		 0 -0.20090879 -0.48503673 -0.24251837 -0.20090879 -0.42005414 -0.42005414 -0.20090879 -0.24251837
		 -0.48503673 -0.20090879 0 -0.42005414 -0.20090879 0.24251837 -0.24251837 -0.20090879 0.42005414
		 0 -0.20090879 0.48503673 0.24251837 -0.20090879 0.42005414 0.42005414 -0.20090879 0.24251837
		 0.48503673 -0.20090879 0 0.45466331 0 -0.26249999 0.26249999 0 -0.45466331 0 0 -0.52499998
		 -0.26249999 0 -0.45466331 -0.45466331 0 -0.26249999 -0.52499998 0 0 -0.45466331 0 0.26249999
		 -0.26249999 0 0.45466331 0 0 0.52499998 0.26249999 0 0.45466331 0.45466331 0 0.26249999
		 0.52499998 0 0 0.42005414 0.20090879 -0.24251837 0.24251837 0.20090879 -0.42005414
		 0 0.20090879 -0.48503673 -0.24251837 0.20090879 -0.42005414 -0.42005414 0.20090879 -0.24251837
		 -0.48503673 0.20090879 0 -0.42005414 0.20090879 0.24251837 -0.24251837 0.20090879 0.42005414
		 0 0.20090879 0.48503673 0.24251837 0.20090879 0.42005414 0.42005414 0.20090879 0.24251837
		 0.48503673 0.20090879 0 0.3214955 0.37123105 -0.18561552 0.18561552 0.37123105 -0.3214955
		 0 0.37123105 -0.37123105 -0.18561552 0.37123105 -0.3214955 -0.3214955 0.37123105 -0.18561552
		 -0.37123105 0.37123105 0 -0.3214955 0.37123105 0.18561552 -0.18561552 0.37123105 0.3214955
		 0 0.37123105 0.37123105 0.18561552 0.37123105 0.3214955 0.3214955 0.37123105 0.18561552
		 0.37123105 0.37123105 0 0.17399213 0.48503673 -0.1004544 0.1004544 0.48503673 -0.17399213
		 0 0.48503673 -0.20090881 -0.1004544 0.48503673 -0.17399213 -0.17399213 0.48503673 -0.1004544
		 -0.20090881 0.48503673 0 -0.17399213 0.48503673 0.1004544 -0.1004544 0.48503673 0.17399213
		 0 0.48503673 0.20090881 0.1004544 0.48503673 0.17399213 0.17399213 0.48503673 0.1004544
		 0.20090881 0.48503673 0 0 -0.52499998 0 0 0.52499998 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerThumbB_grp_parentConstraint1" -p "geo_l_FingerThumbB_grp";
	rename -uid "F654A144-4BE2-D1F7-3FAB-BA8A6F38F175";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerThumbBW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.0658141036401503e-14 2.8421709430404007e-14 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -3.180554681463516e-15 9.5416640443905535e-15 
		-1.5902773407317588e-15 ;
	setAttr ".lr" -type "double3" 11.194785218593696 -36.422309803534084 -18.434948822922259 ;
	setAttr ".rst" -type "double3" 64.000000000000028 138.2000000000001 5.0000000000000284 ;
	setAttr ".rsrr" -type "double3" 11.194785218593696 -36.422309803534084 -18.434948822922259 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerThumbC_grp" -p "GEO";
	rename -uid "DFB39E91-4C4B-F0F5-8190-0A9D57156EEF";
	setAttr ".s" -type "double3" 1 0.99999999999999978 0.99999999999999989 ;
createNode transform -n "geo_l_FingerThumbC" -p "geo_l_FingerThumbC_grp";
	rename -uid "A3D0F391-4585-DA70-9641-D4B13DF2A973";
	setAttr ".t" -type "double3" 0.92330926563096416 0 0 ;
createNode mesh -n "geo_l_FingerThumbCShape" -p "geo_l_FingerThumbC";
	rename -uid "22690ECE-4A5E-C02F-BE69-2097AEB5B500";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.92330927 -0.43301269 -0.25 -0.92330927 -0.25 -0.43301269
		 -0.92330927 0 -0.5 -0.92330927 0.25 -0.43301269 -0.92330927 0.43301269 -0.25 -0.92330927 0.5 0
		 -0.92330927 0.43301269 0.25 -0.92330927 0.25 0.43301269 -0.92330927 0 0.5 -0.92330927 -0.25 0.43301269
		 -0.92330927 -0.43301269 0.25 -0.92330927 -0.5 0 0.92330927 -0.43301269 -0.25 0.92330927 -0.25 -0.43301269
		 0.92330927 0 -0.5 0.92330927 0.25 -0.43301269 0.92330927 0.43301269 -0.25 0.92330927 0.5 0
		 0.92330927 0.43301269 0.25 0.92330927 0.25 0.43301269 0.92330927 0 0.5 0.92330927 -0.25 0.43301269
		 0.92330927 -0.43301269 0.25 0.92330927 -0.5 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerThumbC_knuckle" -p "geo_l_FingerThumbC_grp";
	rename -uid "71B7E0A8-4F32-0EBF-3FD5-758CAD8CFD03";
createNode mesh -n "geo_l_FingerThumbC_knuckleShape" -p "geo_l_FingerThumbC_knuckle";
	rename -uid "1683FC86-4245-12A7-B427-C1B01BE68FE5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.17399213 -0.48503673 -0.1004544 0.1004544 -0.48503673 -0.17399213
		 0 -0.48503673 -0.20090881 -0.1004544 -0.48503673 -0.17399213 -0.17399213 -0.48503673 -0.1004544
		 -0.20090881 -0.48503673 0 -0.17399213 -0.48503673 0.1004544 -0.1004544 -0.48503673 0.17399213
		 0 -0.48503673 0.20090881 0.1004544 -0.48503673 0.17399213 0.17399213 -0.48503673 0.1004544
		 0.20090881 -0.48503673 0 0.3214955 -0.37123105 -0.18561552 0.18561552 -0.37123105 -0.3214955
		 0 -0.37123105 -0.37123105 -0.18561552 -0.37123105 -0.3214955 -0.3214955 -0.37123105 -0.18561552
		 -0.37123105 -0.37123105 0 -0.3214955 -0.37123105 0.18561552 -0.18561552 -0.37123105 0.3214955
		 0 -0.37123105 0.37123105 0.18561552 -0.37123105 0.3214955 0.3214955 -0.37123105 0.18561552
		 0.37123105 -0.37123105 0 0.42005414 -0.20090879 -0.24251837 0.24251837 -0.20090879 -0.42005414
		 0 -0.20090879 -0.48503673 -0.24251837 -0.20090879 -0.42005414 -0.42005414 -0.20090879 -0.24251837
		 -0.48503673 -0.20090879 0 -0.42005414 -0.20090879 0.24251837 -0.24251837 -0.20090879 0.42005414
		 0 -0.20090879 0.48503673 0.24251837 -0.20090879 0.42005414 0.42005414 -0.20090879 0.24251837
		 0.48503673 -0.20090879 0 0.45466331 0 -0.26249999 0.26249999 0 -0.45466331 0 0 -0.52499998
		 -0.26249999 0 -0.45466331 -0.45466331 0 -0.26249999 -0.52499998 0 0 -0.45466331 0 0.26249999
		 -0.26249999 0 0.45466331 0 0 0.52499998 0.26249999 0 0.45466331 0.45466331 0 0.26249999
		 0.52499998 0 0 0.42005414 0.20090879 -0.24251837 0.24251837 0.20090879 -0.42005414
		 0 0.20090879 -0.48503673 -0.24251837 0.20090879 -0.42005414 -0.42005414 0.20090879 -0.24251837
		 -0.48503673 0.20090879 0 -0.42005414 0.20090879 0.24251837 -0.24251837 0.20090879 0.42005414
		 0 0.20090879 0.48503673 0.24251837 0.20090879 0.42005414 0.42005414 0.20090879 0.24251837
		 0.48503673 0.20090879 0 0.3214955 0.37123105 -0.18561552 0.18561552 0.37123105 -0.3214955
		 0 0.37123105 -0.37123105 -0.18561552 0.37123105 -0.3214955 -0.3214955 0.37123105 -0.18561552
		 -0.37123105 0.37123105 0 -0.3214955 0.37123105 0.18561552 -0.18561552 0.37123105 0.3214955
		 0 0.37123105 0.37123105 0.18561552 0.37123105 0.3214955 0.3214955 0.37123105 0.18561552
		 0.37123105 0.37123105 0 0.17399213 0.48503673 -0.1004544 0.1004544 0.48503673 -0.17399213
		 0 0.48503673 -0.20090881 -0.1004544 0.48503673 -0.17399213 -0.17399213 0.48503673 -0.1004544
		 -0.20090881 0.48503673 0 -0.17399213 0.48503673 0.1004544 -0.1004544 0.48503673 0.17399213
		 0 0.48503673 0.20090881 0.1004544 0.48503673 0.17399213 0.17399213 0.48503673 0.1004544
		 0.20090881 0.48503673 0 0 -0.52499998 0 0 0.52499998 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerThumbC_grp_parentConstraint1" -p "geo_l_FingerThumbC_grp";
	rename -uid "995828B0-40E3-4623-80FE-8FA6A56F1353";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerThumbCW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 3.5527136788005009e-15 -2.8421709430404007e-14 
		1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" -4.7708320221952752e-15 -2.5444437451708128e-14 
		2.3854160110976372e-15 ;
	setAttr ".lr" -type "double3" 8.2171692059965373 -32.787878040297088 -14.931417178137629 ;
	setAttr ".rst" -type "double3" 65.8 137.60000000000002 6.4000000000000226 ;
	setAttr ".rsrr" -type "double3" 8.2171692059965373 -32.787878040297088 -14.931417178137629 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerIndexA_grp" -p "GEO";
	rename -uid "12E295E0-4285-B051-5FCC-15A21A6E718F";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "geo_l_FingerIndexA" -p "geo_l_FingerIndexA_grp";
	rename -uid "BF3EDFC8-4715-87BC-0538-C2AE9FCECACD";
	setAttr ".t" -type "double3" 1.7592612085759178 0 0 ;
createNode mesh -n "geo_l_FingerIndexAShape" -p "geo_l_FingerIndexA";
	rename -uid "E63AABDC-46AE-51DC-A6B0-DBB0090ABDE8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.75926125 -0.38971141 -0.22499999 -1.75926125 -0.22499999 -0.38971141
		 -1.75926125 0 -0.44999999 -1.75926125 0.22499999 -0.38971141 -1.75926125 0.38971141 -0.22499999
		 -1.75926125 0.44999999 0 -1.75926125 0.38971141 0.22499999 -1.75926125 0.22499999 0.38971141
		 -1.75926125 0 0.44999999 -1.75926125 -0.22499999 0.38971141 -1.75926125 -0.38971141 0.22499999
		 -1.75926125 -0.44999999 0 1.75926125 -0.38971141 -0.22499999 1.75926125 -0.22499999 -0.38971141
		 1.75926125 0 -0.44999999 1.75926125 0.22499999 -0.38971141 1.75926125 0.38971141 -0.22499999
		 1.75926125 0.44999999 0 1.75926125 0.38971141 0.22499999 1.75926125 0.22499999 0.38971141
		 1.75926125 0 0.44999999 1.75926125 -0.22499999 0.38971141 1.75926125 -0.38971141 0.22499999
		 1.75926125 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerIndexA_knuckle" -p "geo_l_FingerIndexA_grp";
	rename -uid "1F59E949-4CCF-A829-3236-98BC6B34BF28";
createNode mesh -n "geo_l_FingerIndexA_knuckleShape" -p "geo_l_FingerIndexA_knuckle";
	rename -uid "0A145C91-48A7-E8D2-DC40-8292141D3898";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerIndexA_grp_parentConstraint1" -p "geo_l_FingerIndexA_grp";
	rename -uid "6A93445E-4198-743D-7A07-7C92FFDD92F5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerIndexAW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 
		1.3322676295501878e-15 ;
	setAttr ".tg[0].tor" -type "double3" -4.9696166897867449e-17 -3.1805546814635168e-15 
		-1.1399058282198346e-15 ;
	setAttr ".lr" -type "double3" 0.27915285872323897 -4.8911522098506159 -3.2704879231833814 ;
	setAttr ".rst" -type "double3" 68.999999999999986 139.99999999999997 3 ;
	setAttr ".rsrr" -type "double3" 0.27915285872323897 -4.8911522098506159 -3.2704879231833814 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerIndexB_grp" -p "GEO";
	rename -uid "5CF1C399-4767-2043-C237-739905CC5402";
createNode transform -n "geo_l_FingerIndexB" -p "geo_l_FingerIndexB_grp";
	rename -uid "395EE6D7-44A6-E2AE-AD8D-25A831655499";
	setAttr ".t" -type "double3" 1.1554220008291323 0 0 ;
createNode mesh -n "geo_l_FingerIndexBShape" -p "geo_l_FingerIndexB";
	rename -uid "9032EFF1-4502-6C2A-ADCD-83A9A9F876F2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.15542197 -0.38971141 -0.22499999 -1.15542197 -0.22499999 -0.38971141
		 -1.15542197 0 -0.44999999 -1.15542197 0.22499999 -0.38971141 -1.15542197 0.38971141 -0.22499999
		 -1.15542197 0.44999999 0 -1.15542197 0.38971141 0.22499999 -1.15542197 0.22499999 0.38971141
		 -1.15542197 0 0.44999999 -1.15542197 -0.22499999 0.38971141 -1.15542197 -0.38971141 0.22499999
		 -1.15542197 -0.44999999 0 1.15542197 -0.38971141 -0.22499999 1.15542197 -0.22499999 -0.38971141
		 1.15542197 0 -0.44999999 1.15542197 0.22499999 -0.38971141 1.15542197 0.38971141 -0.22499999
		 1.15542197 0.44999999 0 1.15542197 0.38971141 0.22499999 1.15542197 0.22499999 0.38971141
		 1.15542197 0 0.44999999 1.15542197 -0.22499999 0.38971141 1.15542197 -0.38971141 0.22499999
		 1.15542197 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerIndexB_knuckle" -p "geo_l_FingerIndexB_grp";
	rename -uid "BFA5E3E1-43C2-4876-FF83-9FB8B5D09981";
createNode mesh -n "geo_l_FingerIndexB_knuckleShape" -p "geo_l_FingerIndexB_knuckle";
	rename -uid "2CEA9918-4985-1088-C3DA-ABAABDEEB989";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerIndexB_grp_parentConstraint1" -p "geo_l_FingerIndexB_grp";
	rename -uid "4649B680-4592-2350-6D0E-DEA89A9C7A3F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerIndexBW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 2.8421709430404007e-14 -5.5511151231257827e-17 ;
	setAttr ".tg[0].tor" -type "double3" -1.4908850069360237e-16 1.9878466759146976e-15 
		2.4817023344622549e-15 ;
	setAttr ".lr" -type "double3" 0.21560166663048289 -2.4802053767472128 -4.9697407281108132 ;
	setAttr ".rst" -type "double3" 72.500000000000014 139.80000000000007 3.3000000000000003 ;
	setAttr ".rsrr" -type "double3" 0.21560166663048289 -2.4802053767472128 -4.9697407281108132 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerIndexC_grp" -p "GEO";
	rename -uid "22397883-4D40-D30C-4606-DFB397508390";
createNode transform -n "geo_l_FingerIndexC" -p "geo_l_FingerIndexC_grp";
	rename -uid "4998DC0D-41F8-88DC-7EDC-629039C6F597";
	setAttr ".t" -type "double3" 0.90553851381373973 0 0 ;
createNode mesh -n "geo_l_FingerIndexCShape" -p "geo_l_FingerIndexC";
	rename -uid "469A062E-40B7-6F31-3244-3E8E02DCF2FB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.9055385 -0.38971141 -0.22499999 -0.9055385 -0.22499999 -0.38971141
		 -0.9055385 0 -0.44999999 -0.9055385 0.22499999 -0.38971141 -0.9055385 0.38971141 -0.22499999
		 -0.9055385 0.44999999 0 -0.9055385 0.38971141 0.22499999 -0.9055385 0.22499999 0.38971141
		 -0.9055385 0 0.44999999 -0.9055385 -0.22499999 0.38971141 -0.9055385 -0.38971141 0.22499999
		 -0.9055385 -0.44999999 0 0.9055385 -0.38971141 -0.22499999 0.9055385 -0.22499999 -0.38971141
		 0.9055385 0 -0.44999999 0.9055385 0.22499999 -0.38971141 0.9055385 0.38971141 -0.22499999
		 0.9055385 0.44999999 0 0.9055385 0.38971141 0.22499999 0.9055385 0.22499999 0.38971141
		 0.9055385 0 0.44999999 0.9055385 -0.22499999 0.38971141 0.9055385 -0.38971141 0.22499999
		 0.9055385 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerIndexC_knuckle" -p "geo_l_FingerIndexC_grp";
	rename -uid "1349A5E0-4E24-2F58-E004-B29512BEB287";
createNode mesh -n "geo_l_FingerIndexC_knuckleShape" -p "geo_l_FingerIndexC_knuckle";
	rename -uid "5145630D-4131-1261-B54D-CBA60D1FB41F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerIndexC_grp_parentConstraint1" -p "geo_l_FingerIndexC_grp";
	rename -uid "D5BC92BF-4B48-874D-28A8-25B3969DA7A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerIndexCW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" -1.1704441227785739e-12 1.439200993362241e-13 
		-1.5902773407317588e-15 ;
	setAttr ".lr" -type "double3" 1.1704080375540942e-12 -1.4354709485719417e-13 -6.3401917459109818 ;
	setAttr ".rst" -type "double3" 74.800000000000026 139.60000000000002 3.400000000000007 ;
	setAttr ".rsrr" -type "double3" 1.1704080375540942e-12 -1.4354709485719417e-13 -6.3401917459109818 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerMiddleA_grp" -p "GEO";
	rename -uid "4C64A02C-4BA9-865F-1B2B-E791B6E05C84";
createNode transform -n "geo_l_FingerMiddleA" -p "geo_l_FingerMiddleA_grp";
	rename -uid "400F90F2-4ADE-100B-DBD9-E5AB05F2702B";
	setAttr ".t" -type "double3" 1.9026297590440431 0 0 ;
createNode mesh -n "geo_l_FingerMiddleAShape" -p "geo_l_FingerMiddleA";
	rename -uid "7C878634-4EB1-7B61-110E-ED9C0DC904E9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.90262973 -0.43301269 -0.25 -1.90262973 -0.25 -0.43301269
		 -1.90262973 0 -0.5 -1.90262973 0.25 -0.43301269 -1.90262973 0.43301269 -0.25 -1.90262973 0.5 0
		 -1.90262973 0.43301269 0.25 -1.90262973 0.25 0.43301269 -1.90262973 0 0.5 -1.90262973 -0.25 0.43301269
		 -1.90262973 -0.43301269 0.25 -1.90262973 -0.5 0 1.90262973 -0.43301269 -0.25 1.90262973 -0.25 -0.43301269
		 1.90262973 0 -0.5 1.90262973 0.25 -0.43301269 1.90262973 0.43301269 -0.25 1.90262973 0.5 0
		 1.90262973 0.43301269 0.25 1.90262973 0.25 0.43301269 1.90262973 0 0.5 1.90262973 -0.25 0.43301269
		 1.90262973 -0.43301269 0.25 1.90262973 -0.5 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerMiddleA_knuckle" -p "geo_l_FingerMiddleA_grp";
	rename -uid "8AAADBAE-43A6-0111-7A1D-ACBA3E0F12A1";
createNode mesh -n "geo_l_FingerMiddleA_knuckleShape" -p "geo_l_FingerMiddleA_knuckle";
	rename -uid "3C69AF94-4B6E-648F-43E7-83A9BC751258";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.17399213 -0.48503673 -0.1004544 0.1004544 -0.48503673 -0.17399213
		 0 -0.48503673 -0.20090881 -0.1004544 -0.48503673 -0.17399213 -0.17399213 -0.48503673 -0.1004544
		 -0.20090881 -0.48503673 0 -0.17399213 -0.48503673 0.1004544 -0.1004544 -0.48503673 0.17399213
		 0 -0.48503673 0.20090881 0.1004544 -0.48503673 0.17399213 0.17399213 -0.48503673 0.1004544
		 0.20090881 -0.48503673 0 0.3214955 -0.37123105 -0.18561552 0.18561552 -0.37123105 -0.3214955
		 0 -0.37123105 -0.37123105 -0.18561552 -0.37123105 -0.3214955 -0.3214955 -0.37123105 -0.18561552
		 -0.37123105 -0.37123105 0 -0.3214955 -0.37123105 0.18561552 -0.18561552 -0.37123105 0.3214955
		 0 -0.37123105 0.37123105 0.18561552 -0.37123105 0.3214955 0.3214955 -0.37123105 0.18561552
		 0.37123105 -0.37123105 0 0.42005414 -0.20090879 -0.24251837 0.24251837 -0.20090879 -0.42005414
		 0 -0.20090879 -0.48503673 -0.24251837 -0.20090879 -0.42005414 -0.42005414 -0.20090879 -0.24251837
		 -0.48503673 -0.20090879 0 -0.42005414 -0.20090879 0.24251837 -0.24251837 -0.20090879 0.42005414
		 0 -0.20090879 0.48503673 0.24251837 -0.20090879 0.42005414 0.42005414 -0.20090879 0.24251837
		 0.48503673 -0.20090879 0 0.45466331 0 -0.26249999 0.26249999 0 -0.45466331 0 0 -0.52499998
		 -0.26249999 0 -0.45466331 -0.45466331 0 -0.26249999 -0.52499998 0 0 -0.45466331 0 0.26249999
		 -0.26249999 0 0.45466331 0 0 0.52499998 0.26249999 0 0.45466331 0.45466331 0 0.26249999
		 0.52499998 0 0 0.42005414 0.20090879 -0.24251837 0.24251837 0.20090879 -0.42005414
		 0 0.20090879 -0.48503673 -0.24251837 0.20090879 -0.42005414 -0.42005414 0.20090879 -0.24251837
		 -0.48503673 0.20090879 0 -0.42005414 0.20090879 0.24251837 -0.24251837 0.20090879 0.42005414
		 0 0.20090879 0.48503673 0.24251837 0.20090879 0.42005414 0.42005414 0.20090879 0.24251837
		 0.48503673 0.20090879 0 0.3214955 0.37123105 -0.18561552 0.18561552 0.37123105 -0.3214955
		 0 0.37123105 -0.37123105 -0.18561552 0.37123105 -0.3214955 -0.3214955 0.37123105 -0.18561552
		 -0.37123105 0.37123105 0 -0.3214955 0.37123105 0.18561552 -0.18561552 0.37123105 0.3214955
		 0 0.37123105 0.37123105 0.18561552 0.37123105 0.3214955 0.3214955 0.37123105 0.18561552
		 0.37123105 0.37123105 0 0.17399213 0.48503673 -0.1004544 0.1004544 0.48503673 -0.17399213
		 0 0.48503673 -0.20090881 -0.1004544 0.48503673 -0.17399213 -0.17399213 0.48503673 -0.1004544
		 -0.20090881 0.48503673 0 -0.17399213 0.48503673 0.1004544 -0.1004544 0.48503673 0.17399213
		 0 0.48503673 0.20090881 0.1004544 0.48503673 0.17399213 0.17399213 0.48503673 0.1004544
		 0.20090881 0.48503673 0 0 -0.52499998 0 0 0.52499998 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerMiddleA_grp_parentConstraint1" -p "geo_l_FingerMiddleA_grp";
	rename -uid "D067BC0C-495D-DB94-F7C9-FCA5BF457CCA";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerMiddleAW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -3.9756933518293969e-16 ;
	setAttr ".lr" -type "double3" 0 0 -3.0127875041831658 ;
	setAttr ".rst" -type "double3" 69.5 140.2 1 ;
	setAttr ".rsrr" -type "double3" 0 0 -3.0127875041831658 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerMiddleB_grp" -p "GEO";
	rename -uid "3A1977A9-4A30-DA71-1C29-02B04D4B08C3";
createNode transform -n "geo_l_FingerMiddleB" -p "geo_l_FingerMiddleB_grp";
	rename -uid "58C49632-4B8E-2066-B744-118FD64D3089";
	setAttr ".t" -type "double3" 1.3038404810405204 0 0 ;
createNode mesh -n "geo_l_FingerMiddleBShape" -p "geo_l_FingerMiddleB";
	rename -uid "236E99A0-4A0A-F9F3-C443-BF936CE43266";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.30384052 -0.43301269 -0.25 -1.30384052 -0.25 -0.43301269
		 -1.30384052 0 -0.5 -1.30384052 0.25 -0.43301269 -1.30384052 0.43301269 -0.25 -1.30384052 0.5 0
		 -1.30384052 0.43301269 0.25 -1.30384052 0.25 0.43301269 -1.30384052 0 0.5 -1.30384052 -0.25 0.43301269
		 -1.30384052 -0.43301269 0.25 -1.30384052 -0.5 0 1.30384052 -0.43301269 -0.25 1.30384052 -0.25 -0.43301269
		 1.30384052 0 -0.5 1.30384052 0.25 -0.43301269 1.30384052 0.43301269 -0.25 1.30384052 0.5 0
		 1.30384052 0.43301269 0.25 1.30384052 0.25 0.43301269 1.30384052 0 0.5 1.30384052 -0.25 0.43301269
		 1.30384052 -0.43301269 0.25 1.30384052 -0.5 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerMiddleB_knuckle" -p "geo_l_FingerMiddleB_grp";
	rename -uid "8848C002-44DB-497E-FB21-308E9DBD43DA";
createNode mesh -n "geo_l_FingerMiddleB_knuckleShape" -p "geo_l_FingerMiddleB_knuckle";
	rename -uid "5918C25C-4086-09BE-B5B7-FFB1BA2C5446";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.17399213 -0.48503673 -0.1004544 0.1004544 -0.48503673 -0.17399213
		 0 -0.48503673 -0.20090881 -0.1004544 -0.48503673 -0.17399213 -0.17399213 -0.48503673 -0.1004544
		 -0.20090881 -0.48503673 0 -0.17399213 -0.48503673 0.1004544 -0.1004544 -0.48503673 0.17399213
		 0 -0.48503673 0.20090881 0.1004544 -0.48503673 0.17399213 0.17399213 -0.48503673 0.1004544
		 0.20090881 -0.48503673 0 0.3214955 -0.37123105 -0.18561552 0.18561552 -0.37123105 -0.3214955
		 0 -0.37123105 -0.37123105 -0.18561552 -0.37123105 -0.3214955 -0.3214955 -0.37123105 -0.18561552
		 -0.37123105 -0.37123105 0 -0.3214955 -0.37123105 0.18561552 -0.18561552 -0.37123105 0.3214955
		 0 -0.37123105 0.37123105 0.18561552 -0.37123105 0.3214955 0.3214955 -0.37123105 0.18561552
		 0.37123105 -0.37123105 0 0.42005414 -0.20090879 -0.24251837 0.24251837 -0.20090879 -0.42005414
		 0 -0.20090879 -0.48503673 -0.24251837 -0.20090879 -0.42005414 -0.42005414 -0.20090879 -0.24251837
		 -0.48503673 -0.20090879 0 -0.42005414 -0.20090879 0.24251837 -0.24251837 -0.20090879 0.42005414
		 0 -0.20090879 0.48503673 0.24251837 -0.20090879 0.42005414 0.42005414 -0.20090879 0.24251837
		 0.48503673 -0.20090879 0 0.45466331 0 -0.26249999 0.26249999 0 -0.45466331 0 0 -0.52499998
		 -0.26249999 0 -0.45466331 -0.45466331 0 -0.26249999 -0.52499998 0 0 -0.45466331 0 0.26249999
		 -0.26249999 0 0.45466331 0 0 0.52499998 0.26249999 0 0.45466331 0.45466331 0 0.26249999
		 0.52499998 0 0 0.42005414 0.20090879 -0.24251837 0.24251837 0.20090879 -0.42005414
		 0 0.20090879 -0.48503673 -0.24251837 0.20090879 -0.42005414 -0.42005414 0.20090879 -0.24251837
		 -0.48503673 0.20090879 0 -0.42005414 0.20090879 0.24251837 -0.24251837 0.20090879 0.42005414
		 0 0.20090879 0.48503673 0.24251837 0.20090879 0.42005414 0.42005414 0.20090879 0.24251837
		 0.48503673 0.20090879 0 0.3214955 0.37123105 -0.18561552 0.18561552 0.37123105 -0.3214955
		 0 0.37123105 -0.37123105 -0.18561552 0.37123105 -0.3214955 -0.3214955 0.37123105 -0.18561552
		 -0.37123105 0.37123105 0 -0.3214955 0.37123105 0.18561552 -0.18561552 0.37123105 0.3214955
		 0 0.37123105 0.37123105 0.18561552 0.37123105 0.3214955 0.3214955 0.37123105 0.18561552
		 0.37123105 0.37123105 0 0.17399213 0.48503673 -0.1004544 0.1004544 0.48503673 -0.17399213
		 0 0.48503673 -0.20090881 -0.1004544 0.48503673 -0.17399213 -0.17399213 0.48503673 -0.1004544
		 -0.20090881 0.48503673 0 -0.17399213 0.48503673 0.1004544 -0.1004544 0.48503673 0.17399213
		 0 0.48503673 0.20090881 0.1004544 0.48503673 0.17399213 0.17399213 0.48503673 0.1004544
		 0.20090881 0.48503673 0 0 -0.52499998 0 0 0.52499998 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerMiddleB_grp_parentConstraint1" -p "geo_l_FingerMiddleB_grp";
	rename -uid "CEADCC43-4855-8DA9-6151-79A414742E99";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerMiddleBW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" 0 0 -7.9513867036587919e-16 ;
	setAttr ".lr" -type "double3" 0 0 -4.3987053549961921 ;
	setAttr ".rst" -type "double3" 73.299999999999983 140 1 ;
	setAttr ".rsrr" -type "double3" 0 0 -4.3987053549961921 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerMiddleC_grp" -p "GEO";
	rename -uid "C830BB69-42AF-6969-6AD2-128556C943BE";
createNode transform -n "geo_l_FingerMiddleC" -p "geo_l_FingerMiddleC_grp";
	rename -uid "4C1AD0DF-463D-E003-367F-3FAFC8A8370E";
	setAttr ".t" -type "double3" 1.0049875621120885 0 0 ;
createNode mesh -n "geo_l_FingerMiddleCShape" -p "geo_l_FingerMiddleC";
	rename -uid "925C325E-4E77-CD60-4D9B-5C83AAFF3DE8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.0049875975 -0.43301269 -0.25 -1.0049875975 -0.25 -0.43301269
		 -1.0049875975 0 -0.5 -1.0049875975 0.25 -0.43301269 -1.0049875975 0.43301269 -0.25
		 -1.0049875975 0.5 0 -1.0049875975 0.43301269 0.25 -1.0049875975 0.25 0.43301269 -1.0049875975 0 0.5
		 -1.0049875975 -0.25 0.43301269 -1.0049875975 -0.43301269 0.25 -1.0049875975 -0.5 0
		 1.0049875975 -0.43301269 -0.25 1.0049875975 -0.25 -0.43301269 1.0049875975 0 -0.5
		 1.0049875975 0.25 -0.43301269 1.0049875975 0.43301269 -0.25 1.0049875975 0.5 0 1.0049875975 0.43301269 0.25
		 1.0049875975 0.25 0.43301269 1.0049875975 0 0.5 1.0049875975 -0.25 0.43301269 1.0049875975 -0.43301269 0.25
		 1.0049875975 -0.5 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerMiddleC_knuckle" -p "geo_l_FingerMiddleC_grp";
	rename -uid "205E2918-4B4E-FF5F-8BC3-B3BF97A8E2D3";
createNode mesh -n "geo_l_FingerMiddleC_knuckleShape" -p "geo_l_FingerMiddleC_knuckle";
	rename -uid "3D164040-49DB-59A1-8AD9-378DC75AEC61";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.17399213 -0.48503673 -0.1004544 0.1004544 -0.48503673 -0.17399213
		 0 -0.48503673 -0.20090881 -0.1004544 -0.48503673 -0.17399213 -0.17399213 -0.48503673 -0.1004544
		 -0.20090881 -0.48503673 0 -0.17399213 -0.48503673 0.1004544 -0.1004544 -0.48503673 0.17399213
		 0 -0.48503673 0.20090881 0.1004544 -0.48503673 0.17399213 0.17399213 -0.48503673 0.1004544
		 0.20090881 -0.48503673 0 0.3214955 -0.37123105 -0.18561552 0.18561552 -0.37123105 -0.3214955
		 0 -0.37123105 -0.37123105 -0.18561552 -0.37123105 -0.3214955 -0.3214955 -0.37123105 -0.18561552
		 -0.37123105 -0.37123105 0 -0.3214955 -0.37123105 0.18561552 -0.18561552 -0.37123105 0.3214955
		 0 -0.37123105 0.37123105 0.18561552 -0.37123105 0.3214955 0.3214955 -0.37123105 0.18561552
		 0.37123105 -0.37123105 0 0.42005414 -0.20090879 -0.24251837 0.24251837 -0.20090879 -0.42005414
		 0 -0.20090879 -0.48503673 -0.24251837 -0.20090879 -0.42005414 -0.42005414 -0.20090879 -0.24251837
		 -0.48503673 -0.20090879 0 -0.42005414 -0.20090879 0.24251837 -0.24251837 -0.20090879 0.42005414
		 0 -0.20090879 0.48503673 0.24251837 -0.20090879 0.42005414 0.42005414 -0.20090879 0.24251837
		 0.48503673 -0.20090879 0 0.45466331 0 -0.26249999 0.26249999 0 -0.45466331 0 0 -0.52499998
		 -0.26249999 0 -0.45466331 -0.45466331 0 -0.26249999 -0.52499998 0 0 -0.45466331 0 0.26249999
		 -0.26249999 0 0.45466331 0 0 0.52499998 0.26249999 0 0.45466331 0.45466331 0 0.26249999
		 0.52499998 0 0 0.42005414 0.20090879 -0.24251837 0.24251837 0.20090879 -0.42005414
		 0 0.20090879 -0.48503673 -0.24251837 0.20090879 -0.42005414 -0.42005414 0.20090879 -0.24251837
		 -0.48503673 0.20090879 0 -0.42005414 0.20090879 0.24251837 -0.24251837 0.20090879 0.42005414
		 0 0.20090879 0.48503673 0.24251837 0.20090879 0.42005414 0.42005414 0.20090879 0.24251837
		 0.48503673 0.20090879 0 0.3214955 0.37123105 -0.18561552 0.18561552 0.37123105 -0.3214955
		 0 0.37123105 -0.37123105 -0.18561552 0.37123105 -0.3214955 -0.3214955 0.37123105 -0.18561552
		 -0.37123105 0.37123105 0 -0.3214955 0.37123105 0.18561552 -0.18561552 0.37123105 0.3214955
		 0 0.37123105 0.37123105 0.18561552 0.37123105 0.3214955 0.3214955 0.37123105 0.18561552
		 0.37123105 0.37123105 0 0.17399213 0.48503673 -0.1004544 0.1004544 0.48503673 -0.17399213
		 0 0.48503673 -0.20090881 -0.1004544 0.48503673 -0.17399213 -0.17399213 0.48503673 -0.1004544
		 -0.20090881 0.48503673 0 -0.17399213 0.48503673 0.1004544 -0.1004544 0.48503673 0.17399213
		 0 0.48503673 0.20090881 0.1004544 0.48503673 0.17399213 0.17399213 0.48503673 0.1004544
		 0.20090881 0.48503673 0 0 -0.52499998 0 0 0.52499998 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerMiddleC_grp_parentConstraint1" -p "geo_l_FingerMiddleC_grp";
	rename -uid "F1B7B0CD-4170-CE18-0E60-1597AC67CD08";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerMiddleCW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 -5.7105931374992709 ;
	setAttr ".rst" -type "double3" 75.899999999999949 139.79999999999995 1 ;
	setAttr ".rsrr" -type "double3" 0 0 -5.7105931374992709 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerRingA_grp" -p "GEO";
	rename -uid "6110A7D1-41F1-BD00-F2E7-96916DB6A29C";
createNode transform -n "geo_l_FingerRingA" -p "geo_l_FingerRingA_grp";
	rename -uid "C9C17CB9-451B-8A4B-A945-5598BDD013B0";
	setAttr ".t" -type "double3" 1.7557049866079433 0 0 ;
createNode mesh -n "geo_l_FingerRingAShape" -p "geo_l_FingerRingA";
	rename -uid "E12710C0-4482-F7B0-532D-D8B9D9512E64";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.755705 -0.38971141 -0.22499999 -1.755705 -0.22499999 -0.38971141
		 -1.755705 0 -0.44999999 -1.755705 0.22499999 -0.38971141 -1.755705 0.38971141 -0.22499999
		 -1.755705 0.44999999 0 -1.755705 0.38971141 0.22499999 -1.755705 0.22499999 0.38971141
		 -1.755705 0 0.44999999 -1.755705 -0.22499999 0.38971141 -1.755705 -0.38971141 0.22499999
		 -1.755705 -0.44999999 0 1.755705 -0.38971141 -0.22499999 1.755705 -0.22499999 -0.38971141
		 1.755705 0 -0.44999999 1.755705 0.22499999 -0.38971141 1.755705 0.38971141 -0.22499999
		 1.755705 0.44999999 0 1.755705 0.38971141 0.22499999 1.755705 0.22499999 0.38971141
		 1.755705 0 0.44999999 1.755705 -0.22499999 0.38971141 1.755705 -0.38971141 0.22499999
		 1.755705 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerRingA_knuckle" -p "geo_l_FingerRingA_grp";
	rename -uid "9F521D8E-43A9-EB73-F506-71A331845E61";
createNode mesh -n "geo_l_FingerRingA_knuckleShape" -p "geo_l_FingerRingA_knuckle";
	rename -uid "CAA58CED-4585-ADCB-FE15-68B942FF937D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerRingA_grp_parentConstraint1" -p "geo_l_FingerRingA_grp";
	rename -uid "30F93BB1-4458-9450-AA0D-BCBD5FD64EDC";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerRingAW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -7.4544250346801174e-17 0 -1.4908850069360237e-16 ;
	setAttr ".lr" -type "double3" -0.18647967670467974 3.2651729263822591 -3.2704879231833583 ;
	setAttr ".rst" -type "double3" 69 140 -1.0000000000000009 ;
	setAttr ".rsrr" -type "double3" -0.18647967670467974 3.2651729263822591 -3.2704879231833583 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerRingB_grp" -p "GEO";
	rename -uid "B88D3FFA-4F00-F445-C349-7987D486E77B";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "geo_l_FingerRingB" -p "geo_l_FingerRingB_grp";
	rename -uid "02469663-422D-D91B-59ED-8D8C696F397C";
	setAttr ".t" -type "double3" 1.2051970793193971 0 0 ;
createNode mesh -n "geo_l_FingerRingBShape" -p "geo_l_FingerRingB";
	rename -uid "C8177C24-4884-A55E-CF99-D393DD6B5CF0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.2051971 -0.38971141 -0.22499999 -1.2051971 -0.22499999 -0.38971141
		 -1.2051971 0 -0.44999999 -1.2051971 0.22499999 -0.38971141 -1.2051971 0.38971141 -0.22499999
		 -1.2051971 0.44999999 0 -1.2051971 0.38971141 0.22499999 -1.2051971 0.22499999 0.38971141
		 -1.2051971 0 0.44999999 -1.2051971 -0.22499999 0.38971141 -1.2051971 -0.38971141 0.22499999
		 -1.2051971 -0.44999999 0 1.2051971 -0.38971141 -0.22499999 1.2051971 -0.22499999 -0.38971141
		 1.2051971 0 -0.44999999 1.2051971 0.22499999 -0.38971141 1.2051971 0.38971141 -0.22499999
		 1.2051971 0.44999999 0 1.2051971 0.38971141 0.22499999 1.2051971 0.22499999 0.38971141
		 1.2051971 0 0.44999999 1.2051971 -0.22499999 0.38971141 1.2051971 -0.38971141 0.22499999
		 1.2051971 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerRingB_knuckle" -p "geo_l_FingerRingB_grp";
	rename -uid "41EC36C7-4E49-E265-17D4-678C1C5470EC";
createNode mesh -n "geo_l_FingerRingB_knuckleShape" -p "geo_l_FingerRingB_knuckle";
	rename -uid "52DC6D96-4864-CBAD-EF0F-9FAA06EF9F54";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerRingB_grp_parentConstraint1" -p "geo_l_FingerRingB_grp";
	rename -uid "5725CBC3-41F0-1AF0-2FDA-72A4C83A9076";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerRingBW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -6.6613381477509392e-16 ;
	setAttr ".tg[0].tor" -type "double3" 2.4848083448933725e-17 3.9756933518293969e-16 
		-3.1122224519789494e-15 ;
	setAttr ".lr" -type "double3" -0.19808500003651172 2.3777118782594004 -4.7636416907262049 ;
	setAttr ".rst" -type "double3" 72.500000000000014 139.80000000000007 -1.2000000000000017 ;
	setAttr ".rsrr" -type "double3" -0.19808500003651172 2.3777118782594004 -4.7636416907262049 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerRingC_grp" -p "GEO";
	rename -uid "27BEC80B-4911-8D1C-2BB1-D48216983E09";
	setAttr ".s" -type "double3" 0.99999999999999989 0.99999999999999989 1 ;
createNode transform -n "geo_l_FingerRingC" -p "geo_l_FingerRingC_grp";
	rename -uid "67EC6031-4314-24CF-A9C9-4197F3A4CFBE";
	setAttr ".t" -type "double3" 0.95524865872714237 0 0 ;
createNode mesh -n "geo_l_FingerRingCShape" -p "geo_l_FingerRingC";
	rename -uid "7AA13386-4B81-6966-D5C7-F1B6AD65F04B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.95524865 -0.38971141 -0.22499999 -0.95524865 -0.22499999 -0.38971141
		 -0.95524865 0 -0.44999999 -0.95524865 0.22499999 -0.38971141 -0.95524865 0.38971141 -0.22499999
		 -0.95524865 0.44999999 0 -0.95524865 0.38971141 0.22499999 -0.95524865 0.22499999 0.38971141
		 -0.95524865 0 0.44999999 -0.95524865 -0.22499999 0.38971141 -0.95524865 -0.38971141 0.22499999
		 -0.95524865 -0.44999999 0 0.95524865 -0.38971141 -0.22499999 0.95524865 -0.22499999 -0.38971141
		 0.95524865 0 -0.44999999 0.95524865 0.22499999 -0.38971141 0.95524865 0.38971141 -0.22499999
		 0.95524865 0.44999999 0 0.95524865 0.38971141 0.22499999 0.95524865 0.22499999 0.38971141
		 0.95524865 0 0.44999999 0.95524865 -0.22499999 0.38971141 0.95524865 -0.38971141 0.22499999
		 0.95524865 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerRingC_knuckle" -p "geo_l_FingerRingC_grp";
	rename -uid "CBB3FA03-4238-D634-F49D-97B30A6D62AC";
createNode mesh -n "geo_l_FingerRingC_knuckleShape" -p "geo_l_FingerRingC_knuckle";
	rename -uid "1CEC49DC-4587-D885-99DE-D891E6F1AA3A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerRingC_grp_parentConstraint1" -p "geo_l_FingerRingC_grp";
	rename -uid "10075C30-412A-19A0-7DA2-AFA1C89F6E88";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerRingCW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 2.8421709430404007e-14 -2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" -3.8350531995084322e-13 9.8318896590740956e-13 
		0 ;
	setAttr ".lr" -type "double3" 3.8348228811450927e-13 -9.8362724696483881e-13 -6.0090059574943142 ;
	setAttr ".rst" -type "double3" 74.900000000000034 139.60000000000005 -1.3000000000000134 ;
	setAttr ".rsrr" -type "double3" 3.8348228811450927e-13 -9.8362724696483881e-13 -6.0090059574943142 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerPinkyB_grp" -p "GEO";
	rename -uid "04C26821-4569-16F4-B0B2-04BECDA88709";
	setAttr ".s" -type "double3" 1 0.99999999999999989 1 ;
createNode transform -n "geo_l_FingerPinkyB" -p "geo_l_FingerPinkyB_grp";
	rename -uid "60D2C0E7-40BF-EF1F-58DB-AD9E44085423";
	setAttr ".t" -type "double3" 1.4115594213493086 0 0 ;
createNode mesh -n "geo_l_FingerPinkyBShape" -p "geo_l_FingerPinkyB";
	rename -uid "12C85CD0-4A75-5D49-4E77-75886EC900E4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.41155946 -0.38971141 -0.22499999 -1.41155946 -0.22499999 -0.38971141
		 -1.41155946 0 -0.44999999 -1.41155946 0.22499999 -0.38971141 -1.41155946 0.38971141 -0.22499999
		 -1.41155946 0.44999999 0 -1.41155946 0.38971141 0.22499999 -1.41155946 0.22499999 0.38971141
		 -1.41155946 0 0.44999999 -1.41155946 -0.22499999 0.38971141 -1.41155946 -0.38971141 0.22499999
		 -1.41155946 -0.44999999 0 1.41155946 -0.38971141 -0.22499999 1.41155946 -0.22499999 -0.38971141
		 1.41155946 0 -0.44999999 1.41155946 0.22499999 -0.38971141 1.41155946 0.38971141 -0.22499999
		 1.41155946 0.44999999 0 1.41155946 0.38971141 0.22499999 1.41155946 0.22499999 0.38971141
		 1.41155946 0 0.44999999 1.41155946 -0.22499999 0.38971141 1.41155946 -0.38971141 0.22499999
		 1.41155946 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerPinkyB_knuckle" -p "geo_l_FingerPinkyB_grp";
	rename -uid "541C575B-41A8-C2B8-449D-4E98DFE82537";
createNode mesh -n "geo_l_FingerPinkyB_knuckleShape" -p "geo_l_FingerPinkyB_knuckle";
	rename -uid "DF67EF14-4DF0-5A75-4D86-FCB693F4678E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerPinkyB_grp_parentConstraint1" -p "geo_l_FingerPinkyB_grp";
	rename -uid "357F8FA2-41D9-86A8-5D8E-5A91DB338E78";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerPinkyBW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -2.8421709430404007e-14 
		0 ;
	setAttr ".tg[0].tor" -type "double3" -4.9696166897867449e-17 -7.9513867036587939e-16 
		-1.5778532990072917e-15 ;
	setAttr ".lr" -type "double3" -0.43488892753394265 6.1000795593389876 -4.085616779973682 ;
	setAttr ".rst" -type "double3" 67.499999999999986 139.89999999999995 -2.9999999999999964 ;
	setAttr ".rsrr" -type "double3" -0.43488892753394265 6.1000795593389876 -4.085616779973682 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerPinkyC_grp" -p "GEO";
	rename -uid "FE633DD1-412A-439D-3986-C2B0B6007313";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "geo_l_FingerPinkyC" -p "geo_l_FingerPinkyC_grp";
	rename -uid "42C1DED1-4661-1955-C9E0-D898956971C2";
	setAttr ".t" -type "double3" 0.95655632348545194 0 0 ;
createNode mesh -n "geo_l_FingerPinkyCShape" -p "geo_l_FingerPinkyC";
	rename -uid "9A124E53-4C32-1990-5B33-38A5EC267057";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.95655632 -0.38971141 -0.22499999 -0.95655632 -0.22499999 -0.38971141
		 -0.95655632 0 -0.44999999 -0.95655632 0.22499999 -0.38971141 -0.95655632 0.38971141 -0.22499999
		 -0.95655632 0.44999999 0 -0.95655632 0.38971141 0.22499999 -0.95655632 0.22499999 0.38971141
		 -0.95655632 0 0.44999999 -0.95655632 -0.22499999 0.38971141 -0.95655632 -0.38971141 0.22499999
		 -0.95655632 -0.44999999 0 0.95655632 -0.38971141 -0.22499999 0.95655632 -0.22499999 -0.38971141
		 0.95655632 0 -0.44999999 0.95655632 0.22499999 -0.38971141 0.95655632 0.38971141 -0.22499999
		 0.95655632 0.44999999 0 0.95655632 0.38971141 0.22499999 0.95655632 0.22499999 0.38971141
		 0.95655632 0 0.44999999 0.95655632 -0.22499999 0.38971141 0.95655632 -0.38971141 0.22499999
		 0.95655632 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerPinkyC_knuckle" -p "geo_l_FingerPinkyC_grp";
	rename -uid "CED44BE8-4565-5C6F-61BA-4395871FFD10";
createNode mesh -n "geo_l_FingerPinkyC_knuckleShape" -p "geo_l_FingerPinkyC_knuckle";
	rename -uid "D354B439-4BAF-B24A-99E8-F49F24E98C4B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerPinkyC_grp_parentConstraint1" -p "geo_l_FingerPinkyC_grp";
	rename -uid "BDE95369-4671-C8A7-68D6-6184C09056A6";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerPinkyCW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 
		-1.6653345369377348e-16 ;
	setAttr ".tg[0].tor" -type "double3" 2.981770013872047e-16 -1.590277340731758e-15 
		2.0965570410037825e-15 ;
	setAttr ".lr" -type "double3" -0.31524927890584731 2.9962638483135358 -6.0090059574923345 ;
	setAttr ".rst" -type "double3" 70.299999999999983 139.69999999999996 -3.2999999999999914 ;
	setAttr ".rsrr" -type "double3" -0.31524927890584731 2.9962638483135358 -6.0090059574923345 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_FingerPinkyD_grp" -p "GEO";
	rename -uid "2F0758DF-4D0E-5375-8D73-D185105E29C2";
	setAttr ".s" -type "double3" 1 0.99999999999999989 0.99999999999999989 ;
createNode transform -n "geo_l_FingerPinkyD" -p "geo_l_FingerPinkyD_grp";
	rename -uid "5733C1ED-46E6-5791-3990-C08170C02631";
	setAttr ".t" -type "double3" 0.75663729752107001 0 0 ;
createNode mesh -n "geo_l_FingerPinkyDShape" -p "geo_l_FingerPinkyD";
	rename -uid "7D465D05-4390-EE4A-0597-61A3496F871C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.75663728 -0.38971141 -0.22499999 -0.75663728 -0.22499999 -0.38971141
		 -0.75663728 0 -0.44999999 -0.75663728 0.22499999 -0.38971141 -0.75663728 0.38971141 -0.22499999
		 -0.75663728 0.44999999 0 -0.75663728 0.38971141 0.22499999 -0.75663728 0.22499999 0.38971141
		 -0.75663728 0 0.44999999 -0.75663728 -0.22499999 0.38971141 -0.75663728 -0.38971141 0.22499999
		 -0.75663728 -0.44999999 0 0.75663728 -0.38971141 -0.22499999 0.75663728 -0.22499999 -0.38971141
		 0.75663728 0 -0.44999999 0.75663728 0.22499999 -0.38971141 0.75663728 0.38971141 -0.22499999
		 0.75663728 0.44999999 0 0.75663728 0.38971141 0.22499999 0.75663728 0.22499999 0.38971141
		 0.75663728 0 0.44999999 0.75663728 -0.22499999 0.38971141 0.75663728 -0.38971141 0.22499999
		 0.75663728 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_l_FingerPinkyD_knuckle" -p "geo_l_FingerPinkyD_grp";
	rename -uid "D60FB9C4-406B-8706-B25A-1F815B725FB3";
createNode mesh -n "geo_l_FingerPinkyD_knuckleShape" -p "geo_l_FingerPinkyD_knuckle";
	rename -uid "FABD4CD7-4814-97DB-DB19-00B1C56B10B8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_FingerPinkyD_grp_parentConstraint1" -p "geo_l_FingerPinkyD_grp";
	rename -uid "D5C1A71A-4549-EA8B-E78C-709CB7B5C3F5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_l_FingerPinkyDW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 0 4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 6.7228974579435094e-13 -2.7034714792439894e-14 
		-1.5902773407317584e-15 ;
	setAttr ".lr" -type "double3" -6.7235621960323156e-13 2.824073727140338e-14 -7.5946433685907424 ;
	setAttr ".rst" -type "double3" 72.199999999999989 139.5 -3.4000000000000035 ;
	setAttr ".rsrr" -type "double3" -6.7235621960323156e-13 2.824073727140338e-14 -7.5946433685907424 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_palm" -p "GEO";
	rename -uid "9E5BDE69-47A3-1746-BB81-65AF7256047B";
createNode mesh -n "geo_l_palmShape" -p "geo_l_palm";
	rename -uid "6685B6F2-47E8-7115-DDDD-BA9F51B753C1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.33000001 0 0.66333336
		 0 0.33000001 0.25 0.66333336 0.25 0.33000001 0.5 0.66333336 0.5 0.33000001 0.75 0.66333336
		 0.75 0.33000001 1 0.66333336 1 1 0 1 0.25 0 0 0 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -0.64999998 3.5999999 4 -0.64999998 3.5999999
		 -4 0.64999998 3.5999999 4 0.64999998 3.5999999 -4 0.64999998 -3.5999999 4 0.64999998 -3.5999999
		 -4 -0.64999998 -3.5999999 4 -0.64999998 -3.5999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_palm_parentConstraint1" -p "geo_l_palm";
	rename -uid "61E9FD1D-4A50-C73B-1A2C-43A39DF8B9D9";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.5999999999999943 -0.40000000000000568 0.1 ;
	setAttr ".rst" -type "double3" 65.6 139.6 0.1 ;
	setAttr -k on ".w0";
createNode transform -n "geo_l_wrist" -p "GEO";
	rename -uid "B9763110-4817-7DB8-2089-A4AD85945EE1";
createNode mesh -n "geo_l_wristShape" -p "geo_l_wrist";
	rename -uid "3EAB0A10-46F0-AF82-2621-FC83A3150FD0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[21]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.97740829 0.086372852
		 0.90638852 0.0515268 0.79577255 0.023872823 0.65638828 0.0061178803 0.50187969 -5.9604645e-08
		 0.3473711 0.0061178803 0.20798695 0.023872837 0.097371072 0.051526815 0.026351303
		 0.086372867 0.0018795729 0.125 0.026351303 0.16362715 0.097371101 0.19847316 0.20798701
		 0.22612715 0.34737116 0.24388209 0.50187969 0.25 0.65638816 0.24388206 0.79577231
		 0.22612715 0.90638816 0.19847316 0.97740793 0.16362712 1.0018796921 0.125 0 0.25
		 0.050000001 0.25 0.1 0.25 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002
		 0.25 0.40000004 0.25 0.45000005 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25
		 0.6500001 0.25 0.70000011 0.25 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015
		 0.25 0.95000017 0.25 1.000000119209 0.25 0 0.75 0.050000001 0.75 0.1 0.75 0.15000001
		 0.75 0.2 0.75 0.25 0.75 0.30000001 0.75 0.35000002 0.75 0.40000004 0.75 0.45000005
		 0.75 0.50000006 0.75 0.55000007 0.75 0.60000008 0.75 0.6500001 0.75 0.70000011 0.75
		 0.75000012 0.75 0.80000013 0.75 0.85000014 0.75 0.90000015 0.75 0.95000017 0.75 1.000000119209
		 0.75 0.97740829 0.83637285 0.90638852 0.80152678 0.79577255 0.77387285 0.65638828
		 0.75611788 0.50187969 0.74999994 0.3473711 0.75611788 0.20798695 0.77387285 0.097371072
		 0.80152678 0.026351303 0.83637285 0.0018795729 0.875 0.026351303 0.91362715 0.097371101
		 0.94847316 0.20798701 0.97612715 0.34737116 0.99388206 0.50187969 1 0.65638816 0.99388206
		 0.79577231 0.97612715 0.90638816 0.94847316 0.97740793 0.91362715 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -2 -1.42658567 -0.46352577 -2 -1.21352625 -0.8816784
		 -2 -0.8816784 -1.21352625 -2 -0.46352571 -1.42658556 -2 0 -1.50000072 -2 0.46352571 -1.42658544
		 -2 0.88167822 -1.21352601 -2 1.21352589 -0.8816781 -2 1.4265852 -0.46352559 -2 1.50000036 0
		 -2 1.4265852 0.46352559 -2 1.21352577 0.88167804 -2 0.88167804 1.21352565 -2 0.46352559 1.42658496
		 -2 4.4703484e-08 1.50000024 -2 -0.46352547 1.42658496 -2 -0.88167787 1.21352553 -2 -1.21352553 0.88167799
		 -2 -1.42658484 0.4635255 -2 -1.5 0 2 -1.42658567 -0.46352577 2 -1.21352625 -0.8816784
		 2 -0.8816784 -1.21352625 2 -0.46352571 -1.42658556 2 0 -1.50000072 2 0.46352571 -1.42658544
		 2 0.88167822 -1.21352601 2 1.21352589 -0.8816781 2 1.4265852 -0.46352559 2 1.50000036 0
		 2 1.4265852 0.46352559 2 1.21352577 0.88167804 2 0.88167804 1.21352565 2 0.46352559 1.42658496
		 2 4.4703484e-08 1.50000024 2 -0.46352547 1.42658496 2 -0.88167787 1.21352553 2 -1.21352553 0.88167799
		 2 -1.42658484 0.4635255 2 -1.5 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_l_wrist_parentConstraint1" -p "geo_l_wrist";
	rename -uid "D58F121C-4FC3-F08A-7A87-85943F1DABAE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_l_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -0.20000000000000284 -0.40000000000000568 0.1 ;
	setAttr ".rst" -type "double3" 59.8 139.6 0.1 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerThumbA_grp" -p "GEO";
	rename -uid "77449BE0-4A19-E520-83F1-7AA31861167E";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "geo_r_FingerThumbA" -p "geo_r_FingerThumbA_grp";
	rename -uid "B5406DF1-4555-AEBE-6EC4-E4A9AFE00728";
	setAttr ".t" -type "double3" 1.469693845669906 0 0 ;
createNode mesh -n "geo_r_FingerThumbAShape" -p "geo_r_FingerThumbA";
	rename -uid "376F18DB-4EAA-E880-F431-5CADD4AFBBFE";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.4696939 -0.43301269 -0.25 -1.4696939 -0.25 -0.43301269
		 -1.4696939 0 -0.5 -1.4696939 0.25 -0.43301269 -1.4696939 0.43301269 -0.25 -1.4696939 0.5 0
		 -1.4696939 0.43301269 0.25 -1.4696939 0.25 0.43301269 -1.4696939 0 0.5 -1.4696939 -0.25 0.43301269
		 -1.4696939 -0.43301269 0.25 -1.4696939 -0.5 0 1.4696939 -0.43301269 -0.25 1.4696939 -0.25 -0.43301269
		 1.4696939 0 -0.5 1.4696939 0.25 -0.43301269 1.4696939 0.43301269 -0.25 1.4696939 0.5 0
		 1.4696939 0.43301269 0.25 1.4696939 0.25 0.43301269 1.4696939 0 0.5 1.4696939 -0.25 0.43301269
		 1.4696939 -0.43301269 0.25 1.4696939 -0.5 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerThumbA_knuckle" -p "geo_r_FingerThumbA_grp";
	rename -uid "011AB853-4A7C-6B26-9672-2F8F323CFF5F";
createNode mesh -n "geo_r_FingerThumbA_knuckleShape" -p "geo_r_FingerThumbA_knuckle";
	rename -uid "936198B2-4BD3-C7DD-62FD-9A8E0CB80557";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.17399213 -0.48503673 -0.1004544 0.1004544 -0.48503673 -0.17399213
		 0 -0.48503673 -0.20090881 -0.1004544 -0.48503673 -0.17399213 -0.17399213 -0.48503673 -0.1004544
		 -0.20090881 -0.48503673 0 -0.17399213 -0.48503673 0.1004544 -0.1004544 -0.48503673 0.17399213
		 0 -0.48503673 0.20090881 0.1004544 -0.48503673 0.17399213 0.17399213 -0.48503673 0.1004544
		 0.20090881 -0.48503673 0 0.3214955 -0.37123105 -0.18561552 0.18561552 -0.37123105 -0.3214955
		 0 -0.37123105 -0.37123105 -0.18561552 -0.37123105 -0.3214955 -0.3214955 -0.37123105 -0.18561552
		 -0.37123105 -0.37123105 0 -0.3214955 -0.37123105 0.18561552 -0.18561552 -0.37123105 0.3214955
		 0 -0.37123105 0.37123105 0.18561552 -0.37123105 0.3214955 0.3214955 -0.37123105 0.18561552
		 0.37123105 -0.37123105 0 0.42005414 -0.20090879 -0.24251837 0.24251837 -0.20090879 -0.42005414
		 0 -0.20090879 -0.48503673 -0.24251837 -0.20090879 -0.42005414 -0.42005414 -0.20090879 -0.24251837
		 -0.48503673 -0.20090879 0 -0.42005414 -0.20090879 0.24251837 -0.24251837 -0.20090879 0.42005414
		 0 -0.20090879 0.48503673 0.24251837 -0.20090879 0.42005414 0.42005414 -0.20090879 0.24251837
		 0.48503673 -0.20090879 0 0.45466331 0 -0.26249999 0.26249999 0 -0.45466331 0 0 -0.52499998
		 -0.26249999 0 -0.45466331 -0.45466331 0 -0.26249999 -0.52499998 0 0 -0.45466331 0 0.26249999
		 -0.26249999 0 0.45466331 0 0 0.52499998 0.26249999 0 0.45466331 0.45466331 0 0.26249999
		 0.52499998 0 0 0.42005414 0.20090879 -0.24251837 0.24251837 0.20090879 -0.42005414
		 0 0.20090879 -0.48503673 -0.24251837 0.20090879 -0.42005414 -0.42005414 0.20090879 -0.24251837
		 -0.48503673 0.20090879 0 -0.42005414 0.20090879 0.24251837 -0.24251837 0.20090879 0.42005414
		 0 0.20090879 0.48503673 0.24251837 0.20090879 0.42005414 0.42005414 0.20090879 0.24251837
		 0.48503673 0.20090879 0 0.3214955 0.37123105 -0.18561552 0.18561552 0.37123105 -0.3214955
		 0 0.37123105 -0.37123105 -0.18561552 0.37123105 -0.3214955 -0.3214955 0.37123105 -0.18561552
		 -0.37123105 0.37123105 0 -0.3214955 0.37123105 0.18561552 -0.18561552 0.37123105 0.3214955
		 0 0.37123105 0.37123105 0.18561552 0.37123105 0.3214955 0.3214955 0.37123105 0.18561552
		 0.37123105 0.37123105 0 0.17399213 0.48503673 -0.1004544 0.1004544 0.48503673 -0.17399213
		 0 0.48503673 -0.20090881 -0.1004544 0.48503673 -0.17399213 -0.17399213 0.48503673 -0.1004544
		 -0.20090881 0.48503673 0 -0.17399213 0.48503673 0.1004544 -0.1004544 0.48503673 0.17399213
		 0 0.48503673 0.20090881 0.1004544 0.48503673 0.17399213 0.17399213 0.48503673 0.1004544
		 0.20090881 0.48503673 0 0 -0.52499998 0 0 0.52499998 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerThumbA_grp_parentConstraint1" -p "geo_r_FingerThumbA_grp";
	rename -uid "C3CF4F68-40CF-977C-98EB-8FB31ACB7F9E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerThumbAW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.6645352591003757e-15 0 7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" -1.5902773407317584e-15 -3.1805546814635168e-15 
		-1.5902773407317584e-15 ;
	setAttr ".lr" -type "double3" -15.225157010678094 -137.12401133336425 21.801409486352171 ;
	setAttr ".rst" -type "double3" -61.999999999999993 139 2.9999999999999964 ;
	setAttr ".rsrr" -type "double3" -15.225157010678094 -137.12401133336425 21.801409486352171 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerThumbB_grp" -p "GEO";
	rename -uid "C32F2A21-44BF-4FC6-DDA0-67A1E3325300";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "geo_r_FingerThumbB" -p "geo_r_FingerThumbB_grp";
	rename -uid "598CC0E1-443E-1ED8-BA85-3F9E964ECD62";
	setAttr ".t" -type "double3" 1.1789826122551639 0 0 ;
createNode mesh -n "geo_r_FingerThumbBShape" -p "geo_r_FingerThumbB";
	rename -uid "12AE2C0D-44B2-5A5D-1060-17AB8DC5CE15";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.17898262 -0.43301269 -0.25 -1.17898262 -0.25 -0.43301269
		 -1.17898262 0 -0.5 -1.17898262 0.25 -0.43301269 -1.17898262 0.43301269 -0.25 -1.17898262 0.5 0
		 -1.17898262 0.43301269 0.25 -1.17898262 0.25 0.43301269 -1.17898262 0 0.5 -1.17898262 -0.25 0.43301269
		 -1.17898262 -0.43301269 0.25 -1.17898262 -0.5 0 1.17898262 -0.43301269 -0.25 1.17898262 -0.25 -0.43301269
		 1.17898262 0 -0.5 1.17898262 0.25 -0.43301269 1.17898262 0.43301269 -0.25 1.17898262 0.5 0
		 1.17898262 0.43301269 0.25 1.17898262 0.25 0.43301269 1.17898262 0 0.5 1.17898262 -0.25 0.43301269
		 1.17898262 -0.43301269 0.25 1.17898262 -0.5 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerThumbB_knuckle" -p "geo_r_FingerThumbB_grp";
	rename -uid "F79D1A49-4A2C-9E40-6128-C0BCA5C368EC";
createNode mesh -n "geo_r_FingerThumbB_knuckleShape" -p "geo_r_FingerThumbB_knuckle";
	rename -uid "0CD34000-4D62-C13A-B402-D19B67858835";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.17399213 -0.48503673 -0.1004544 0.1004544 -0.48503673 -0.17399213
		 0 -0.48503673 -0.20090881 -0.1004544 -0.48503673 -0.17399213 -0.17399213 -0.48503673 -0.1004544
		 -0.20090881 -0.48503673 0 -0.17399213 -0.48503673 0.1004544 -0.1004544 -0.48503673 0.17399213
		 0 -0.48503673 0.20090881 0.1004544 -0.48503673 0.17399213 0.17399213 -0.48503673 0.1004544
		 0.20090881 -0.48503673 0 0.3214955 -0.37123105 -0.18561552 0.18561552 -0.37123105 -0.3214955
		 0 -0.37123105 -0.37123105 -0.18561552 -0.37123105 -0.3214955 -0.3214955 -0.37123105 -0.18561552
		 -0.37123105 -0.37123105 0 -0.3214955 -0.37123105 0.18561552 -0.18561552 -0.37123105 0.3214955
		 0 -0.37123105 0.37123105 0.18561552 -0.37123105 0.3214955 0.3214955 -0.37123105 0.18561552
		 0.37123105 -0.37123105 0 0.42005414 -0.20090879 -0.24251837 0.24251837 -0.20090879 -0.42005414
		 0 -0.20090879 -0.48503673 -0.24251837 -0.20090879 -0.42005414 -0.42005414 -0.20090879 -0.24251837
		 -0.48503673 -0.20090879 0 -0.42005414 -0.20090879 0.24251837 -0.24251837 -0.20090879 0.42005414
		 0 -0.20090879 0.48503673 0.24251837 -0.20090879 0.42005414 0.42005414 -0.20090879 0.24251837
		 0.48503673 -0.20090879 0 0.45466331 0 -0.26249999 0.26249999 0 -0.45466331 0 0 -0.52499998
		 -0.26249999 0 -0.45466331 -0.45466331 0 -0.26249999 -0.52499998 0 0 -0.45466331 0 0.26249999
		 -0.26249999 0 0.45466331 0 0 0.52499998 0.26249999 0 0.45466331 0.45466331 0 0.26249999
		 0.52499998 0 0 0.42005414 0.20090879 -0.24251837 0.24251837 0.20090879 -0.42005414
		 0 0.20090879 -0.48503673 -0.24251837 0.20090879 -0.42005414 -0.42005414 0.20090879 -0.24251837
		 -0.48503673 0.20090879 0 -0.42005414 0.20090879 0.24251837 -0.24251837 0.20090879 0.42005414
		 0 0.20090879 0.48503673 0.24251837 0.20090879 0.42005414 0.42005414 0.20090879 0.24251837
		 0.48503673 0.20090879 0 0.3214955 0.37123105 -0.18561552 0.18561552 0.37123105 -0.3214955
		 0 0.37123105 -0.37123105 -0.18561552 0.37123105 -0.3214955 -0.3214955 0.37123105 -0.18561552
		 -0.37123105 0.37123105 0 -0.3214955 0.37123105 0.18561552 -0.18561552 0.37123105 0.3214955
		 0 0.37123105 0.37123105 0.18561552 0.37123105 0.3214955 0.3214955 0.37123105 0.18561552
		 0.37123105 0.37123105 0 0.17399213 0.48503673 -0.1004544 0.1004544 0.48503673 -0.17399213
		 0 0.48503673 -0.20090881 -0.1004544 0.48503673 -0.17399213 -0.17399213 0.48503673 -0.1004544
		 -0.20090881 0.48503673 0 -0.17399213 0.48503673 0.1004544 -0.1004544 0.48503673 0.17399213
		 0 0.48503673 0.20090881 0.1004544 0.48503673 0.17399213 0.17399213 0.48503673 0.1004544
		 0.20090881 0.48503673 0 0 -0.52499998 0 0 0.52499998 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerThumbB_grp_parentConstraint1" -p "geo_r_FingerThumbB_grp";
	rename -uid "3445221F-4671-EA38-E7A0-0799740DDD6D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerThumbBW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.5527136788005009e-15 0 7.1054273576010019e-15 ;
	setAttr ".tg[0].tor" -type "double3" 7.9513867036587899e-16 -6.3611093629270335e-15 
		2.3854160110976376e-15 ;
	setAttr ".lr" -type "double3" -11.194785218593092 -143.5776901964658 18.434948822921395 ;
	setAttr ".rst" -type "double3" -63.999999999999993 138.20000000000005 5.0000000000000018 ;
	setAttr ".rsrr" -type "double3" -11.194785218593092 -143.5776901964658 18.434948822921395 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerThumbC_grp" -p "GEO";
	rename -uid "D17A2CAA-45EB-21C3-89E2-2FA030B5C3C4";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999978 ;
createNode transform -n "geo_r_FingerThumbC" -p "geo_r_FingerThumbC_grp";
	rename -uid "CF8431FA-4D14-C7DD-0F54-88A42F9DA33C";
	setAttr ".t" -type "double3" 0.92330926563096472 0 0 ;
createNode mesh -n "geo_r_FingerThumbCShape" -p "geo_r_FingerThumbC";
	rename -uid "0279995F-4E70-428E-C5DD-21911C04ABE6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.92330927 -0.43301269 -0.25 -0.92330927 -0.25 -0.43301269
		 -0.92330927 0 -0.5 -0.92330927 0.25 -0.43301269 -0.92330927 0.43301269 -0.25 -0.92330927 0.5 0
		 -0.92330927 0.43301269 0.25 -0.92330927 0.25 0.43301269 -0.92330927 0 0.5 -0.92330927 -0.25 0.43301269
		 -0.92330927 -0.43301269 0.25 -0.92330927 -0.5 0 0.92330927 -0.43301269 -0.25 0.92330927 -0.25 -0.43301269
		 0.92330927 0 -0.5 0.92330927 0.25 -0.43301269 0.92330927 0.43301269 -0.25 0.92330927 0.5 0
		 0.92330927 0.43301269 0.25 0.92330927 0.25 0.43301269 0.92330927 0 0.5 0.92330927 -0.25 0.43301269
		 0.92330927 -0.43301269 0.25 0.92330927 -0.5 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerThumbC_knuckle" -p "geo_r_FingerThumbC_grp";
	rename -uid "D240B3D0-4A32-1A8D-1659-9FA465037302";
createNode mesh -n "geo_r_FingerThumbC_knuckleShape" -p "geo_r_FingerThumbC_knuckle";
	rename -uid "AF7E79D3-4C23-F1FD-DFF8-D9BE042E806B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.17399213 -0.48503673 -0.1004544 0.1004544 -0.48503673 -0.17399213
		 0 -0.48503673 -0.20090881 -0.1004544 -0.48503673 -0.17399213 -0.17399213 -0.48503673 -0.1004544
		 -0.20090881 -0.48503673 0 -0.17399213 -0.48503673 0.1004544 -0.1004544 -0.48503673 0.17399213
		 0 -0.48503673 0.20090881 0.1004544 -0.48503673 0.17399213 0.17399213 -0.48503673 0.1004544
		 0.20090881 -0.48503673 0 0.3214955 -0.37123105 -0.18561552 0.18561552 -0.37123105 -0.3214955
		 0 -0.37123105 -0.37123105 -0.18561552 -0.37123105 -0.3214955 -0.3214955 -0.37123105 -0.18561552
		 -0.37123105 -0.37123105 0 -0.3214955 -0.37123105 0.18561552 -0.18561552 -0.37123105 0.3214955
		 0 -0.37123105 0.37123105 0.18561552 -0.37123105 0.3214955 0.3214955 -0.37123105 0.18561552
		 0.37123105 -0.37123105 0 0.42005414 -0.20090879 -0.24251837 0.24251837 -0.20090879 -0.42005414
		 0 -0.20090879 -0.48503673 -0.24251837 -0.20090879 -0.42005414 -0.42005414 -0.20090879 -0.24251837
		 -0.48503673 -0.20090879 0 -0.42005414 -0.20090879 0.24251837 -0.24251837 -0.20090879 0.42005414
		 0 -0.20090879 0.48503673 0.24251837 -0.20090879 0.42005414 0.42005414 -0.20090879 0.24251837
		 0.48503673 -0.20090879 0 0.45466331 0 -0.26249999 0.26249999 0 -0.45466331 0 0 -0.52499998
		 -0.26249999 0 -0.45466331 -0.45466331 0 -0.26249999 -0.52499998 0 0 -0.45466331 0 0.26249999
		 -0.26249999 0 0.45466331 0 0 0.52499998 0.26249999 0 0.45466331 0.45466331 0 0.26249999
		 0.52499998 0 0 0.42005414 0.20090879 -0.24251837 0.24251837 0.20090879 -0.42005414
		 0 0.20090879 -0.48503673 -0.24251837 0.20090879 -0.42005414 -0.42005414 0.20090879 -0.24251837
		 -0.48503673 0.20090879 0 -0.42005414 0.20090879 0.24251837 -0.24251837 0.20090879 0.42005414
		 0 0.20090879 0.48503673 0.24251837 0.20090879 0.42005414 0.42005414 0.20090879 0.24251837
		 0.48503673 0.20090879 0 0.3214955 0.37123105 -0.18561552 0.18561552 0.37123105 -0.3214955
		 0 0.37123105 -0.37123105 -0.18561552 0.37123105 -0.3214955 -0.3214955 0.37123105 -0.18561552
		 -0.37123105 0.37123105 0 -0.3214955 0.37123105 0.18561552 -0.18561552 0.37123105 0.3214955
		 0 0.37123105 0.37123105 0.18561552 0.37123105 0.3214955 0.3214955 0.37123105 0.18561552
		 0.37123105 0.37123105 0 0.17399213 0.48503673 -0.1004544 0.1004544 0.48503673 -0.17399213
		 0 0.48503673 -0.20090881 -0.1004544 0.48503673 -0.17399213 -0.17399213 0.48503673 -0.1004544
		 -0.20090881 0.48503673 0 -0.17399213 0.48503673 0.1004544 -0.1004544 0.48503673 0.17399213
		 0 0.48503673 0.20090881 0.1004544 0.48503673 0.17399213 0.17399213 0.48503673 0.1004544
		 0.20090881 0.48503673 0 0 -0.52499998 0 0 0.52499998 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerThumbC_grp_parentConstraint1" -p "geo_r_FingerThumbC_grp";
	rename -uid "5F9E4829-40C4-C54C-15C5-50B2B668B2A5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerThumbCW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -2.8421709430404007e-14 
		1.4210854715202004e-14 ;
	setAttr ".tg[0].tor" -type "double3" -2.3854160110976376e-15 -9.5416640443905503e-15 
		6.3611093629270335e-15 ;
	setAttr ".lr" -type "double3" -8.2171692059963579 -147.21212195970307 14.931417178136854 ;
	setAttr ".rst" -type "double3" -65.799999999999983 137.60000000000005 6.3999999999999924 ;
	setAttr ".rsrr" -type "double3" -8.2171692059963579 -147.21212195970307 14.931417178136854 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerIndexA_grp" -p "GEO";
	rename -uid "EEA20B6D-442D-A7A5-8263-37AFC2CC4E3A";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "geo_r_FingerIndexA" -p "geo_r_FingerIndexA_grp";
	rename -uid "8A5E8062-4607-76BD-9075-AFBCCF5659FF";
	setAttr ".t" -type "double3" 1.7592612085759174 0 0 ;
createNode mesh -n "geo_r_FingerIndexAShape" -p "geo_r_FingerIndexA";
	rename -uid "C7CA693B-4622-B50C-26C5-4DB719BF80BB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.75926125 -0.38971141 -0.22499999 -1.75926125 -0.22499999 -0.38971141
		 -1.75926125 0 -0.44999999 -1.75926125 0.22499999 -0.38971141 -1.75926125 0.38971141 -0.22499999
		 -1.75926125 0.44999999 0 -1.75926125 0.38971141 0.22499999 -1.75926125 0.22499999 0.38971141
		 -1.75926125 0 0.44999999 -1.75926125 -0.22499999 0.38971141 -1.75926125 -0.38971141 0.22499999
		 -1.75926125 -0.44999999 0 1.75926125 -0.38971141 -0.22499999 1.75926125 -0.22499999 -0.38971141
		 1.75926125 0 -0.44999999 1.75926125 0.22499999 -0.38971141 1.75926125 0.38971141 -0.22499999
		 1.75926125 0.44999999 0 1.75926125 0.38971141 0.22499999 1.75926125 0.22499999 0.38971141
		 1.75926125 0 0.44999999 1.75926125 -0.22499999 0.38971141 1.75926125 -0.38971141 0.22499999
		 1.75926125 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerIndexA_knuckle" -p "geo_r_FingerIndexA_grp";
	rename -uid "01DFCFEE-4A88-4E8E-920C-F4BC44CA0DF8";
createNode mesh -n "geo_r_FingerIndexA_knuckleShape" -p "geo_r_FingerIndexA_knuckle";
	rename -uid "B754C335-4FB4-DBAC-3A1D-AC985A403EA7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerIndexA_grp_parentConstraint1" -p "geo_r_FingerIndexA_grp";
	rename -uid "02FB2530-4BDF-EA7C-A5E1-35A1AA5A82C5";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerIndexAW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" 4.9696166897867449e-17 2.385416011097638e-15 
		-4.5347752294304053e-16 ;
	setAttr ".lr" -type "double3" -0.27915285872491846 -175.10884779014938 3.2704879231833663 ;
	setAttr ".rst" -type "double3" -69 140 3.0000000000000004 ;
	setAttr ".rsrr" -type "double3" -0.27915285872491846 -175.10884779014938 3.2704879231833663 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerIndexB_grp" -p "GEO";
	rename -uid "59F0B7B5-4823-26CE-1428-48B82963F1F3";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "geo_r_FingerIndexB" -p "geo_r_FingerIndexB_grp";
	rename -uid "5DBBF1D4-4F66-72C0-86DC-84AB50569990";
	setAttr ".t" -type "double3" 1.1554220008291323 0 0 ;
createNode mesh -n "geo_r_FingerIndexBShape" -p "geo_r_FingerIndexB";
	rename -uid "77EBA732-4D55-E2AE-9441-199EFD22F17B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.15542197 -0.38971141 -0.22499999 -1.15542197 -0.22499999 -0.38971141
		 -1.15542197 0 -0.44999999 -1.15542197 0.22499999 -0.38971141 -1.15542197 0.38971141 -0.22499999
		 -1.15542197 0.44999999 0 -1.15542197 0.38971141 0.22499999 -1.15542197 0.22499999 0.38971141
		 -1.15542197 0 0.44999999 -1.15542197 -0.22499999 0.38971141 -1.15542197 -0.38971141 0.22499999
		 -1.15542197 -0.44999999 0 1.15542197 -0.38971141 -0.22499999 1.15542197 -0.22499999 -0.38971141
		 1.15542197 0 -0.44999999 1.15542197 0.22499999 -0.38971141 1.15542197 0.38971141 -0.22499999
		 1.15542197 0.44999999 0 1.15542197 0.38971141 0.22499999 1.15542197 0.22499999 0.38971141
		 1.15542197 0 0.44999999 1.15542197 -0.22499999 0.38971141 1.15542197 -0.38971141 0.22499999
		 1.15542197 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerIndexB_knuckle" -p "geo_r_FingerIndexB_grp";
	rename -uid "610D453F-4516-AC69-514F-F783D2ADE619";
createNode mesh -n "geo_r_FingerIndexB_knuckleShape" -p "geo_r_FingerIndexB_knuckle";
	rename -uid "CE7C652D-4568-5B67-0776-5782D0F92D86";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerIndexB_grp_parentConstraint1" -p "geo_r_FingerIndexB_grp";
	rename -uid "938D7399-46F3-272F-4D66-9FB4963C16A2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerIndexBW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 0 -4.9960036108132044e-16 ;
	setAttr ".tg[0].tor" -type "double3" -1.1653751137549922e-14 3.9756933518293969e-16 
		4.2909534105877434e-15 ;
	setAttr ".lr" -type "double3" -0.21560166663008534 -177.51979462325298 4.9697407281107564 ;
	setAttr ".rst" -type "double3" -72.5 139.8 3.3000000000000007 ;
	setAttr ".rsrr" -type "double3" -0.21560166663008534 -177.51979462325298 4.9697407281107564 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerIndexC_grp" -p "GEO";
	rename -uid "C10F32BF-41D3-2D1A-003E-EB85F516B164";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000004 ;
createNode transform -n "geo_r_FingerIndexC" -p "geo_r_FingerIndexC_grp";
	rename -uid "85E3E0DE-4335-239C-D7FF-929AFE01A089";
	setAttr ".t" -type "double3" 0.90553851381373962 0 0 ;
createNode mesh -n "geo_r_FingerIndexCShape" -p "geo_r_FingerIndexC";
	rename -uid "D6CF7C7E-4A86-4EB2-7073-EEB636CE9C2A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.9055385 -0.38971141 -0.22499999 -0.9055385 -0.22499999 -0.38971141
		 -0.9055385 0 -0.44999999 -0.9055385 0.22499999 -0.38971141 -0.9055385 0.38971141 -0.22499999
		 -0.9055385 0.44999999 0 -0.9055385 0.38971141 0.22499999 -0.9055385 0.22499999 0.38971141
		 -0.9055385 0 0.44999999 -0.9055385 -0.22499999 0.38971141 -0.9055385 -0.38971141 0.22499999
		 -0.9055385 -0.44999999 0 0.9055385 -0.38971141 -0.22499999 0.9055385 -0.22499999 -0.38971141
		 0.9055385 0 -0.44999999 0.9055385 0.22499999 -0.38971141 0.9055385 0.38971141 -0.22499999
		 0.9055385 0.44999999 0 0.9055385 0.38971141 0.22499999 0.9055385 0.22499999 0.38971141
		 0.9055385 0 0.44999999 0.9055385 -0.22499999 0.38971141 0.9055385 -0.38971141 0.22499999
		 0.9055385 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerIndexC_knuckle" -p "geo_r_FingerIndexC_grp";
	rename -uid "E86DF522-4445-AF55-DE0D-CF9C24988E54";
createNode mesh -n "geo_r_FingerIndexC_knuckleShape" -p "geo_r_FingerIndexC_knuckle";
	rename -uid "553634AD-43ED-8C34-A3AB-958E338CC404";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerIndexC_grp_parentConstraint1" -p "geo_r_FingerIndexC_grp";
	rename -uid "62F477BE-46CF-50F3-D3F5-99B61C54C463";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerIndexCW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 4.4408920985006262e-16 ;
	setAttr ".tg[0].tor" -type "double3" -7.4951758915363678e-13 -1.05948333151813e-14 
		-1.5902773407343297e-15 ;
	setAttr ".lr" -type "double3" 7.3788868609953592e-13 -179.9999999999998 6.3401917459089807 ;
	setAttr ".rst" -type "double3" -74.8 139.60000000000005 3.4 ;
	setAttr ".rsrr" -type "double3" 7.3788868609953592e-13 -179.9999999999998 6.3401917459089807 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerMiddleA_grp" -p "GEO";
	rename -uid "9B2BFD2C-4733-E5CD-09EB-6C8106001401";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "geo_r_FingerMiddleA" -p "geo_r_FingerMiddleA_grp";
	rename -uid "366D661F-4D0D-5878-35B3-7BA0EE3705C0";
	setAttr ".t" -type "double3" 1.9026297590440437 0 0 ;
createNode mesh -n "geo_r_FingerMiddleAShape" -p "geo_r_FingerMiddleA";
	rename -uid "8339FC9D-41B9-E5E6-0901-E698B8E32CB3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.90262973 -0.43301269 -0.25 -1.90262973 -0.25 -0.43301269
		 -1.90262973 0 -0.5 -1.90262973 0.25 -0.43301269 -1.90262973 0.43301269 -0.25 -1.90262973 0.5 0
		 -1.90262973 0.43301269 0.25 -1.90262973 0.25 0.43301269 -1.90262973 0 0.5 -1.90262973 -0.25 0.43301269
		 -1.90262973 -0.43301269 0.25 -1.90262973 -0.5 0 1.90262973 -0.43301269 -0.25 1.90262973 -0.25 -0.43301269
		 1.90262973 0 -0.5 1.90262973 0.25 -0.43301269 1.90262973 0.43301269 -0.25 1.90262973 0.5 0
		 1.90262973 0.43301269 0.25 1.90262973 0.25 0.43301269 1.90262973 0 0.5 1.90262973 -0.25 0.43301269
		 1.90262973 -0.43301269 0.25 1.90262973 -0.5 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerMiddleA_knuckle" -p "geo_r_FingerMiddleA_grp";
	rename -uid "D77BAD52-41FB-0B1B-94A9-A89474B4E6BF";
createNode mesh -n "geo_r_FingerMiddleA_knuckleShape" -p "geo_r_FingerMiddleA_knuckle";
	rename -uid "E6D8A25D-4F77-22CB-CC12-40B5BD1E44C4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.17399213 -0.48503673 -0.1004544 0.1004544 -0.48503673 -0.17399213
		 0 -0.48503673 -0.20090881 -0.1004544 -0.48503673 -0.17399213 -0.17399213 -0.48503673 -0.1004544
		 -0.20090881 -0.48503673 0 -0.17399213 -0.48503673 0.1004544 -0.1004544 -0.48503673 0.17399213
		 0 -0.48503673 0.20090881 0.1004544 -0.48503673 0.17399213 0.17399213 -0.48503673 0.1004544
		 0.20090881 -0.48503673 0 0.3214955 -0.37123105 -0.18561552 0.18561552 -0.37123105 -0.3214955
		 0 -0.37123105 -0.37123105 -0.18561552 -0.37123105 -0.3214955 -0.3214955 -0.37123105 -0.18561552
		 -0.37123105 -0.37123105 0 -0.3214955 -0.37123105 0.18561552 -0.18561552 -0.37123105 0.3214955
		 0 -0.37123105 0.37123105 0.18561552 -0.37123105 0.3214955 0.3214955 -0.37123105 0.18561552
		 0.37123105 -0.37123105 0 0.42005414 -0.20090879 -0.24251837 0.24251837 -0.20090879 -0.42005414
		 0 -0.20090879 -0.48503673 -0.24251837 -0.20090879 -0.42005414 -0.42005414 -0.20090879 -0.24251837
		 -0.48503673 -0.20090879 0 -0.42005414 -0.20090879 0.24251837 -0.24251837 -0.20090879 0.42005414
		 0 -0.20090879 0.48503673 0.24251837 -0.20090879 0.42005414 0.42005414 -0.20090879 0.24251837
		 0.48503673 -0.20090879 0 0.45466331 0 -0.26249999 0.26249999 0 -0.45466331 0 0 -0.52499998
		 -0.26249999 0 -0.45466331 -0.45466331 0 -0.26249999 -0.52499998 0 0 -0.45466331 0 0.26249999
		 -0.26249999 0 0.45466331 0 0 0.52499998 0.26249999 0 0.45466331 0.45466331 0 0.26249999
		 0.52499998 0 0 0.42005414 0.20090879 -0.24251837 0.24251837 0.20090879 -0.42005414
		 0 0.20090879 -0.48503673 -0.24251837 0.20090879 -0.42005414 -0.42005414 0.20090879 -0.24251837
		 -0.48503673 0.20090879 0 -0.42005414 0.20090879 0.24251837 -0.24251837 0.20090879 0.42005414
		 0 0.20090879 0.48503673 0.24251837 0.20090879 0.42005414 0.42005414 0.20090879 0.24251837
		 0.48503673 0.20090879 0 0.3214955 0.37123105 -0.18561552 0.18561552 0.37123105 -0.3214955
		 0 0.37123105 -0.37123105 -0.18561552 0.37123105 -0.3214955 -0.3214955 0.37123105 -0.18561552
		 -0.37123105 0.37123105 0 -0.3214955 0.37123105 0.18561552 -0.18561552 0.37123105 0.3214955
		 0 0.37123105 0.37123105 0.18561552 0.37123105 0.3214955 0.3214955 0.37123105 0.18561552
		 0.37123105 0.37123105 0 0.17399213 0.48503673 -0.1004544 0.1004544 0.48503673 -0.17399213
		 0 0.48503673 -0.20090881 -0.1004544 0.48503673 -0.17399213 -0.17399213 0.48503673 -0.1004544
		 -0.20090881 0.48503673 0 -0.17399213 0.48503673 0.1004544 -0.1004544 0.48503673 0.17399213
		 0 0.48503673 0.20090881 0.1004544 0.48503673 0.17399213 0.17399213 0.48503673 0.1004544
		 0.20090881 0.48503673 0 0 -0.52499998 0 0 0.52499998 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerMiddleA_grp_parentConstraint1" -p "geo_r_FingerMiddleA_grp";
	rename -uid "6C33894A-4413-C360-5AF0-72A9287032BE";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerMiddleAW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -2.8421709430404007e-14 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 0 5.9242447492918327e-24 -7.9513867036587939e-16 ;
	setAttr ".lr" -type "double3" -8.5377364625159387e-07 180 3.0127875041831751 ;
	setAttr ".rst" -type "double3" -69.499999999999986 140.19999999999993 1 ;
	setAttr ".rsrr" -type "double3" -8.5377364625159387e-07 180 3.0127875041831751 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerMiddleB_grp" -p "GEO";
	rename -uid "83ABD01C-475C-525F-240B-CB9A28BF40FE";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "geo_r_FingerMiddleB" -p "geo_r_FingerMiddleB_grp";
	rename -uid "874039BA-4488-CD40-B558-AAB9F5BA4E20";
	setAttr ".t" -type "double3" 1.3038404810405202 0 0 ;
createNode mesh -n "geo_r_FingerMiddleBShape" -p "geo_r_FingerMiddleB";
	rename -uid "967C0EC3-4312-3BE0-3465-A78E9AC54842";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.30384052 -0.43301269 -0.25 -1.30384052 -0.25 -0.43301269
		 -1.30384052 0 -0.5 -1.30384052 0.25 -0.43301269 -1.30384052 0.43301269 -0.25 -1.30384052 0.5 0
		 -1.30384052 0.43301269 0.25 -1.30384052 0.25 0.43301269 -1.30384052 0 0.5 -1.30384052 -0.25 0.43301269
		 -1.30384052 -0.43301269 0.25 -1.30384052 -0.5 0 1.30384052 -0.43301269 -0.25 1.30384052 -0.25 -0.43301269
		 1.30384052 0 -0.5 1.30384052 0.25 -0.43301269 1.30384052 0.43301269 -0.25 1.30384052 0.5 0
		 1.30384052 0.43301269 0.25 1.30384052 0.25 0.43301269 1.30384052 0 0.5 1.30384052 -0.25 0.43301269
		 1.30384052 -0.43301269 0.25 1.30384052 -0.5 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerMiddleB_knuckle" -p "geo_r_FingerMiddleB_grp";
	rename -uid "FC8DE331-4EC1-325D-7C04-40AF771174E5";
createNode mesh -n "geo_r_FingerMiddleB_knuckleShape" -p "geo_r_FingerMiddleB_knuckle";
	rename -uid "743D69D4-446A-02BE-65C4-A88DFDA6323E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.17399213 -0.48503673 -0.1004544 0.1004544 -0.48503673 -0.17399213
		 0 -0.48503673 -0.20090881 -0.1004544 -0.48503673 -0.17399213 -0.17399213 -0.48503673 -0.1004544
		 -0.20090881 -0.48503673 0 -0.17399213 -0.48503673 0.1004544 -0.1004544 -0.48503673 0.17399213
		 0 -0.48503673 0.20090881 0.1004544 -0.48503673 0.17399213 0.17399213 -0.48503673 0.1004544
		 0.20090881 -0.48503673 0 0.3214955 -0.37123105 -0.18561552 0.18561552 -0.37123105 -0.3214955
		 0 -0.37123105 -0.37123105 -0.18561552 -0.37123105 -0.3214955 -0.3214955 -0.37123105 -0.18561552
		 -0.37123105 -0.37123105 0 -0.3214955 -0.37123105 0.18561552 -0.18561552 -0.37123105 0.3214955
		 0 -0.37123105 0.37123105 0.18561552 -0.37123105 0.3214955 0.3214955 -0.37123105 0.18561552
		 0.37123105 -0.37123105 0 0.42005414 -0.20090879 -0.24251837 0.24251837 -0.20090879 -0.42005414
		 0 -0.20090879 -0.48503673 -0.24251837 -0.20090879 -0.42005414 -0.42005414 -0.20090879 -0.24251837
		 -0.48503673 -0.20090879 0 -0.42005414 -0.20090879 0.24251837 -0.24251837 -0.20090879 0.42005414
		 0 -0.20090879 0.48503673 0.24251837 -0.20090879 0.42005414 0.42005414 -0.20090879 0.24251837
		 0.48503673 -0.20090879 0 0.45466331 0 -0.26249999 0.26249999 0 -0.45466331 0 0 -0.52499998
		 -0.26249999 0 -0.45466331 -0.45466331 0 -0.26249999 -0.52499998 0 0 -0.45466331 0 0.26249999
		 -0.26249999 0 0.45466331 0 0 0.52499998 0.26249999 0 0.45466331 0.45466331 0 0.26249999
		 0.52499998 0 0 0.42005414 0.20090879 -0.24251837 0.24251837 0.20090879 -0.42005414
		 0 0.20090879 -0.48503673 -0.24251837 0.20090879 -0.42005414 -0.42005414 0.20090879 -0.24251837
		 -0.48503673 0.20090879 0 -0.42005414 0.20090879 0.24251837 -0.24251837 0.20090879 0.42005414
		 0 0.20090879 0.48503673 0.24251837 0.20090879 0.42005414 0.42005414 0.20090879 0.24251837
		 0.48503673 0.20090879 0 0.3214955 0.37123105 -0.18561552 0.18561552 0.37123105 -0.3214955
		 0 0.37123105 -0.37123105 -0.18561552 0.37123105 -0.3214955 -0.3214955 0.37123105 -0.18561552
		 -0.37123105 0.37123105 0 -0.3214955 0.37123105 0.18561552 -0.18561552 0.37123105 0.3214955
		 0 0.37123105 0.37123105 0.18561552 0.37123105 0.3214955 0.3214955 0.37123105 0.18561552
		 0.37123105 0.37123105 0 0.17399213 0.48503673 -0.1004544 0.1004544 0.48503673 -0.17399213
		 0 0.48503673 -0.20090881 -0.1004544 0.48503673 -0.17399213 -0.17399213 0.48503673 -0.1004544
		 -0.20090881 0.48503673 0 -0.17399213 0.48503673 0.1004544 -0.1004544 0.48503673 0.17399213
		 0 0.48503673 0.20090881 0.1004544 0.48503673 0.17399213 0.17399213 0.48503673 0.1004544
		 0.20090881 0.48503673 0 0 -0.52499998 0 0 0.52499998 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerMiddleB_grp_parentConstraint1" -p "geo_r_FingerMiddleB_grp";
	rename -uid "9DB173AC-4919-20C0-C9E9-ACA4FEF8FAD4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerMiddleBW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 3.5158125260096569e-15 2.0649771633539043e-08 
		-7.9513867036587919e-16 ;
	setAttr ".lr" -type "double3" -8.5352388365356786e-07 179.99999997935024 4.3987053549956769 ;
	setAttr ".rst" -type "double3" -73.3 139.99999999999991 0.99999999999999989 ;
	setAttr ".rsrr" -type "double3" -8.5352388365356786e-07 179.99999997935024 4.3987053549956769 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerMiddleC_grp" -p "GEO";
	rename -uid "ACBDE4AD-4644-2700-665C-5AB2189EADEA";
	setAttr ".s" -type "double3" 0.99999999999999978 1 1 ;
createNode transform -n "geo_r_FingerMiddleC" -p "geo_r_FingerMiddleC_grp";
	rename -uid "39BABEAD-464B-3911-3CF5-C88BCEF4AE04";
	setAttr ".t" -type "double3" 1.0049875621120885 0 0 ;
createNode mesh -n "geo_r_FingerMiddleCShape" -p "geo_r_FingerMiddleC";
	rename -uid "230E1A9C-46BD-B07A-C31E-FABE87DCB1E3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.0049875975 -0.43301269 -0.25 -1.0049875975 -0.25 -0.43301269
		 -1.0049875975 0 -0.5 -1.0049875975 0.25 -0.43301269 -1.0049875975 0.43301269 -0.25
		 -1.0049875975 0.5 0 -1.0049875975 0.43301269 0.25 -1.0049875975 0.25 0.43301269 -1.0049875975 0 0.5
		 -1.0049875975 -0.25 0.43301269 -1.0049875975 -0.43301269 0.25 -1.0049875975 -0.5 0
		 1.0049875975 -0.43301269 -0.25 1.0049875975 -0.25 -0.43301269 1.0049875975 0 -0.5
		 1.0049875975 0.25 -0.43301269 1.0049875975 0.43301269 -0.25 1.0049875975 0.5 0 1.0049875975 0.43301269 0.25
		 1.0049875975 0.25 0.43301269 1.0049875975 0 0.5 1.0049875975 -0.25 0.43301269 1.0049875975 -0.43301269 0.25
		 1.0049875975 -0.5 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerMiddleC_knuckle" -p "geo_r_FingerMiddleC_grp";
	rename -uid "2508E8E7-465B-6CB5-60B3-DDACB3319825";
createNode mesh -n "geo_r_FingerMiddleC_knuckleShape" -p "geo_r_FingerMiddleC_knuckle";
	rename -uid "2A269686-4F48-C196-6CE5-E8ACD5469F3C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.17399213 -0.48503673 -0.1004544 0.1004544 -0.48503673 -0.17399213
		 0 -0.48503673 -0.20090881 -0.1004544 -0.48503673 -0.17399213 -0.17399213 -0.48503673 -0.1004544
		 -0.20090881 -0.48503673 0 -0.17399213 -0.48503673 0.1004544 -0.1004544 -0.48503673 0.17399213
		 0 -0.48503673 0.20090881 0.1004544 -0.48503673 0.17399213 0.17399213 -0.48503673 0.1004544
		 0.20090881 -0.48503673 0 0.3214955 -0.37123105 -0.18561552 0.18561552 -0.37123105 -0.3214955
		 0 -0.37123105 -0.37123105 -0.18561552 -0.37123105 -0.3214955 -0.3214955 -0.37123105 -0.18561552
		 -0.37123105 -0.37123105 0 -0.3214955 -0.37123105 0.18561552 -0.18561552 -0.37123105 0.3214955
		 0 -0.37123105 0.37123105 0.18561552 -0.37123105 0.3214955 0.3214955 -0.37123105 0.18561552
		 0.37123105 -0.37123105 0 0.42005414 -0.20090879 -0.24251837 0.24251837 -0.20090879 -0.42005414
		 0 -0.20090879 -0.48503673 -0.24251837 -0.20090879 -0.42005414 -0.42005414 -0.20090879 -0.24251837
		 -0.48503673 -0.20090879 0 -0.42005414 -0.20090879 0.24251837 -0.24251837 -0.20090879 0.42005414
		 0 -0.20090879 0.48503673 0.24251837 -0.20090879 0.42005414 0.42005414 -0.20090879 0.24251837
		 0.48503673 -0.20090879 0 0.45466331 0 -0.26249999 0.26249999 0 -0.45466331 0 0 -0.52499998
		 -0.26249999 0 -0.45466331 -0.45466331 0 -0.26249999 -0.52499998 0 0 -0.45466331 0 0.26249999
		 -0.26249999 0 0.45466331 0 0 0.52499998 0.26249999 0 0.45466331 0.45466331 0 0.26249999
		 0.52499998 0 0 0.42005414 0.20090879 -0.24251837 0.24251837 0.20090879 -0.42005414
		 0 0.20090879 -0.48503673 -0.24251837 0.20090879 -0.42005414 -0.42005414 0.20090879 -0.24251837
		 -0.48503673 0.20090879 0 -0.42005414 0.20090879 0.24251837 -0.24251837 0.20090879 0.42005414
		 0 0.20090879 0.48503673 0.24251837 0.20090879 0.42005414 0.42005414 0.20090879 0.24251837
		 0.48503673 0.20090879 0 0.3214955 0.37123105 -0.18561552 0.18561552 0.37123105 -0.3214955
		 0 0.37123105 -0.37123105 -0.18561552 0.37123105 -0.3214955 -0.3214955 0.37123105 -0.18561552
		 -0.37123105 0.37123105 0 -0.3214955 0.37123105 0.18561552 -0.18561552 0.37123105 0.3214955
		 0 0.37123105 0.37123105 0.18561552 0.37123105 0.3214955 0.3214955 0.37123105 0.18561552
		 0.37123105 0.37123105 0 0.17399213 0.48503673 -0.1004544 0.1004544 0.48503673 -0.17399213
		 0 0.48503673 -0.20090881 -0.1004544 0.48503673 -0.17399213 -0.17399213 0.48503673 -0.1004544
		 -0.20090881 0.48503673 0 -0.17399213 0.48503673 0.1004544 -0.1004544 0.48503673 0.17399213
		 0 0.48503673 0.20090881 0.1004544 0.48503673 0.17399213 0.17399213 0.48503673 0.1004544
		 0.20090881 0.48503673 0 0 -0.52499998 0 0 0.52499998 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerMiddleC_grp_parentConstraint1" -p "geo_r_FingerMiddleC_grp";
	rename -uid "46F0D749-4AC0-C61F-3D8D-E69E2EEFA7D8";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerMiddleCW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 7.1054273576010019e-15 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 4.7276542878896666e-10 1.9541225164385287e-08 
		-7.9513867036587919e-15 ;
	setAttr ".lr" -type "double3" -8.5330017615949244e-07 179.99999998045877 5.710593137497928 ;
	setAttr ".rst" -type "double3" -75.9 139.7999999999999 1.000000002036288 ;
	setAttr ".rsrr" -type "double3" -8.5330017615949244e-07 179.99999998045877 5.710593137497928 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerRingA_grp" -p "GEO";
	rename -uid "53DF5A64-48E7-4299-F5AA-C2A0A6A6B02F";
createNode transform -n "geo_r_FingerRingA" -p "geo_r_FingerRingA_grp";
	rename -uid "C505F8D8-47FA-4AA8-22A9-31A652856ED2";
	setAttr ".t" -type "double3" 1.7557049866079437 0 0 ;
createNode mesh -n "geo_r_FingerRingAShape" -p "geo_r_FingerRingA";
	rename -uid "A2E6C6C9-4736-0A8A-60C9-3A9F6DC3E83D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.755705 -0.38971141 -0.22499999 -1.755705 -0.22499999 -0.38971141
		 -1.755705 0 -0.44999999 -1.755705 0.22499999 -0.38971141 -1.755705 0.38971141 -0.22499999
		 -1.755705 0.44999999 0 -1.755705 0.38971141 0.22499999 -1.755705 0.22499999 0.38971141
		 -1.755705 0 0.44999999 -1.755705 -0.22499999 0.38971141 -1.755705 -0.38971141 0.22499999
		 -1.755705 -0.44999999 0 1.755705 -0.38971141 -0.22499999 1.755705 -0.22499999 -0.38971141
		 1.755705 0 -0.44999999 1.755705 0.22499999 -0.38971141 1.755705 0.38971141 -0.22499999
		 1.755705 0.44999999 0 1.755705 0.38971141 0.22499999 1.755705 0.22499999 0.38971141
		 1.755705 0 0.44999999 1.755705 -0.22499999 0.38971141 1.755705 -0.38971141 0.22499999
		 1.755705 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerRingA_knuckle" -p "geo_r_FingerRingA_grp";
	rename -uid "1A7E22FF-4A87-A2ED-4FF6-A8893A32788C";
createNode mesh -n "geo_r_FingerRingA_knuckleShape" -p "geo_r_FingerRingA_knuckle";
	rename -uid "C9380FA2-405C-A006-7B92-ACB64E2F4722";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerRingA_grp_parentConstraint1" -p "geo_r_FingerRingA_grp";
	rename -uid "44607CDC-44A8-CDDB-80D9-E68440768D06";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerRingAW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" -2.4848083448933725e-17 0 2.4382181884266212e-16 ;
	setAttr ".lr" -type "double3" 0.18647967670825838 176.73482707361774 3.2704879231833921 ;
	setAttr ".rst" -type "double3" -69 139.99999999999997 -0.99999999999999944 ;
	setAttr ".rsrr" -type "double3" 0.18647967670825838 176.73482707361774 3.2704879231833921 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerRingB_grp" -p "GEO";
	rename -uid "94331445-4F38-97BC-3067-A9BDE84CC21A";
	setAttr ".s" -type "double3" 1 1 0.99999999999999989 ;
createNode transform -n "geo_r_FingerRingB" -p "geo_r_FingerRingB_grp";
	rename -uid "655CF340-4D5E-6654-0558-74A78616B3CD";
	setAttr ".t" -type "double3" 1.2051970793193971 0 0 ;
createNode mesh -n "geo_r_FingerRingBShape" -p "geo_r_FingerRingB";
	rename -uid "268B295C-4F69-2892-06D1-98B328BEF1CD";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.2051971 -0.38971141 -0.22499999 -1.2051971 -0.22499999 -0.38971141
		 -1.2051971 0 -0.44999999 -1.2051971 0.22499999 -0.38971141 -1.2051971 0.38971141 -0.22499999
		 -1.2051971 0.44999999 0 -1.2051971 0.38971141 0.22499999 -1.2051971 0.22499999 0.38971141
		 -1.2051971 0 0.44999999 -1.2051971 -0.22499999 0.38971141 -1.2051971 -0.38971141 0.22499999
		 -1.2051971 -0.44999999 0 1.2051971 -0.38971141 -0.22499999 1.2051971 -0.22499999 -0.38971141
		 1.2051971 0 -0.44999999 1.2051971 0.22499999 -0.38971141 1.2051971 0.38971141 -0.22499999
		 1.2051971 0.44999999 0 1.2051971 0.38971141 0.22499999 1.2051971 0.22499999 0.38971141
		 1.2051971 0 0.44999999 1.2051971 -0.22499999 0.38971141 1.2051971 -0.38971141 0.22499999
		 1.2051971 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerRingB_knuckle" -p "geo_r_FingerRingB_grp";
	rename -uid "4D5B0FC7-48F2-78C8-FD69-499320D41EC5";
createNode mesh -n "geo_r_FingerRingB_knuckleShape" -p "geo_r_FingerRingB_knuckle";
	rename -uid "04A5A9F8-499A-1D61-5E04-149ABFD65DA5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerRingB_grp_parentConstraint1" -p "geo_r_FingerRingB_grp";
	rename -uid "BBB02792-41CF-BA71-48F2-54AF1F248293";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerRingBW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 -2.8421709430404007e-14 
		2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" 4.1496299359719314e-15 -8.7465253740246719e-15 
		1.2858883184823203e-15 ;
	setAttr ".lr" -type "double3" 0.19808500003416996 177.62228812174087 4.7636416907255681 ;
	setAttr ".rst" -type "double3" -72.500000000000014 139.79999999999998 -1.1999999999999995 ;
	setAttr ".rsrr" -type "double3" 0.19808500003416996 177.62228812174087 4.7636416907255681 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerRingC_grp" -p "GEO";
	rename -uid "A8DE1FC1-4AB5-9F9F-F584-428243184F36";
	setAttr ".s" -type "double3" 0.99999999999999989 1 0.99999999999999989 ;
createNode transform -n "geo_r_FingerRingC" -p "geo_r_FingerRingC_grp";
	rename -uid "44155D7C-4036-3C46-9F65-B2AA1E502B59";
	setAttr ".t" -type "double3" 0.95524865872714249 0 0 ;
createNode mesh -n "geo_r_FingerRingCShape" -p "geo_r_FingerRingC";
	rename -uid "57A8B4DE-4C96-599F-25FC-ECB844C453D7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.95524865 -0.38971141 -0.22499999 -0.95524865 -0.22499999 -0.38971141
		 -0.95524865 0 -0.44999999 -0.95524865 0.22499999 -0.38971141 -0.95524865 0.38971141 -0.22499999
		 -0.95524865 0.44999999 0 -0.95524865 0.38971141 0.22499999 -0.95524865 0.22499999 0.38971141
		 -0.95524865 0 0.44999999 -0.95524865 -0.22499999 0.38971141 -0.95524865 -0.38971141 0.22499999
		 -0.95524865 -0.44999999 0 0.95524865 -0.38971141 -0.22499999 0.95524865 -0.22499999 -0.38971141
		 0.95524865 0 -0.44999999 0.95524865 0.22499999 -0.38971141 0.95524865 0.38971141 -0.22499999
		 0.95524865 0.44999999 0 0.95524865 0.38971141 0.22499999 0.95524865 0.22499999 0.38971141
		 0.95524865 0 0.44999999 0.95524865 -0.22499999 0.38971141 0.95524865 -0.38971141 0.22499999
		 0.95524865 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerRingC_knuckle" -p "geo_r_FingerRingC_grp";
	rename -uid "E0365D8B-4B97-B387-C55C-65969E6DA9B8";
createNode mesh -n "geo_r_FingerRingC_knuckleShape" -p "geo_r_FingerRingC_knuckle";
	rename -uid "5440DA7D-45B7-5BEF-89F3-D5857D40F67E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerRingC_grp_parentConstraint1" -p "geo_r_FingerRingC_grp";
	rename -uid "801EA391-44C6-7E1F-AEEF-8DBF96AE8354";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerRingCW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.4210854715202004e-14 -2.8421709430404007e-14 
		-2.2204460492503131e-16 ;
	setAttr ".tg[0].tor" -type "double3" -5.2827025412433099e-13 -8.6069866392667132e-15 
		3.1805546814572469e-15 ;
	setAttr ".lr" -type "double3" 5.0888874903416268e-13 -179.99999999999932 6.0090059574935877 ;
	setAttr ".rst" -type "double3" -74.9 139.59999999999994 -1.2999999999999992 ;
	setAttr ".rsrr" -type "double3" 5.0888874903416268e-13 -179.99999999999932 6.0090059574935877 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerPinkyB_grp" -p "GEO";
	rename -uid "8DD2A6A2-4528-A12F-61A3-A08DFC69D140";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "geo_r_FingerPinkyB" -p "geo_r_FingerPinkyB_grp";
	rename -uid "86C1AE84-4A67-02EB-DF61-DF8BAC25B986";
	setAttr ".t" -type "double3" 1.4115594213493088 0 0 ;
createNode mesh -n "geo_r_FingerPinkyBShape" -p "geo_r_FingerPinkyB";
	rename -uid "6E4983B9-4686-BCEB-59C3-37864E234B4B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.41155946 -0.38971141 -0.22499999 -1.41155946 -0.22499999 -0.38971141
		 -1.41155946 0 -0.44999999 -1.41155946 0.22499999 -0.38971141 -1.41155946 0.38971141 -0.22499999
		 -1.41155946 0.44999999 0 -1.41155946 0.38971141 0.22499999 -1.41155946 0.22499999 0.38971141
		 -1.41155946 0 0.44999999 -1.41155946 -0.22499999 0.38971141 -1.41155946 -0.38971141 0.22499999
		 -1.41155946 -0.44999999 0 1.41155946 -0.38971141 -0.22499999 1.41155946 -0.22499999 -0.38971141
		 1.41155946 0 -0.44999999 1.41155946 0.22499999 -0.38971141 1.41155946 0.38971141 -0.22499999
		 1.41155946 0.44999999 0 1.41155946 0.38971141 0.22499999 1.41155946 0.22499999 0.38971141
		 1.41155946 0 0.44999999 1.41155946 -0.22499999 0.38971141 1.41155946 -0.38971141 0.22499999
		 1.41155946 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerPinkyB_knuckle" -p "geo_r_FingerPinkyB_grp";
	rename -uid "3C242696-4DA1-BC83-5B70-D28005A26112";
createNode mesh -n "geo_r_FingerPinkyB_knuckleShape" -p "geo_r_FingerPinkyB_knuckle";
	rename -uid "D5CADFAE-45C2-9CF0-E3DA-1CA20397D7A0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerPinkyB_grp_parentConstraint1" -p "geo_r_FingerPinkyB_grp";
	rename -uid "56DD86AF-474E-94D6-BC76-C2AB7B044DF2";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerPinkyBW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 1.7763568394002505e-15 ;
	setAttr ".tg[0].tor" -type "double3" -2.2363275104040343e-15 -1.1131941385122306e-14 
		1.671654814027016e-14 ;
	setAttr ".lr" -type "double3" 0.43488892754273262 173.89992044066096 4.0856167799743641 ;
	setAttr ".rst" -type "double3" -67.500000000000014 139.90000000000006 -3.0000000000000062 ;
	setAttr ".rsrr" -type "double3" 0.43488892754273262 173.89992044066096 4.0856167799743641 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerPinkyC_grp" -p "GEO";
	rename -uid "119367E0-4D0A-8AF1-18B2-6CAD3B9AA6B5";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "geo_r_FingerPinkyC" -p "geo_r_FingerPinkyC_grp";
	rename -uid "DC900CDA-4CFE-19DF-2196-08BEFDF09A40";
	setAttr ".t" -type "double3" 0.95655632348545161 0 0 ;
createNode mesh -n "geo_r_FingerPinkyCShape" -p "geo_r_FingerPinkyC";
	rename -uid "F9F385EC-4377-BD88-FE55-53BFB92F8864";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.95655632 -0.38971141 -0.22499999 -0.95655632 -0.22499999 -0.38971141
		 -0.95655632 0 -0.44999999 -0.95655632 0.22499999 -0.38971141 -0.95655632 0.38971141 -0.22499999
		 -0.95655632 0.44999999 0 -0.95655632 0.38971141 0.22499999 -0.95655632 0.22499999 0.38971141
		 -0.95655632 0 0.44999999 -0.95655632 -0.22499999 0.38971141 -0.95655632 -0.38971141 0.22499999
		 -0.95655632 -0.44999999 0 0.95655632 -0.38971141 -0.22499999 0.95655632 -0.22499999 -0.38971141
		 0.95655632 0 -0.44999999 0.95655632 0.22499999 -0.38971141 0.95655632 0.38971141 -0.22499999
		 0.95655632 0.44999999 0 0.95655632 0.38971141 0.22499999 0.95655632 0.22499999 0.38971141
		 0.95655632 0 0.44999999 0.95655632 -0.22499999 0.38971141 0.95655632 -0.38971141 0.22499999
		 0.95655632 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerPinkyC_knuckle" -p "geo_r_FingerPinkyC_grp";
	rename -uid "94F288C4-45B2-19FE-41BC-6887A00E3B1D";
createNode mesh -n "geo_r_FingerPinkyC_knuckleShape" -p "geo_r_FingerPinkyC_knuckle";
	rename -uid "678DFF14-4554-07EB-EDE3-24AFB6FA9424";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerPinkyC_grp_parentConstraint1" -p "geo_r_FingerPinkyC_grp";
	rename -uid "6FD0FA4D-435F-5DED-AD34-C49645D9140D";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerPinkyCW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -2.8421709430404007e-14 1.1102230246251565e-16 ;
	setAttr ".tg[0].tor" -type "double3" -1.3914926731402892e-14 -3.5781240166464568e-15 
		-1.0634979716143635e-14 ;
	setAttr ".lr" -type "double3" 0.31524927890670562 177.00373615168752 6.0090059574946562 ;
	setAttr ".rst" -type "double3" -70.3 139.70000000000005 -3.3000000000000043 ;
	setAttr ".rsrr" -type "double3" 0.31524927890670562 177.00373615168752 6.0090059574946562 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_FingerPinkyD_grp" -p "GEO";
	rename -uid "FD12A271-406E-0646-011E-9B8BF11D2ABF";
	setAttr ".s" -type "double3" 1.0000000000000002 1 1.0000000000000002 ;
createNode transform -n "geo_r_FingerPinkyD" -p "geo_r_FingerPinkyD_grp";
	rename -uid "BF9876D5-499B-8650-F6EB-8A8B44BCF6C2";
	setAttr ".t" -type "double3" 0.75663729752107012 0 0 ;
createNode mesh -n "geo_r_FingerPinkyDShape" -p "geo_r_FingerPinkyD";
	rename -uid "E061EA58-4B78-349C-7C80-C2A037F55EE5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[12]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:11]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:11]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:23]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[12:23]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:11]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[13]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[12:23]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 50 ".uvst[0].uvsp[0:49]" -type "float2" 0.93489242 0.0625
		 0.75187969 0.016746819 0.50187969 0 0.25187969 0.016746819 0.068866998 0.0625 0.0018796921
		 0.125 0.068866998 0.1875 0.25187969 0.23325318 0.50187969 0.25 0.75187969 0.23325318
		 0.93489242 0.1875 1.0018796921 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25
		 0.25 0.33333334 0.25 0.41666669 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994
		 0.25 0.83333325 0.25 0.91666657 0.25 0.99999988 0.25 0 0.75 0.083333336 0.75 0.16666667
		 0.75 0.25 0.75 0.33333334 0.75 0.41666669 0.75 0.5 0.75 0.58333331 0.75 0.66666663
		 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657 0.75 0.99999988 0.75 0.93489242 0.8125
		 0.75187969 0.76674682 0.50187969 0.75 0.25187969 0.76674682 0.068866998 0.8125 0.0018796921
		 0.875 0.068866998 0.9375 0.25187969 0.98325318 0.50187969 1 0.75187969 0.98325318
		 0.93489242 0.9375 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -0.75663728 -0.38971141 -0.22499999 -0.75663728 -0.22499999 -0.38971141
		 -0.75663728 0 -0.44999999 -0.75663728 0.22499999 -0.38971141 -0.75663728 0.38971141 -0.22499999
		 -0.75663728 0.44999999 0 -0.75663728 0.38971141 0.22499999 -0.75663728 0.22499999 0.38971141
		 -0.75663728 0 0.44999999 -0.75663728 -0.22499999 0.38971141 -0.75663728 -0.38971141 0.22499999
		 -0.75663728 -0.44999999 0 0.75663728 -0.38971141 -0.22499999 0.75663728 -0.22499999 -0.38971141
		 0.75663728 0 -0.44999999 0.75663728 0.22499999 -0.38971141 0.75663728 0.38971141 -0.22499999
		 0.75663728 0.44999999 0 0.75663728 0.38971141 0.22499999 0.75663728 0.22499999 0.38971141
		 0.75663728 0 0.44999999 0.75663728 -0.22499999 0.38971141 0.75663728 -0.38971141 0.22499999
		 0.75663728 -0.44999999 0;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 23 12 0 0 12 0 1 13 0 2 14 0 3 15 0 4 16 0
		 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0;
	setAttr -s 14 -ch 72 ".fc[0:13]" -type "polyFaces" 
		f 4 0 25 -13 -25
		mu 0 4 12 13 26 25
		f 4 1 26 -14 -26
		mu 0 4 13 14 27 26
		f 4 2 27 -15 -27
		mu 0 4 14 15 28 27
		f 4 3 28 -16 -28
		mu 0 4 15 16 29 28
		f 4 4 29 -17 -29
		mu 0 4 16 17 30 29
		f 4 5 30 -18 -30
		mu 0 4 17 18 31 30
		f 4 6 31 -19 -31
		mu 0 4 18 19 32 31
		f 4 7 32 -20 -32
		mu 0 4 19 20 33 32
		f 4 8 33 -21 -33
		mu 0 4 20 21 34 33
		f 4 9 34 -22 -34
		mu 0 4 21 22 35 34
		f 4 10 35 -23 -35
		mu 0 4 22 23 36 35
		f 4 11 24 -24 -36
		mu 0 4 23 24 37 36
		f 12 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 12 0 11 10 9 8 7 6 5 4 3 2 1
		f 12 12 13 14 15 16 17 18 19 20 21 22 23
		mu 0 12 48 47 46 45 44 43 42 41 40 39 38 49;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode transform -n "geo_r_FingerPinkyD_knuckle" -p "geo_r_FingerPinkyD_grp";
	rename -uid "A403F9FD-441F-B196-28AE-368FDE42D8BF";
createNode mesh -n "geo_r_FingerPinkyD_knuckleShape" -p "geo_r_FingerPinkyD_knuckle";
	rename -uid "4C83DB73-4FDF-A343-12DC-61A6F96BFC59";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 115 ".uvst[0].uvsp[0:114]" -type "float2" 0 0.125 0.083333336
		 0.125 0.16666667 0.125 0.25 0.125 0.33333334 0.125 0.41666669 0.125 0.5 0.125 0.58333331
		 0.125 0.66666663 0.125 0.74999994 0.125 0.83333325 0.125 0.91666657 0.125 0.99999988
		 0.125 0 0.25 0.083333336 0.25 0.16666667 0.25 0.25 0.25 0.33333334 0.25 0.41666669
		 0.25 0.5 0.25 0.58333331 0.25 0.66666663 0.25 0.74999994 0.25 0.83333325 0.25 0.91666657
		 0.25 0.99999988 0.25 0 0.375 0.083333336 0.375 0.16666667 0.375 0.25 0.375 0.33333334
		 0.375 0.41666669 0.375 0.5 0.375 0.58333331 0.375 0.66666663 0.375 0.74999994 0.375
		 0.83333325 0.375 0.91666657 0.375 0.99999988 0.375 0 0.5 0.083333336 0.5 0.16666667
		 0.5 0.25 0.5 0.33333334 0.5 0.41666669 0.5 0.5 0.5 0.58333331 0.5 0.66666663 0.5
		 0.74999994 0.5 0.83333325 0.5 0.91666657 0.5 0.99999988 0.5 0 0.625 0.083333336 0.625
		 0.16666667 0.625 0.25 0.625 0.33333334 0.625 0.41666669 0.625 0.5 0.625 0.58333331
		 0.625 0.66666663 0.625 0.74999994 0.625 0.83333325 0.625 0.91666657 0.625 0.99999988
		 0.625 0 0.75 0.083333336 0.75 0.16666667 0.75 0.25 0.75 0.33333334 0.75 0.41666669
		 0.75 0.5 0.75 0.58333331 0.75 0.66666663 0.75 0.74999994 0.75 0.83333325 0.75 0.91666657
		 0.75 0.99999988 0.75 0 0.875 0.083333336 0.875 0.16666667 0.875 0.25 0.875 0.33333334
		 0.875 0.41666669 0.875 0.5 0.875 0.58333331 0.875 0.66666663 0.875 0.74999994 0.875
		 0.83333325 0.875 0.91666657 0.875 0.99999988 0.875 0.041666668 0 0.125 0 0.20833334
		 0 0.29166666 0 0.375 0 0.45833334 0 0.54166669 0 0.62500006 0 0.70833337 0 0.79166669
		 0 0.87500006 0 0.95833337 0 0.041666668 1 0.125 1 0.20833334 1 0.29166666 1 0.375
		 1 0.45833334 1 0.54166669 1 0.62500006 1 0.70833337 1 0.79166669 1 0.87500006 1 0.95833337
		 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 86 ".vt[0:85]"  0.15659292 -0.43653306 -0.090408966 0.090408966 -0.43653306 -0.15659292
		 0 -0.43653306 -0.18081793 -0.090408966 -0.43653306 -0.15659292 -0.15659292 -0.43653306 -0.090408966
		 -0.18081793 -0.43653306 0 -0.15659292 -0.43653306 0.090408966 -0.090408966 -0.43653306 0.15659292
		 0 -0.43653306 0.18081793 0.090408966 -0.43653306 0.15659292 0.15659292 -0.43653306 0.090408966
		 0.18081793 -0.43653306 0 0.28934595 -0.33410794 -0.16705397 0.16705397 -0.33410794 -0.28934595
		 0 -0.33410794 -0.33410794 -0.16705397 -0.33410794 -0.28934595 -0.28934595 -0.33410794 -0.16705397
		 -0.33410794 -0.33410794 0 -0.28934595 -0.33410794 0.16705397 -0.16705397 -0.33410794 0.28934595
		 0 -0.33410794 0.33410794 0.16705397 -0.33410794 0.28934595 0.28934595 -0.33410794 0.16705397
		 0.33410794 -0.33410794 0 0.37804872 -0.18081792 -0.21826653 0.21826653 -0.18081792 -0.37804872
		 0 -0.18081792 -0.43653306 -0.21826653 -0.18081792 -0.37804872 -0.37804872 -0.18081792 -0.21826653
		 -0.43653306 -0.18081792 0 -0.37804872 -0.18081792 0.21826653 -0.21826653 -0.18081792 0.37804872
		 0 -0.18081792 0.43653306 0.21826653 -0.18081792 0.37804872 0.37804872 -0.18081792 0.21826653
		 0.43653306 -0.18081792 0 0.409197 0 -0.23625 0.23625 0 -0.409197 0 0 -0.4725 -0.23625 0 -0.409197
		 -0.409197 0 -0.23625 -0.4725 0 0 -0.409197 0 0.23625 -0.23625 0 0.409197 0 0 0.4725
		 0.23625 0 0.409197 0.409197 0 0.23625 0.4725 0 0 0.37804872 0.18081792 -0.21826653
		 0.21826653 0.18081792 -0.37804872 0 0.18081792 -0.43653306 -0.21826653 0.18081792 -0.37804872
		 -0.37804872 0.18081792 -0.21826653 -0.43653306 0.18081792 0 -0.37804872 0.18081792 0.21826653
		 -0.21826653 0.18081792 0.37804872 0 0.18081792 0.43653306 0.21826653 0.18081792 0.37804872
		 0.37804872 0.18081792 0.21826653 0.43653306 0.18081792 0 0.28934595 0.33410794 -0.16705397
		 0.16705397 0.33410794 -0.28934595 0 0.33410794 -0.33410794 -0.16705397 0.33410794 -0.28934595
		 -0.28934595 0.33410794 -0.16705397 -0.33410794 0.33410794 0 -0.28934595 0.33410794 0.16705397
		 -0.16705397 0.33410794 0.28934595 0 0.33410794 0.33410794 0.16705397 0.33410794 0.28934595
		 0.28934595 0.33410794 0.16705397 0.33410794 0.33410794 0 0.15659292 0.43653306 -0.090408966
		 0.090408966 0.43653306 -0.15659292 0 0.43653306 -0.18081793 -0.090408966 0.43653306 -0.15659292
		 -0.15659292 0.43653306 -0.090408966 -0.18081793 0.43653306 0 -0.15659292 0.43653306 0.090408966
		 -0.090408966 0.43653306 0.15659292 0 0.43653306 0.18081793 0.090408966 0.43653306 0.15659292
		 0.15659292 0.43653306 0.090408966 0.18081793 0.43653306 0 0 -0.4725 0 0 0.4725 0;
	setAttr -s 180 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 0 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 20 0
		 20 21 0 21 22 0 22 23 0 23 12 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 24 0 36 37 0 37 38 0 38 39 0 39 40 0 40 41 0 41 42 0
		 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 36 0 48 49 0 49 50 0 50 51 0 51 52 0 52 53 0
		 53 54 0 54 55 0 55 56 0 56 57 0 57 58 0 58 59 0 59 48 0 60 61 0 61 62 0 62 63 0 63 64 0
		 64 65 0 65 66 0 66 67 0 67 68 0 68 69 0 69 70 0 70 71 0 71 60 0 72 73 0 73 74 0 74 75 0
		 75 76 0 76 77 0 77 78 0 78 79 0 79 80 0 80 81 0 81 82 0 82 83 0 83 72 0 0 12 0 1 13 0
		 2 14 0 3 15 0 4 16 0 5 17 0 6 18 0 7 19 0 8 20 0 9 21 0 10 22 0 11 23 0 12 24 0 13 25 0
		 14 26 0 15 27 0 16 28 0 17 29 0 18 30 0 19 31 0 20 32 0 21 33 0 22 34 0 23 35 0 24 36 0
		 25 37 0 26 38 0 27 39 0 28 40 0 29 41 0 30 42 0 31 43 0 32 44 0 33 45 0 34 46 0 35 47 0
		 36 48 0 37 49 0 38 50 0 39 51 0 40 52 0 41 53 0 42 54 0 43 55 0 44 56 0 45 57 0 46 58 0
		 47 59 0 48 60 0 49 61 0 50 62 0 51 63 0 52 64 0 53 65 0 54 66 0 55 67 0 56 68 0 57 69 0
		 58 70 0 59 71 0 60 72 0 61 73 0 62 74 0 63 75 0 64 76 0 65 77 0 66 78 0 67 79 0 68 80 0
		 69 81 0 70 82 0 71 83 0 84 0 0 84 1 0 84 2 0 84 3 0 84 4 0 84 5 0 84 6 0 84 7 0 84 8 0
		 84 9 0;
	setAttr ".ed[166:179]" 84 10 0 84 11 0 72 85 0 73 85 0 74 85 0 75 85 0 76 85 0
		 77 85 0 78 85 0 79 85 0 80 85 0 81 85 0 82 85 0 83 85 0;
	setAttr -s 96 -ch 360 ".fc[0:95]" -type "polyFaces" 
		f 4 0 85 -13 -85
		mu 0 4 0 1 14 13
		f 4 1 86 -14 -86
		mu 0 4 1 2 15 14
		f 4 2 87 -15 -87
		mu 0 4 2 3 16 15
		f 4 3 88 -16 -88
		mu 0 4 3 4 17 16
		f 4 4 89 -17 -89
		mu 0 4 4 5 18 17
		f 4 5 90 -18 -90
		mu 0 4 5 6 19 18
		f 4 6 91 -19 -91
		mu 0 4 6 7 20 19
		f 4 7 92 -20 -92
		mu 0 4 7 8 21 20
		f 4 8 93 -21 -93
		mu 0 4 8 9 22 21
		f 4 9 94 -22 -94
		mu 0 4 9 10 23 22
		f 4 10 95 -23 -95
		mu 0 4 10 11 24 23
		f 4 11 84 -24 -96
		mu 0 4 11 12 25 24
		f 4 12 97 -25 -97
		mu 0 4 13 14 27 26
		f 4 13 98 -26 -98
		mu 0 4 14 15 28 27
		f 4 14 99 -27 -99
		mu 0 4 15 16 29 28
		f 4 15 100 -28 -100
		mu 0 4 16 17 30 29
		f 4 16 101 -29 -101
		mu 0 4 17 18 31 30
		f 4 17 102 -30 -102
		mu 0 4 18 19 32 31
		f 4 18 103 -31 -103
		mu 0 4 19 20 33 32
		f 4 19 104 -32 -104
		mu 0 4 20 21 34 33
		f 4 20 105 -33 -105
		mu 0 4 21 22 35 34
		f 4 21 106 -34 -106
		mu 0 4 22 23 36 35
		f 4 22 107 -35 -107
		mu 0 4 23 24 37 36
		f 4 23 96 -36 -108
		mu 0 4 24 25 38 37
		f 4 24 109 -37 -109
		mu 0 4 26 27 40 39
		f 4 25 110 -38 -110
		mu 0 4 27 28 41 40
		f 4 26 111 -39 -111
		mu 0 4 28 29 42 41
		f 4 27 112 -40 -112
		mu 0 4 29 30 43 42
		f 4 28 113 -41 -113
		mu 0 4 30 31 44 43
		f 4 29 114 -42 -114
		mu 0 4 31 32 45 44
		f 4 30 115 -43 -115
		mu 0 4 32 33 46 45
		f 4 31 116 -44 -116
		mu 0 4 33 34 47 46
		f 4 32 117 -45 -117
		mu 0 4 34 35 48 47
		f 4 33 118 -46 -118
		mu 0 4 35 36 49 48
		f 4 34 119 -47 -119
		mu 0 4 36 37 50 49
		f 4 35 108 -48 -120
		mu 0 4 37 38 51 50
		f 4 36 121 -49 -121
		mu 0 4 39 40 53 52
		f 4 37 122 -50 -122
		mu 0 4 40 41 54 53
		f 4 38 123 -51 -123
		mu 0 4 41 42 55 54
		f 4 39 124 -52 -124
		mu 0 4 42 43 56 55
		f 4 40 125 -53 -125
		mu 0 4 43 44 57 56
		f 4 41 126 -54 -126
		mu 0 4 44 45 58 57
		f 4 42 127 -55 -127
		mu 0 4 45 46 59 58
		f 4 43 128 -56 -128
		mu 0 4 46 47 60 59
		f 4 44 129 -57 -129
		mu 0 4 47 48 61 60
		f 4 45 130 -58 -130
		mu 0 4 48 49 62 61
		f 4 46 131 -59 -131
		mu 0 4 49 50 63 62
		f 4 47 120 -60 -132
		mu 0 4 50 51 64 63
		f 4 48 133 -61 -133
		mu 0 4 52 53 66 65
		f 4 49 134 -62 -134
		mu 0 4 53 54 67 66
		f 4 50 135 -63 -135
		mu 0 4 54 55 68 67
		f 4 51 136 -64 -136
		mu 0 4 55 56 69 68
		f 4 52 137 -65 -137
		mu 0 4 56 57 70 69
		f 4 53 138 -66 -138
		mu 0 4 57 58 71 70
		f 4 54 139 -67 -139
		mu 0 4 58 59 72 71
		f 4 55 140 -68 -140
		mu 0 4 59 60 73 72
		f 4 56 141 -69 -141
		mu 0 4 60 61 74 73
		f 4 57 142 -70 -142
		mu 0 4 61 62 75 74
		f 4 58 143 -71 -143
		mu 0 4 62 63 76 75
		f 4 59 132 -72 -144
		mu 0 4 63 64 77 76
		f 4 60 145 -73 -145
		mu 0 4 65 66 79 78
		f 4 61 146 -74 -146
		mu 0 4 66 67 80 79
		f 4 62 147 -75 -147
		mu 0 4 67 68 81 80
		f 4 63 148 -76 -148
		mu 0 4 68 69 82 81
		f 4 64 149 -77 -149
		mu 0 4 69 70 83 82
		f 4 65 150 -78 -150
		mu 0 4 70 71 84 83
		f 4 66 151 -79 -151
		mu 0 4 71 72 85 84
		f 4 67 152 -80 -152
		mu 0 4 72 73 86 85
		f 4 68 153 -81 -153
		mu 0 4 73 74 87 86
		f 4 69 154 -82 -154
		mu 0 4 74 75 88 87
		f 4 70 155 -83 -155
		mu 0 4 75 76 89 88
		f 4 71 144 -84 -156
		mu 0 4 76 77 90 89
		f 3 -1 -157 157
		mu 0 3 1 0 91
		f 3 -2 -158 158
		mu 0 3 2 1 92
		f 3 -3 -159 159
		mu 0 3 3 2 93
		f 3 -4 -160 160
		mu 0 3 4 3 94
		f 3 -5 -161 161
		mu 0 3 5 4 95
		f 3 -6 -162 162
		mu 0 3 6 5 96
		f 3 -7 -163 163
		mu 0 3 7 6 97
		f 3 -8 -164 164
		mu 0 3 8 7 98
		f 3 -9 -165 165
		mu 0 3 9 8 99
		f 3 -10 -166 166
		mu 0 3 10 9 100
		f 3 -11 -167 167
		mu 0 3 11 10 101
		f 3 -12 -168 156
		mu 0 3 12 11 102
		f 3 72 169 -169
		mu 0 3 78 79 103
		f 3 73 170 -170
		mu 0 3 79 80 104
		f 3 74 171 -171
		mu 0 3 80 81 105
		f 3 75 172 -172
		mu 0 3 81 82 106
		f 3 76 173 -173
		mu 0 3 82 83 107
		f 3 77 174 -174
		mu 0 3 83 84 108
		f 3 78 175 -175
		mu 0 3 84 85 109
		f 3 79 176 -176
		mu 0 3 85 86 110
		f 3 80 177 -177
		mu 0 3 86 87 111
		f 3 81 178 -178
		mu 0 3 87 88 112
		f 3 82 179 -179
		mu 0 3 88 89 113
		f 3 83 168 -180
		mu 0 3 89 90 114;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_FingerPinkyD_grp_parentConstraint1" -p "geo_r_FingerPinkyD_grp";
	rename -uid "939AB685-4D86-6FBA-2487-0EB9DE837CC4";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "jnt_r_FingerPinkyDW0" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -7.1054273576010019e-15 0 0 ;
	setAttr ".tg[0].tor" -type "double3" -4.4333950489587542e-13 7.6933561032338548e-15 
		-7.9513867036595271e-15 ;
	setAttr ".lr" -type "double3" 4.3255543667903831e-13 -179.99999999999991 7.5946433685911732 ;
	setAttr ".rst" -type "double3" -72.199999999999989 139.50000000000006 -3.3999999999999861 ;
	setAttr ".rsrr" -type "double3" 4.3255543667903831e-13 -179.99999999999991 7.5946433685911732 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_palm" -p "GEO";
	rename -uid "BB6CF8C5-4EB5-35CC-717B-FA9F8ADF655A";
createNode mesh -n "geo_r_palmShape" -p "geo_r_palm";
	rename -uid "970D5E11-4F5A-F535-A94B-40AD32B726C9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 6 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "back";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[2]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottom";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "f[3]";
	setAttr ".gtag[2].gtagnm" -type "string" "front";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "f[0]";
	setAttr ".gtag[3].gtagnm" -type "string" "left";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "f[5]";
	setAttr ".gtag[4].gtagnm" -type "string" "right";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "f[4]";
	setAttr ".gtag[5].gtagnm" -type "string" "top";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "f[1]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.33000001 0 0.66333336
		 0 0.33000001 0.25 0.66333336 0.25 0.33000001 0.5 0.66333336 0.5 0.33000001 0.75 0.66333336
		 0.75 0.33000001 1 0.66333336 1 1 0 1 0.25 0 0 0 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".vt[0:7]"  -4 -0.64999998 3.5999999 4 -0.64999998 3.5999999
		 -4 0.64999998 3.5999999 4 0.64999998 3.5999999 -4 0.64999998 -3.5999999 4 0.64999998 -3.5999999
		 -4 -0.64999998 -3.5999999 4 -0.64999998 -3.5999999;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_palm_parentConstraint1" -p "geo_r_palm";
	rename -uid "79FD040C-4E90-0C4D-DB75-C2BE2B117F1A";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -5.5999999999999943 -0.40000000000000568 0.1 ;
	setAttr ".rst" -type "double3" -65.6 139.6 0.1 ;
	setAttr -k on ".w0";
createNode transform -n "geo_r_wrist" -p "GEO";
	rename -uid "FD1E034F-4C05-84A0-9250-E0AEDFD12E9C";
createNode mesh -n "geo_r_wristShape" -p "geo_r_wrist";
	rename -uid "8067192C-408D-1688-D8C8-07A121B52757";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr -s 10 ".gtag";
	setAttr ".gtag[0].gtagnm" -type "string" "bottom";
	setAttr ".gtag[0].gtagcmp" -type "componentList" 1 "f[20]";
	setAttr ".gtag[1].gtagnm" -type "string" "bottomRing";
	setAttr ".gtag[1].gtagcmp" -type "componentList" 1 "e[0:19]";
	setAttr ".gtag[2].gtagnm" -type "string" "cylBottomCap";
	setAttr ".gtag[2].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[3].gtagnm" -type "string" "cylBottomRing";
	setAttr ".gtag[3].gtagcmp" -type "componentList" 1 "vtx[0:19]";
	setAttr ".gtag[4].gtagnm" -type "string" "cylSides";
	setAttr ".gtag[4].gtagcmp" -type "componentList" 1 "vtx[0:39]";
	setAttr ".gtag[5].gtagnm" -type "string" "cylTopCap";
	setAttr ".gtag[5].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[6].gtagnm" -type "string" "cylTopRing";
	setAttr ".gtag[6].gtagcmp" -type "componentList" 1 "vtx[20:39]";
	setAttr ".gtag[7].gtagnm" -type "string" "sides";
	setAttr ".gtag[7].gtagcmp" -type "componentList" 1 "f[0:19]";
	setAttr ".gtag[8].gtagnm" -type "string" "top";
	setAttr ".gtag[8].gtagcmp" -type "componentList" 1 "f[21]";
	setAttr ".gtag[9].gtagnm" -type "string" "topRing";
	setAttr ".gtag[9].gtagcmp" -type "componentList" 1 "e[20:39]";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 82 ".uvst[0].uvsp[0:81]" -type "float2" 0.97740829 0.086372852
		 0.90638852 0.0515268 0.79577255 0.023872823 0.65638828 0.0061178803 0.50187969 -5.9604645e-08
		 0.3473711 0.0061178803 0.20798695 0.023872837 0.097371072 0.051526815 0.026351303
		 0.086372867 0.0018795729 0.125 0.026351303 0.16362715 0.097371101 0.19847316 0.20798701
		 0.22612715 0.34737116 0.24388209 0.50187969 0.25 0.65638816 0.24388206 0.79577231
		 0.22612715 0.90638816 0.19847316 0.97740793 0.16362712 1.0018796921 0.125 0 0.25
		 0.050000001 0.25 0.1 0.25 0.15000001 0.25 0.2 0.25 0.25 0.25 0.30000001 0.25 0.35000002
		 0.25 0.40000004 0.25 0.45000005 0.25 0.50000006 0.25 0.55000007 0.25 0.60000008 0.25
		 0.6500001 0.25 0.70000011 0.25 0.75000012 0.25 0.80000013 0.25 0.85000014 0.25 0.90000015
		 0.25 0.95000017 0.25 1.000000119209 0.25 0 0.75 0.050000001 0.75 0.1 0.75 0.15000001
		 0.75 0.2 0.75 0.25 0.75 0.30000001 0.75 0.35000002 0.75 0.40000004 0.75 0.45000005
		 0.75 0.50000006 0.75 0.55000007 0.75 0.60000008 0.75 0.6500001 0.75 0.70000011 0.75
		 0.75000012 0.75 0.80000013 0.75 0.85000014 0.75 0.90000015 0.75 0.95000017 0.75 1.000000119209
		 0.75 0.97740829 0.83637285 0.90638852 0.80152678 0.79577255 0.77387285 0.65638828
		 0.75611788 0.50187969 0.74999994 0.3473711 0.75611788 0.20798695 0.77387285 0.097371072
		 0.80152678 0.026351303 0.83637285 0.0018795729 0.875 0.026351303 0.91362715 0.097371101
		 0.94847316 0.20798701 0.97612715 0.34737116 0.99388206 0.50187969 1 0.65638816 0.99388206
		 0.79577231 0.97612715 0.90638816 0.94847316 0.97740793 0.91362715 1.0018796921 0.875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 40 ".vt[0:39]"  -2 -1.42658567 -0.46352577 -2 -1.21352625 -0.8816784
		 -2 -0.8816784 -1.21352625 -2 -0.46352571 -1.42658556 -2 0 -1.50000072 -2 0.46352571 -1.42658544
		 -2 0.88167822 -1.21352601 -2 1.21352589 -0.8816781 -2 1.4265852 -0.46352559 -2 1.50000036 0
		 -2 1.4265852 0.46352559 -2 1.21352577 0.88167804 -2 0.88167804 1.21352565 -2 0.46352559 1.42658496
		 -2 4.4703484e-08 1.50000024 -2 -0.46352547 1.42658496 -2 -0.88167787 1.21352553 -2 -1.21352553 0.88167799
		 -2 -1.42658484 0.4635255 -2 -1.5 0 2 -1.42658567 -0.46352577 2 -1.21352625 -0.8816784
		 2 -0.8816784 -1.21352625 2 -0.46352571 -1.42658556 2 0 -1.50000072 2 0.46352571 -1.42658544
		 2 0.88167822 -1.21352601 2 1.21352589 -0.8816781 2 1.4265852 -0.46352559 2 1.50000036 0
		 2 1.4265852 0.46352559 2 1.21352577 0.88167804 2 0.88167804 1.21352565 2 0.46352559 1.42658496
		 2 4.4703484e-08 1.50000024 2 -0.46352547 1.42658496 2 -0.88167787 1.21352553 2 -1.21352553 0.88167799
		 2 -1.42658484 0.4635255 2 -1.5 0;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 0 0 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0
		 29 30 0 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0
		 0 20 1 1 21 1 2 22 1 3 23 1 4 24 1 5 25 1 6 26 1 7 27 1 8 28 1 9 29 1 10 30 1 11 31 1
		 12 32 1 13 33 1 14 34 1 15 35 1 16 36 1 17 37 1 18 38 1 19 39 1;
	setAttr -s 22 -ch 120 ".fc[0:21]" -type "polyFaces" 
		f 4 0 41 -21 -41
		mu 0 4 20 21 42 41
		f 4 1 42 -22 -42
		mu 0 4 21 22 43 42
		f 4 2 43 -23 -43
		mu 0 4 22 23 44 43
		f 4 3 44 -24 -44
		mu 0 4 23 24 45 44
		f 4 4 45 -25 -45
		mu 0 4 24 25 46 45
		f 4 5 46 -26 -46
		mu 0 4 25 26 47 46
		f 4 6 47 -27 -47
		mu 0 4 26 27 48 47
		f 4 7 48 -28 -48
		mu 0 4 27 28 49 48
		f 4 8 49 -29 -49
		mu 0 4 28 29 50 49
		f 4 9 50 -30 -50
		mu 0 4 29 30 51 50
		f 4 10 51 -31 -51
		mu 0 4 30 31 52 51
		f 4 11 52 -32 -52
		mu 0 4 31 32 53 52
		f 4 12 53 -33 -53
		mu 0 4 32 33 54 53
		f 4 13 54 -34 -54
		mu 0 4 33 34 55 54
		f 4 14 55 -35 -55
		mu 0 4 34 35 56 55
		f 4 15 56 -36 -56
		mu 0 4 35 36 57 56
		f 4 16 57 -37 -57
		mu 0 4 36 37 58 57
		f 4 17 58 -38 -58
		mu 0 4 37 38 59 58
		f 4 18 59 -39 -59
		mu 0 4 38 39 60 59
		f 4 19 40 -40 -60
		mu 0 4 39 40 61 60
		f 20 -20 -19 -18 -17 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1
		mu 0 20 0 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1
		f 20 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39
		mu 0 20 80 79 78 77 76 75 74 73 72 71 70 69 68 67 66 65 64 63 62 81;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ndt" 0;
createNode parentConstraint -n "geo_r_wrist_parentConstraint1" -p "geo_r_wrist";
	rename -uid "06C6AE8E-4459-55A6-C6C6-4E8A9B89D586";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "ctl_r_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0.20000000000000284 -0.40000000000000568 0.1 ;
	setAttr ".rst" -type "double3" -59.8 139.6 0.1 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "DACD2EB4-44EB-76AD-6902-6CB254C04017";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "2850DCF5-4568-02AA-EFB0-FC8C7080DEE6";
createNode displayLayer -n "defaultLayer";
	rename -uid "3C313EE0-4634-ECDA-7FB4-4CBC29E040A5";
	setAttr ".ufem" -type "stringArray" 0  ;
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "BD3753E7-43E2-DBD1-6784-DD82323670A3";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "C5B19026-4F73-7FAB-38B5-589C3D8B47DB";
	setAttr ".g" yes;
createNode lambert -n "skin_mtl";
	rename -uid "74919514-4BD3-B30B-FFCE-17A22CC045CB";
	setAttr ".c" -type "float3" 0.85000002 0.62 0.47999999 ;
createNode shadingEngine -n "skin_SG";
	rename -uid "1F405DAE-499E-D9C6-6F78-E7B6A43ACBD1";
	setAttr ".ihi" 0;
	setAttr -s 64 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "3FB41934-4CF7-9F6C-FC7B-F49E993841B7";
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5CF625E8-40F3-67F3-4B44-A9B18072CCFF";
	setAttr ".b" -type "string" "// Maya Mel UI Configuration File.\n// No UI generated in batch mode.\n";
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "2AED7C09-489D-9322-E9DE-DBAD518C9BF3";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
	setAttr ".rtfm" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :standardSurface1;
	setAttr ".bc" -type "float3" 0.40000001 0.40000001 0.40000001 ;
	setAttr ".sr" 0.5;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".dss" -type "string" "standardSurface1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultColorMgtGlobals;
	setAttr ".cfe" yes;
	setAttr ".cfp" -type "string" "<MAYA_RESOURCES>/OCIO-configs/Maya2022-default/config.ocio";
	setAttr ".vtn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".vn" -type "string" "ACES 1.0 SDR-video";
	setAttr ".dn" -type "string" "sRGB";
	setAttr ".wsn" -type "string" "ACEScg";
	setAttr ".otn" -type "string" "ACES 1.0 SDR-video (sRGB)";
	setAttr ".potn" -type "string" "ACES 1.0 SDR-video (sRGB)";
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "jnt_l_FingerThumbA_parentConstraint1.ctx" "jnt_l_FingerThumbA.tx";
connectAttr "jnt_l_FingerThumbA_parentConstraint1.cty" "jnt_l_FingerThumbA.ty";
connectAttr "jnt_l_FingerThumbA_parentConstraint1.ctz" "jnt_l_FingerThumbA.tz";
connectAttr "jnt_l_FingerThumbA_parentConstraint1.crx" "jnt_l_FingerThumbA.rx";
connectAttr "jnt_l_FingerThumbA_parentConstraint1.cry" "jnt_l_FingerThumbA.ry";
connectAttr "jnt_l_FingerThumbA_parentConstraint1.crz" "jnt_l_FingerThumbA.rz";
connectAttr "jnt_l_FingerThumbA.s" "jnt_l_FingerThumbB.is";
connectAttr "jnt_l_FingerThumbB_parentConstraint1.ctx" "jnt_l_FingerThumbB.tx";
connectAttr "jnt_l_FingerThumbB_parentConstraint1.cty" "jnt_l_FingerThumbB.ty";
connectAttr "jnt_l_FingerThumbB_parentConstraint1.ctz" "jnt_l_FingerThumbB.tz";
connectAttr "jnt_l_FingerThumbB_parentConstraint1.crx" "jnt_l_FingerThumbB.rx";
connectAttr "jnt_l_FingerThumbB_parentConstraint1.cry" "jnt_l_FingerThumbB.ry";
connectAttr "jnt_l_FingerThumbB_parentConstraint1.crz" "jnt_l_FingerThumbB.rz";
connectAttr "jnt_l_FingerThumbB.s" "jnt_l_FingerThumbC.is";
connectAttr "jnt_l_FingerThumbC_parentConstraint1.ctx" "jnt_l_FingerThumbC.tx";
connectAttr "jnt_l_FingerThumbC_parentConstraint1.cty" "jnt_l_FingerThumbC.ty";
connectAttr "jnt_l_FingerThumbC_parentConstraint1.ctz" "jnt_l_FingerThumbC.tz";
connectAttr "jnt_l_FingerThumbC_parentConstraint1.crx" "jnt_l_FingerThumbC.rx";
connectAttr "jnt_l_FingerThumbC_parentConstraint1.cry" "jnt_l_FingerThumbC.ry";
connectAttr "jnt_l_FingerThumbC_parentConstraint1.crz" "jnt_l_FingerThumbC.rz";
connectAttr "jnt_l_FingerThumbC.s" "jnt_l_FingerThumbEnd.is";
connectAttr "jnt_l_FingerThumbC.ro" "jnt_l_FingerThumbC_parentConstraint1.cro";
connectAttr "jnt_l_FingerThumbC.pim" "jnt_l_FingerThumbC_parentConstraint1.cpim"
		;
connectAttr "jnt_l_FingerThumbC.rp" "jnt_l_FingerThumbC_parentConstraint1.crp";
connectAttr "jnt_l_FingerThumbC.rpt" "jnt_l_FingerThumbC_parentConstraint1.crt";
connectAttr "jnt_l_FingerThumbC.jo" "jnt_l_FingerThumbC_parentConstraint1.cjo";
connectAttr "ctl_l_FingerThumbC_fk.t" "jnt_l_FingerThumbC_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerThumbC_fk.rp" "jnt_l_FingerThumbC_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerThumbC_fk.rpt" "jnt_l_FingerThumbC_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerThumbC_fk.r" "jnt_l_FingerThumbC_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerThumbC_fk.ro" "jnt_l_FingerThumbC_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerThumbC_fk.s" "jnt_l_FingerThumbC_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerThumbC_fk.pm" "jnt_l_FingerThumbC_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerThumbC_parentConstraint1.w0" "jnt_l_FingerThumbC_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_FingerThumbB.ro" "jnt_l_FingerThumbB_parentConstraint1.cro";
connectAttr "jnt_l_FingerThumbB.pim" "jnt_l_FingerThumbB_parentConstraint1.cpim"
		;
connectAttr "jnt_l_FingerThumbB.rp" "jnt_l_FingerThumbB_parentConstraint1.crp";
connectAttr "jnt_l_FingerThumbB.rpt" "jnt_l_FingerThumbB_parentConstraint1.crt";
connectAttr "jnt_l_FingerThumbB.jo" "jnt_l_FingerThumbB_parentConstraint1.cjo";
connectAttr "ctl_l_FingerThumbB_fk.t" "jnt_l_FingerThumbB_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerThumbB_fk.rp" "jnt_l_FingerThumbB_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerThumbB_fk.rpt" "jnt_l_FingerThumbB_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerThumbB_fk.r" "jnt_l_FingerThumbB_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerThumbB_fk.ro" "jnt_l_FingerThumbB_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerThumbB_fk.s" "jnt_l_FingerThumbB_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerThumbB_fk.pm" "jnt_l_FingerThumbB_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerThumbB_parentConstraint1.w0" "jnt_l_FingerThumbB_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_FingerThumbA.ro" "jnt_l_FingerThumbA_parentConstraint1.cro";
connectAttr "jnt_l_FingerThumbA.pim" "jnt_l_FingerThumbA_parentConstraint1.cpim"
		;
connectAttr "jnt_l_FingerThumbA.rp" "jnt_l_FingerThumbA_parentConstraint1.crp";
connectAttr "jnt_l_FingerThumbA.rpt" "jnt_l_FingerThumbA_parentConstraint1.crt";
connectAttr "jnt_l_FingerThumbA.jo" "jnt_l_FingerThumbA_parentConstraint1.cjo";
connectAttr "ctl_l_FingerThumbA_fk.t" "jnt_l_FingerThumbA_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerThumbA_fk.rp" "jnt_l_FingerThumbA_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerThumbA_fk.rpt" "jnt_l_FingerThumbA_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerThumbA_fk.r" "jnt_l_FingerThumbA_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerThumbA_fk.ro" "jnt_l_FingerThumbA_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerThumbA_fk.s" "jnt_l_FingerThumbA_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerThumbA_fk.pm" "jnt_l_FingerThumbA_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerThumbA_parentConstraint1.w0" "jnt_l_FingerThumbA_parentConstraint1.tg[0].tw"
		;
connectAttr "off_l_FingerThumbA_fk_parentConstraint.ctx" "off_l_FingerThumbA_fk.tx"
		;
connectAttr "off_l_FingerThumbA_fk_parentConstraint.cty" "off_l_FingerThumbA_fk.ty"
		;
connectAttr "off_l_FingerThumbA_fk_parentConstraint.ctz" "off_l_FingerThumbA_fk.tz"
		;
connectAttr "off_l_FingerThumbA_fk_parentConstraint.crx" "off_l_FingerThumbA_fk.rx"
		;
connectAttr "off_l_FingerThumbA_fk_parentConstraint.cry" "off_l_FingerThumbA_fk.ry"
		;
connectAttr "off_l_FingerThumbA_fk_parentConstraint.crz" "off_l_FingerThumbA_fk.rz"
		;
connectAttr "off_l_FingerThumbA_fk.ro" "off_l_FingerThumbA_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerThumbA_fk.pim" "off_l_FingerThumbA_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerThumbA_fk.rp" "off_l_FingerThumbA_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerThumbA_fk.rpt" "off_l_FingerThumbA_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_hand.t" "off_l_FingerThumbA_fk_parentConstraint.tg[0].tt";
connectAttr "ctl_l_hand.rp" "off_l_FingerThumbA_fk_parentConstraint.tg[0].trp";
connectAttr "ctl_l_hand.rpt" "off_l_FingerThumbA_fk_parentConstraint.tg[0].trt";
connectAttr "ctl_l_hand.r" "off_l_FingerThumbA_fk_parentConstraint.tg[0].tr";
connectAttr "ctl_l_hand.ro" "off_l_FingerThumbA_fk_parentConstraint.tg[0].tro";
connectAttr "ctl_l_hand.s" "off_l_FingerThumbA_fk_parentConstraint.tg[0].ts";
connectAttr "ctl_l_hand.pm" "off_l_FingerThumbA_fk_parentConstraint.tg[0].tpm";
connectAttr "off_l_FingerThumbA_fk_parentConstraint.w0" "off_l_FingerThumbA_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_l_FingerThumbB_fk_parentConstraint.ctx" "off_l_FingerThumbB_fk.tx"
		;
connectAttr "off_l_FingerThumbB_fk_parentConstraint.cty" "off_l_FingerThumbB_fk.ty"
		;
connectAttr "off_l_FingerThumbB_fk_parentConstraint.ctz" "off_l_FingerThumbB_fk.tz"
		;
connectAttr "off_l_FingerThumbB_fk_parentConstraint.crx" "off_l_FingerThumbB_fk.rx"
		;
connectAttr "off_l_FingerThumbB_fk_parentConstraint.cry" "off_l_FingerThumbB_fk.ry"
		;
connectAttr "off_l_FingerThumbB_fk_parentConstraint.crz" "off_l_FingerThumbB_fk.rz"
		;
connectAttr "off_l_FingerThumbB_fk.ro" "off_l_FingerThumbB_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerThumbB_fk.pim" "off_l_FingerThumbB_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerThumbB_fk.rp" "off_l_FingerThumbB_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerThumbB_fk.rpt" "off_l_FingerThumbB_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_FingerThumbA_fk.t" "off_l_FingerThumbB_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_l_FingerThumbA_fk.rp" "off_l_FingerThumbB_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_l_FingerThumbA_fk.rpt" "off_l_FingerThumbB_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_l_FingerThumbA_fk.r" "off_l_FingerThumbB_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_l_FingerThumbA_fk.ro" "off_l_FingerThumbB_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_l_FingerThumbA_fk.s" "off_l_FingerThumbB_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_l_FingerThumbA_fk.pm" "off_l_FingerThumbB_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_l_FingerThumbB_fk_parentConstraint.w0" "off_l_FingerThumbB_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_l_FingerThumbC_fk_parentConstraint.ctx" "off_l_FingerThumbC_fk.tx"
		;
connectAttr "off_l_FingerThumbC_fk_parentConstraint.cty" "off_l_FingerThumbC_fk.ty"
		;
connectAttr "off_l_FingerThumbC_fk_parentConstraint.ctz" "off_l_FingerThumbC_fk.tz"
		;
connectAttr "off_l_FingerThumbC_fk_parentConstraint.crx" "off_l_FingerThumbC_fk.rx"
		;
connectAttr "off_l_FingerThumbC_fk_parentConstraint.cry" "off_l_FingerThumbC_fk.ry"
		;
connectAttr "off_l_FingerThumbC_fk_parentConstraint.crz" "off_l_FingerThumbC_fk.rz"
		;
connectAttr "off_l_FingerThumbC_fk.ro" "off_l_FingerThumbC_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerThumbC_fk.pim" "off_l_FingerThumbC_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerThumbC_fk.rp" "off_l_FingerThumbC_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerThumbC_fk.rpt" "off_l_FingerThumbC_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_FingerThumbB_fk.t" "off_l_FingerThumbC_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_l_FingerThumbB_fk.rp" "off_l_FingerThumbC_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_l_FingerThumbB_fk.rpt" "off_l_FingerThumbC_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_l_FingerThumbB_fk.r" "off_l_FingerThumbC_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_l_FingerThumbB_fk.ro" "off_l_FingerThumbC_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_l_FingerThumbB_fk.s" "off_l_FingerThumbC_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_l_FingerThumbB_fk.pm" "off_l_FingerThumbC_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_l_FingerThumbC_fk_parentConstraint.w0" "off_l_FingerThumbC_fk_parentConstraint.tg[0].tw"
		;
connectAttr "jnt_l_FingerIndexA_parentConstraint1.ctx" "jnt_l_FingerIndexA.tx";
connectAttr "jnt_l_FingerIndexA_parentConstraint1.cty" "jnt_l_FingerIndexA.ty";
connectAttr "jnt_l_FingerIndexA_parentConstraint1.ctz" "jnt_l_FingerIndexA.tz";
connectAttr "jnt_l_FingerIndexA_parentConstraint1.crx" "jnt_l_FingerIndexA.rx";
connectAttr "jnt_l_FingerIndexA_parentConstraint1.cry" "jnt_l_FingerIndexA.ry";
connectAttr "jnt_l_FingerIndexA_parentConstraint1.crz" "jnt_l_FingerIndexA.rz";
connectAttr "jnt_l_FingerIndexA.s" "jnt_l_FingerIndexB.is";
connectAttr "jnt_l_FingerIndexB_parentConstraint1.ctx" "jnt_l_FingerIndexB.tx";
connectAttr "jnt_l_FingerIndexB_parentConstraint1.cty" "jnt_l_FingerIndexB.ty";
connectAttr "jnt_l_FingerIndexB_parentConstraint1.ctz" "jnt_l_FingerIndexB.tz";
connectAttr "jnt_l_FingerIndexB_parentConstraint1.crx" "jnt_l_FingerIndexB.rx";
connectAttr "jnt_l_FingerIndexB_parentConstraint1.cry" "jnt_l_FingerIndexB.ry";
connectAttr "jnt_l_FingerIndexB_parentConstraint1.crz" "jnt_l_FingerIndexB.rz";
connectAttr "jnt_l_FingerIndexB.s" "jnt_l_FingerIndexC.is";
connectAttr "jnt_l_FingerIndexC_parentConstraint1.ctx" "jnt_l_FingerIndexC.tx";
connectAttr "jnt_l_FingerIndexC_parentConstraint1.cty" "jnt_l_FingerIndexC.ty";
connectAttr "jnt_l_FingerIndexC_parentConstraint1.ctz" "jnt_l_FingerIndexC.tz";
connectAttr "jnt_l_FingerIndexC_parentConstraint1.crx" "jnt_l_FingerIndexC.rx";
connectAttr "jnt_l_FingerIndexC_parentConstraint1.cry" "jnt_l_FingerIndexC.ry";
connectAttr "jnt_l_FingerIndexC_parentConstraint1.crz" "jnt_l_FingerIndexC.rz";
connectAttr "jnt_l_FingerIndexC.s" "jnt_l_FingerIndexEnd.is";
connectAttr "jnt_l_FingerIndexC.ro" "jnt_l_FingerIndexC_parentConstraint1.cro";
connectAttr "jnt_l_FingerIndexC.pim" "jnt_l_FingerIndexC_parentConstraint1.cpim"
		;
connectAttr "jnt_l_FingerIndexC.rp" "jnt_l_FingerIndexC_parentConstraint1.crp";
connectAttr "jnt_l_FingerIndexC.rpt" "jnt_l_FingerIndexC_parentConstraint1.crt";
connectAttr "jnt_l_FingerIndexC.jo" "jnt_l_FingerIndexC_parentConstraint1.cjo";
connectAttr "ctl_l_FingerIndexC_fk.t" "jnt_l_FingerIndexC_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerIndexC_fk.rp" "jnt_l_FingerIndexC_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerIndexC_fk.rpt" "jnt_l_FingerIndexC_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerIndexC_fk.r" "jnt_l_FingerIndexC_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerIndexC_fk.ro" "jnt_l_FingerIndexC_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerIndexC_fk.s" "jnt_l_FingerIndexC_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerIndexC_fk.pm" "jnt_l_FingerIndexC_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerIndexC_parentConstraint1.w0" "jnt_l_FingerIndexC_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_FingerIndexB.ro" "jnt_l_FingerIndexB_parentConstraint1.cro";
connectAttr "jnt_l_FingerIndexB.pim" "jnt_l_FingerIndexB_parentConstraint1.cpim"
		;
connectAttr "jnt_l_FingerIndexB.rp" "jnt_l_FingerIndexB_parentConstraint1.crp";
connectAttr "jnt_l_FingerIndexB.rpt" "jnt_l_FingerIndexB_parentConstraint1.crt";
connectAttr "jnt_l_FingerIndexB.jo" "jnt_l_FingerIndexB_parentConstraint1.cjo";
connectAttr "ctl_l_FingerIndexB_fk.t" "jnt_l_FingerIndexB_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerIndexB_fk.rp" "jnt_l_FingerIndexB_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerIndexB_fk.rpt" "jnt_l_FingerIndexB_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerIndexB_fk.r" "jnt_l_FingerIndexB_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerIndexB_fk.ro" "jnt_l_FingerIndexB_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerIndexB_fk.s" "jnt_l_FingerIndexB_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerIndexB_fk.pm" "jnt_l_FingerIndexB_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerIndexB_parentConstraint1.w0" "jnt_l_FingerIndexB_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_FingerIndexA.ro" "jnt_l_FingerIndexA_parentConstraint1.cro";
connectAttr "jnt_l_FingerIndexA.pim" "jnt_l_FingerIndexA_parentConstraint1.cpim"
		;
connectAttr "jnt_l_FingerIndexA.rp" "jnt_l_FingerIndexA_parentConstraint1.crp";
connectAttr "jnt_l_FingerIndexA.rpt" "jnt_l_FingerIndexA_parentConstraint1.crt";
connectAttr "jnt_l_FingerIndexA.jo" "jnt_l_FingerIndexA_parentConstraint1.cjo";
connectAttr "ctl_l_FingerIndexA_fk.t" "jnt_l_FingerIndexA_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerIndexA_fk.rp" "jnt_l_FingerIndexA_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerIndexA_fk.rpt" "jnt_l_FingerIndexA_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerIndexA_fk.r" "jnt_l_FingerIndexA_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerIndexA_fk.ro" "jnt_l_FingerIndexA_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerIndexA_fk.s" "jnt_l_FingerIndexA_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerIndexA_fk.pm" "jnt_l_FingerIndexA_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerIndexA_parentConstraint1.w0" "jnt_l_FingerIndexA_parentConstraint1.tg[0].tw"
		;
connectAttr "off_l_FingerIndexA_fk_parentConstraint.ctx" "off_l_FingerIndexA_fk.tx"
		;
connectAttr "off_l_FingerIndexA_fk_parentConstraint.cty" "off_l_FingerIndexA_fk.ty"
		;
connectAttr "off_l_FingerIndexA_fk_parentConstraint.ctz" "off_l_FingerIndexA_fk.tz"
		;
connectAttr "off_l_FingerIndexA_fk_parentConstraint.crx" "off_l_FingerIndexA_fk.rx"
		;
connectAttr "off_l_FingerIndexA_fk_parentConstraint.cry" "off_l_FingerIndexA_fk.ry"
		;
connectAttr "off_l_FingerIndexA_fk_parentConstraint.crz" "off_l_FingerIndexA_fk.rz"
		;
connectAttr "off_l_FingerIndexA_fk.ro" "off_l_FingerIndexA_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerIndexA_fk.pim" "off_l_FingerIndexA_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerIndexA_fk.rp" "off_l_FingerIndexA_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerIndexA_fk.rpt" "off_l_FingerIndexA_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_hand.t" "off_l_FingerIndexA_fk_parentConstraint.tg[0].tt";
connectAttr "ctl_l_hand.rp" "off_l_FingerIndexA_fk_parentConstraint.tg[0].trp";
connectAttr "ctl_l_hand.rpt" "off_l_FingerIndexA_fk_parentConstraint.tg[0].trt";
connectAttr "ctl_l_hand.r" "off_l_FingerIndexA_fk_parentConstraint.tg[0].tr";
connectAttr "ctl_l_hand.ro" "off_l_FingerIndexA_fk_parentConstraint.tg[0].tro";
connectAttr "ctl_l_hand.s" "off_l_FingerIndexA_fk_parentConstraint.tg[0].ts";
connectAttr "ctl_l_hand.pm" "off_l_FingerIndexA_fk_parentConstraint.tg[0].tpm";
connectAttr "off_l_FingerIndexA_fk_parentConstraint.w0" "off_l_FingerIndexA_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_l_FingerIndexB_fk_parentConstraint.ctx" "off_l_FingerIndexB_fk.tx"
		;
connectAttr "off_l_FingerIndexB_fk_parentConstraint.cty" "off_l_FingerIndexB_fk.ty"
		;
connectAttr "off_l_FingerIndexB_fk_parentConstraint.ctz" "off_l_FingerIndexB_fk.tz"
		;
connectAttr "off_l_FingerIndexB_fk_parentConstraint.crx" "off_l_FingerIndexB_fk.rx"
		;
connectAttr "off_l_FingerIndexB_fk_parentConstraint.cry" "off_l_FingerIndexB_fk.ry"
		;
connectAttr "off_l_FingerIndexB_fk_parentConstraint.crz" "off_l_FingerIndexB_fk.rz"
		;
connectAttr "off_l_FingerIndexB_fk.ro" "off_l_FingerIndexB_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerIndexB_fk.pim" "off_l_FingerIndexB_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerIndexB_fk.rp" "off_l_FingerIndexB_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerIndexB_fk.rpt" "off_l_FingerIndexB_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_FingerIndexA_fk.t" "off_l_FingerIndexB_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_l_FingerIndexA_fk.rp" "off_l_FingerIndexB_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_l_FingerIndexA_fk.rpt" "off_l_FingerIndexB_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_l_FingerIndexA_fk.r" "off_l_FingerIndexB_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_l_FingerIndexA_fk.ro" "off_l_FingerIndexB_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_l_FingerIndexA_fk.s" "off_l_FingerIndexB_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_l_FingerIndexA_fk.pm" "off_l_FingerIndexB_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_l_FingerIndexB_fk_parentConstraint.w0" "off_l_FingerIndexB_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_l_FingerIndexC_fk_parentConstraint.ctx" "off_l_FingerIndexC_fk.tx"
		;
connectAttr "off_l_FingerIndexC_fk_parentConstraint.cty" "off_l_FingerIndexC_fk.ty"
		;
connectAttr "off_l_FingerIndexC_fk_parentConstraint.ctz" "off_l_FingerIndexC_fk.tz"
		;
connectAttr "off_l_FingerIndexC_fk_parentConstraint.crx" "off_l_FingerIndexC_fk.rx"
		;
connectAttr "off_l_FingerIndexC_fk_parentConstraint.cry" "off_l_FingerIndexC_fk.ry"
		;
connectAttr "off_l_FingerIndexC_fk_parentConstraint.crz" "off_l_FingerIndexC_fk.rz"
		;
connectAttr "off_l_FingerIndexC_fk.ro" "off_l_FingerIndexC_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerIndexC_fk.pim" "off_l_FingerIndexC_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerIndexC_fk.rp" "off_l_FingerIndexC_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerIndexC_fk.rpt" "off_l_FingerIndexC_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_FingerIndexB_fk.t" "off_l_FingerIndexC_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_l_FingerIndexB_fk.rp" "off_l_FingerIndexC_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_l_FingerIndexB_fk.rpt" "off_l_FingerIndexC_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_l_FingerIndexB_fk.r" "off_l_FingerIndexC_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_l_FingerIndexB_fk.ro" "off_l_FingerIndexC_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_l_FingerIndexB_fk.s" "off_l_FingerIndexC_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_l_FingerIndexB_fk.pm" "off_l_FingerIndexC_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_l_FingerIndexC_fk_parentConstraint.w0" "off_l_FingerIndexC_fk_parentConstraint.tg[0].tw"
		;
connectAttr "jnt_l_FingerMiddleA_parentConstraint1.ctx" "jnt_l_FingerMiddleA.tx"
		;
connectAttr "jnt_l_FingerMiddleA_parentConstraint1.cty" "jnt_l_FingerMiddleA.ty"
		;
connectAttr "jnt_l_FingerMiddleA_parentConstraint1.ctz" "jnt_l_FingerMiddleA.tz"
		;
connectAttr "jnt_l_FingerMiddleA_parentConstraint1.crx" "jnt_l_FingerMiddleA.rx"
		;
connectAttr "jnt_l_FingerMiddleA_parentConstraint1.cry" "jnt_l_FingerMiddleA.ry"
		;
connectAttr "jnt_l_FingerMiddleA_parentConstraint1.crz" "jnt_l_FingerMiddleA.rz"
		;
connectAttr "jnt_l_FingerMiddleA.s" "jnt_l_FingerMiddleB.is";
connectAttr "jnt_l_FingerMiddleB_parentConstraint1.ctx" "jnt_l_FingerMiddleB.tx"
		;
connectAttr "jnt_l_FingerMiddleB_parentConstraint1.cty" "jnt_l_FingerMiddleB.ty"
		;
connectAttr "jnt_l_FingerMiddleB_parentConstraint1.ctz" "jnt_l_FingerMiddleB.tz"
		;
connectAttr "jnt_l_FingerMiddleB_parentConstraint1.crx" "jnt_l_FingerMiddleB.rx"
		;
connectAttr "jnt_l_FingerMiddleB_parentConstraint1.cry" "jnt_l_FingerMiddleB.ry"
		;
connectAttr "jnt_l_FingerMiddleB_parentConstraint1.crz" "jnt_l_FingerMiddleB.rz"
		;
connectAttr "jnt_l_FingerMiddleB.s" "jnt_l_FingerMiddleC.is";
connectAttr "jnt_l_FingerMiddleC_parentConstraint1.ctx" "jnt_l_FingerMiddleC.tx"
		;
connectAttr "jnt_l_FingerMiddleC_parentConstraint1.cty" "jnt_l_FingerMiddleC.ty"
		;
connectAttr "jnt_l_FingerMiddleC_parentConstraint1.ctz" "jnt_l_FingerMiddleC.tz"
		;
connectAttr "jnt_l_FingerMiddleC_parentConstraint1.crx" "jnt_l_FingerMiddleC.rx"
		;
connectAttr "jnt_l_FingerMiddleC_parentConstraint1.cry" "jnt_l_FingerMiddleC.ry"
		;
connectAttr "jnt_l_FingerMiddleC_parentConstraint1.crz" "jnt_l_FingerMiddleC.rz"
		;
connectAttr "jnt_l_FingerMiddleC.s" "jnt_l_FingerMiddleEnd.is";
connectAttr "jnt_l_FingerMiddleC.ro" "jnt_l_FingerMiddleC_parentConstraint1.cro"
		;
connectAttr "jnt_l_FingerMiddleC.pim" "jnt_l_FingerMiddleC_parentConstraint1.cpim"
		;
connectAttr "jnt_l_FingerMiddleC.rp" "jnt_l_FingerMiddleC_parentConstraint1.crp"
		;
connectAttr "jnt_l_FingerMiddleC.rpt" "jnt_l_FingerMiddleC_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerMiddleC.jo" "jnt_l_FingerMiddleC_parentConstraint1.cjo"
		;
connectAttr "ctl_l_FingerMiddleC_fk.t" "jnt_l_FingerMiddleC_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerMiddleC_fk.rp" "jnt_l_FingerMiddleC_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerMiddleC_fk.rpt" "jnt_l_FingerMiddleC_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerMiddleC_fk.r" "jnt_l_FingerMiddleC_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerMiddleC_fk.ro" "jnt_l_FingerMiddleC_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerMiddleC_fk.s" "jnt_l_FingerMiddleC_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerMiddleC_fk.pm" "jnt_l_FingerMiddleC_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerMiddleC_parentConstraint1.w0" "jnt_l_FingerMiddleC_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_FingerMiddleB.ro" "jnt_l_FingerMiddleB_parentConstraint1.cro"
		;
connectAttr "jnt_l_FingerMiddleB.pim" "jnt_l_FingerMiddleB_parentConstraint1.cpim"
		;
connectAttr "jnt_l_FingerMiddleB.rp" "jnt_l_FingerMiddleB_parentConstraint1.crp"
		;
connectAttr "jnt_l_FingerMiddleB.rpt" "jnt_l_FingerMiddleB_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerMiddleB.jo" "jnt_l_FingerMiddleB_parentConstraint1.cjo"
		;
connectAttr "ctl_l_FingerMiddleB_fk.t" "jnt_l_FingerMiddleB_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerMiddleB_fk.rp" "jnt_l_FingerMiddleB_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerMiddleB_fk.rpt" "jnt_l_FingerMiddleB_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerMiddleB_fk.r" "jnt_l_FingerMiddleB_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerMiddleB_fk.ro" "jnt_l_FingerMiddleB_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerMiddleB_fk.s" "jnt_l_FingerMiddleB_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerMiddleB_fk.pm" "jnt_l_FingerMiddleB_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerMiddleB_parentConstraint1.w0" "jnt_l_FingerMiddleB_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_FingerMiddleA.ro" "jnt_l_FingerMiddleA_parentConstraint1.cro"
		;
connectAttr "jnt_l_FingerMiddleA.pim" "jnt_l_FingerMiddleA_parentConstraint1.cpim"
		;
connectAttr "jnt_l_FingerMiddleA.rp" "jnt_l_FingerMiddleA_parentConstraint1.crp"
		;
connectAttr "jnt_l_FingerMiddleA.rpt" "jnt_l_FingerMiddleA_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerMiddleA.jo" "jnt_l_FingerMiddleA_parentConstraint1.cjo"
		;
connectAttr "ctl_l_FingerMiddleA_fk.t" "jnt_l_FingerMiddleA_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerMiddleA_fk.rp" "jnt_l_FingerMiddleA_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerMiddleA_fk.rpt" "jnt_l_FingerMiddleA_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerMiddleA_fk.r" "jnt_l_FingerMiddleA_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerMiddleA_fk.ro" "jnt_l_FingerMiddleA_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerMiddleA_fk.s" "jnt_l_FingerMiddleA_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerMiddleA_fk.pm" "jnt_l_FingerMiddleA_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerMiddleA_parentConstraint1.w0" "jnt_l_FingerMiddleA_parentConstraint1.tg[0].tw"
		;
connectAttr "off_l_FingerMiddleA_fk_parentConstraint.ctx" "off_l_FingerMiddleA_fk.tx"
		;
connectAttr "off_l_FingerMiddleA_fk_parentConstraint.cty" "off_l_FingerMiddleA_fk.ty"
		;
connectAttr "off_l_FingerMiddleA_fk_parentConstraint.ctz" "off_l_FingerMiddleA_fk.tz"
		;
connectAttr "off_l_FingerMiddleA_fk_parentConstraint.crx" "off_l_FingerMiddleA_fk.rx"
		;
connectAttr "off_l_FingerMiddleA_fk_parentConstraint.cry" "off_l_FingerMiddleA_fk.ry"
		;
connectAttr "off_l_FingerMiddleA_fk_parentConstraint.crz" "off_l_FingerMiddleA_fk.rz"
		;
connectAttr "off_l_FingerMiddleA_fk.ro" "off_l_FingerMiddleA_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerMiddleA_fk.pim" "off_l_FingerMiddleA_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerMiddleA_fk.rp" "off_l_FingerMiddleA_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerMiddleA_fk.rpt" "off_l_FingerMiddleA_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_hand.t" "off_l_FingerMiddleA_fk_parentConstraint.tg[0].tt";
connectAttr "ctl_l_hand.rp" "off_l_FingerMiddleA_fk_parentConstraint.tg[0].trp";
connectAttr "ctl_l_hand.rpt" "off_l_FingerMiddleA_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_l_hand.r" "off_l_FingerMiddleA_fk_parentConstraint.tg[0].tr";
connectAttr "ctl_l_hand.ro" "off_l_FingerMiddleA_fk_parentConstraint.tg[0].tro";
connectAttr "ctl_l_hand.s" "off_l_FingerMiddleA_fk_parentConstraint.tg[0].ts";
connectAttr "ctl_l_hand.pm" "off_l_FingerMiddleA_fk_parentConstraint.tg[0].tpm";
connectAttr "off_l_FingerMiddleA_fk_parentConstraint.w0" "off_l_FingerMiddleA_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_l_FingerMiddleB_fk_parentConstraint.ctx" "off_l_FingerMiddleB_fk.tx"
		;
connectAttr "off_l_FingerMiddleB_fk_parentConstraint.cty" "off_l_FingerMiddleB_fk.ty"
		;
connectAttr "off_l_FingerMiddleB_fk_parentConstraint.ctz" "off_l_FingerMiddleB_fk.tz"
		;
connectAttr "off_l_FingerMiddleB_fk_parentConstraint.crx" "off_l_FingerMiddleB_fk.rx"
		;
connectAttr "off_l_FingerMiddleB_fk_parentConstraint.cry" "off_l_FingerMiddleB_fk.ry"
		;
connectAttr "off_l_FingerMiddleB_fk_parentConstraint.crz" "off_l_FingerMiddleB_fk.rz"
		;
connectAttr "off_l_FingerMiddleB_fk.ro" "off_l_FingerMiddleB_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerMiddleB_fk.pim" "off_l_FingerMiddleB_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerMiddleB_fk.rp" "off_l_FingerMiddleB_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerMiddleB_fk.rpt" "off_l_FingerMiddleB_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_FingerMiddleA_fk.t" "off_l_FingerMiddleB_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_l_FingerMiddleA_fk.rp" "off_l_FingerMiddleB_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_l_FingerMiddleA_fk.rpt" "off_l_FingerMiddleB_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_l_FingerMiddleA_fk.r" "off_l_FingerMiddleB_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_l_FingerMiddleA_fk.ro" "off_l_FingerMiddleB_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_l_FingerMiddleA_fk.s" "off_l_FingerMiddleB_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_l_FingerMiddleA_fk.pm" "off_l_FingerMiddleB_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_l_FingerMiddleB_fk_parentConstraint.w0" "off_l_FingerMiddleB_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_l_FingerMiddleC_fk_parentConstraint.ctx" "off_l_FingerMiddleC_fk.tx"
		;
connectAttr "off_l_FingerMiddleC_fk_parentConstraint.cty" "off_l_FingerMiddleC_fk.ty"
		;
connectAttr "off_l_FingerMiddleC_fk_parentConstraint.ctz" "off_l_FingerMiddleC_fk.tz"
		;
connectAttr "off_l_FingerMiddleC_fk_parentConstraint.crx" "off_l_FingerMiddleC_fk.rx"
		;
connectAttr "off_l_FingerMiddleC_fk_parentConstraint.cry" "off_l_FingerMiddleC_fk.ry"
		;
connectAttr "off_l_FingerMiddleC_fk_parentConstraint.crz" "off_l_FingerMiddleC_fk.rz"
		;
connectAttr "off_l_FingerMiddleC_fk.ro" "off_l_FingerMiddleC_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerMiddleC_fk.pim" "off_l_FingerMiddleC_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerMiddleC_fk.rp" "off_l_FingerMiddleC_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerMiddleC_fk.rpt" "off_l_FingerMiddleC_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_FingerMiddleB_fk.t" "off_l_FingerMiddleC_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_l_FingerMiddleB_fk.rp" "off_l_FingerMiddleC_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_l_FingerMiddleB_fk.rpt" "off_l_FingerMiddleC_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_l_FingerMiddleB_fk.r" "off_l_FingerMiddleC_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_l_FingerMiddleB_fk.ro" "off_l_FingerMiddleC_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_l_FingerMiddleB_fk.s" "off_l_FingerMiddleC_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_l_FingerMiddleB_fk.pm" "off_l_FingerMiddleC_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_l_FingerMiddleC_fk_parentConstraint.w0" "off_l_FingerMiddleC_fk_parentConstraint.tg[0].tw"
		;
connectAttr "jnt_l_FingerRingA_parentConstraint1.ctx" "jnt_l_FingerRingA.tx";
connectAttr "jnt_l_FingerRingA_parentConstraint1.cty" "jnt_l_FingerRingA.ty";
connectAttr "jnt_l_FingerRingA_parentConstraint1.ctz" "jnt_l_FingerRingA.tz";
connectAttr "jnt_l_FingerRingA_parentConstraint1.crx" "jnt_l_FingerRingA.rx";
connectAttr "jnt_l_FingerRingA_parentConstraint1.cry" "jnt_l_FingerRingA.ry";
connectAttr "jnt_l_FingerRingA_parentConstraint1.crz" "jnt_l_FingerRingA.rz";
connectAttr "jnt_l_FingerRingA.s" "jnt_l_FingerRingB.is";
connectAttr "jnt_l_FingerRingB_parentConstraint1.ctx" "jnt_l_FingerRingB.tx";
connectAttr "jnt_l_FingerRingB_parentConstraint1.cty" "jnt_l_FingerRingB.ty";
connectAttr "jnt_l_FingerRingB_parentConstraint1.ctz" "jnt_l_FingerRingB.tz";
connectAttr "jnt_l_FingerRingB_parentConstraint1.crx" "jnt_l_FingerRingB.rx";
connectAttr "jnt_l_FingerRingB_parentConstraint1.cry" "jnt_l_FingerRingB.ry";
connectAttr "jnt_l_FingerRingB_parentConstraint1.crz" "jnt_l_FingerRingB.rz";
connectAttr "jnt_l_FingerRingB.s" "jnt_l_FingerRingC.is";
connectAttr "jnt_l_FingerRingC_parentConstraint1.ctx" "jnt_l_FingerRingC.tx";
connectAttr "jnt_l_FingerRingC_parentConstraint1.cty" "jnt_l_FingerRingC.ty";
connectAttr "jnt_l_FingerRingC_parentConstraint1.ctz" "jnt_l_FingerRingC.tz";
connectAttr "jnt_l_FingerRingC_parentConstraint1.crx" "jnt_l_FingerRingC.rx";
connectAttr "jnt_l_FingerRingC_parentConstraint1.cry" "jnt_l_FingerRingC.ry";
connectAttr "jnt_l_FingerRingC_parentConstraint1.crz" "jnt_l_FingerRingC.rz";
connectAttr "jnt_l_FingerRingC.s" "jnt_l_FingerRingEnd.is";
connectAttr "jnt_l_FingerRingC.ro" "jnt_l_FingerRingC_parentConstraint1.cro";
connectAttr "jnt_l_FingerRingC.pim" "jnt_l_FingerRingC_parentConstraint1.cpim";
connectAttr "jnt_l_FingerRingC.rp" "jnt_l_FingerRingC_parentConstraint1.crp";
connectAttr "jnt_l_FingerRingC.rpt" "jnt_l_FingerRingC_parentConstraint1.crt";
connectAttr "jnt_l_FingerRingC.jo" "jnt_l_FingerRingC_parentConstraint1.cjo";
connectAttr "ctl_l_FingerRingC_fk.t" "jnt_l_FingerRingC_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerRingC_fk.rp" "jnt_l_FingerRingC_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerRingC_fk.rpt" "jnt_l_FingerRingC_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerRingC_fk.r" "jnt_l_FingerRingC_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerRingC_fk.ro" "jnt_l_FingerRingC_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerRingC_fk.s" "jnt_l_FingerRingC_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerRingC_fk.pm" "jnt_l_FingerRingC_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerRingC_parentConstraint1.w0" "jnt_l_FingerRingC_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_FingerRingB.ro" "jnt_l_FingerRingB_parentConstraint1.cro";
connectAttr "jnt_l_FingerRingB.pim" "jnt_l_FingerRingB_parentConstraint1.cpim";
connectAttr "jnt_l_FingerRingB.rp" "jnt_l_FingerRingB_parentConstraint1.crp";
connectAttr "jnt_l_FingerRingB.rpt" "jnt_l_FingerRingB_parentConstraint1.crt";
connectAttr "jnt_l_FingerRingB.jo" "jnt_l_FingerRingB_parentConstraint1.cjo";
connectAttr "ctl_l_FingerRingB_fk.t" "jnt_l_FingerRingB_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerRingB_fk.rp" "jnt_l_FingerRingB_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerRingB_fk.rpt" "jnt_l_FingerRingB_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerRingB_fk.r" "jnt_l_FingerRingB_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerRingB_fk.ro" "jnt_l_FingerRingB_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerRingB_fk.s" "jnt_l_FingerRingB_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerRingB_fk.pm" "jnt_l_FingerRingB_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerRingB_parentConstraint1.w0" "jnt_l_FingerRingB_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_FingerRingA.ro" "jnt_l_FingerRingA_parentConstraint1.cro";
connectAttr "jnt_l_FingerRingA.pim" "jnt_l_FingerRingA_parentConstraint1.cpim";
connectAttr "jnt_l_FingerRingA.rp" "jnt_l_FingerRingA_parentConstraint1.crp";
connectAttr "jnt_l_FingerRingA.rpt" "jnt_l_FingerRingA_parentConstraint1.crt";
connectAttr "jnt_l_FingerRingA.jo" "jnt_l_FingerRingA_parentConstraint1.cjo";
connectAttr "ctl_l_FingerRingA_fk.t" "jnt_l_FingerRingA_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerRingA_fk.rp" "jnt_l_FingerRingA_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerRingA_fk.rpt" "jnt_l_FingerRingA_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerRingA_fk.r" "jnt_l_FingerRingA_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerRingA_fk.ro" "jnt_l_FingerRingA_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerRingA_fk.s" "jnt_l_FingerRingA_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerRingA_fk.pm" "jnt_l_FingerRingA_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerRingA_parentConstraint1.w0" "jnt_l_FingerRingA_parentConstraint1.tg[0].tw"
		;
connectAttr "off_l_FingerRingA_fk_parentConstraint.ctx" "off_l_FingerRingA_fk.tx"
		;
connectAttr "off_l_FingerRingA_fk_parentConstraint.cty" "off_l_FingerRingA_fk.ty"
		;
connectAttr "off_l_FingerRingA_fk_parentConstraint.ctz" "off_l_FingerRingA_fk.tz"
		;
connectAttr "off_l_FingerRingA_fk_parentConstraint.crx" "off_l_FingerRingA_fk.rx"
		;
connectAttr "off_l_FingerRingA_fk_parentConstraint.cry" "off_l_FingerRingA_fk.ry"
		;
connectAttr "off_l_FingerRingA_fk_parentConstraint.crz" "off_l_FingerRingA_fk.rz"
		;
connectAttr "off_l_FingerRingA_fk.ro" "off_l_FingerRingA_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerRingA_fk.pim" "off_l_FingerRingA_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerRingA_fk.rp" "off_l_FingerRingA_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerRingA_fk.rpt" "off_l_FingerRingA_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_hand.t" "off_l_FingerRingA_fk_parentConstraint.tg[0].tt";
connectAttr "ctl_l_hand.rp" "off_l_FingerRingA_fk_parentConstraint.tg[0].trp";
connectAttr "ctl_l_hand.rpt" "off_l_FingerRingA_fk_parentConstraint.tg[0].trt";
connectAttr "ctl_l_hand.r" "off_l_FingerRingA_fk_parentConstraint.tg[0].tr";
connectAttr "ctl_l_hand.ro" "off_l_FingerRingA_fk_parentConstraint.tg[0].tro";
connectAttr "ctl_l_hand.s" "off_l_FingerRingA_fk_parentConstraint.tg[0].ts";
connectAttr "ctl_l_hand.pm" "off_l_FingerRingA_fk_parentConstraint.tg[0].tpm";
connectAttr "off_l_FingerRingA_fk_parentConstraint.w0" "off_l_FingerRingA_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_l_FingerRingB_fk_parentConstraint.ctx" "off_l_FingerRingB_fk.tx"
		;
connectAttr "off_l_FingerRingB_fk_parentConstraint.cty" "off_l_FingerRingB_fk.ty"
		;
connectAttr "off_l_FingerRingB_fk_parentConstraint.ctz" "off_l_FingerRingB_fk.tz"
		;
connectAttr "off_l_FingerRingB_fk_parentConstraint.crx" "off_l_FingerRingB_fk.rx"
		;
connectAttr "off_l_FingerRingB_fk_parentConstraint.cry" "off_l_FingerRingB_fk.ry"
		;
connectAttr "off_l_FingerRingB_fk_parentConstraint.crz" "off_l_FingerRingB_fk.rz"
		;
connectAttr "off_l_FingerRingB_fk.ro" "off_l_FingerRingB_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerRingB_fk.pim" "off_l_FingerRingB_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerRingB_fk.rp" "off_l_FingerRingB_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerRingB_fk.rpt" "off_l_FingerRingB_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_FingerRingA_fk.t" "off_l_FingerRingB_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_l_FingerRingA_fk.rp" "off_l_FingerRingB_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_l_FingerRingA_fk.rpt" "off_l_FingerRingB_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_l_FingerRingA_fk.r" "off_l_FingerRingB_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_l_FingerRingA_fk.ro" "off_l_FingerRingB_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_l_FingerRingA_fk.s" "off_l_FingerRingB_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_l_FingerRingA_fk.pm" "off_l_FingerRingB_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_l_FingerRingB_fk_parentConstraint.w0" "off_l_FingerRingB_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_l_FingerRingC_fk_parentConstraint.ctx" "off_l_FingerRingC_fk.tx"
		;
connectAttr "off_l_FingerRingC_fk_parentConstraint.cty" "off_l_FingerRingC_fk.ty"
		;
connectAttr "off_l_FingerRingC_fk_parentConstraint.ctz" "off_l_FingerRingC_fk.tz"
		;
connectAttr "off_l_FingerRingC_fk_parentConstraint.crx" "off_l_FingerRingC_fk.rx"
		;
connectAttr "off_l_FingerRingC_fk_parentConstraint.cry" "off_l_FingerRingC_fk.ry"
		;
connectAttr "off_l_FingerRingC_fk_parentConstraint.crz" "off_l_FingerRingC_fk.rz"
		;
connectAttr "off_l_FingerRingC_fk.ro" "off_l_FingerRingC_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerRingC_fk.pim" "off_l_FingerRingC_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerRingC_fk.rp" "off_l_FingerRingC_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerRingC_fk.rpt" "off_l_FingerRingC_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_FingerRingB_fk.t" "off_l_FingerRingC_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_l_FingerRingB_fk.rp" "off_l_FingerRingC_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_l_FingerRingB_fk.rpt" "off_l_FingerRingC_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_l_FingerRingB_fk.r" "off_l_FingerRingC_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_l_FingerRingB_fk.ro" "off_l_FingerRingC_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_l_FingerRingB_fk.s" "off_l_FingerRingC_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_l_FingerRingB_fk.pm" "off_l_FingerRingC_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_l_FingerRingC_fk_parentConstraint.w0" "off_l_FingerRingC_fk_parentConstraint.tg[0].tw"
		;
connectAttr "jnt_l_FingerPinkyA_parentConstraint1.ctx" "jnt_l_FingerPinkyA.tx";
connectAttr "jnt_l_FingerPinkyA_parentConstraint1.cty" "jnt_l_FingerPinkyA.ty";
connectAttr "jnt_l_FingerPinkyA_parentConstraint1.ctz" "jnt_l_FingerPinkyA.tz";
connectAttr "jnt_l_FingerPinkyA_parentConstraint1.crx" "jnt_l_FingerPinkyA.rx";
connectAttr "jnt_l_FingerPinkyA_parentConstraint1.cry" "jnt_l_FingerPinkyA.ry";
connectAttr "jnt_l_FingerPinkyA_parentConstraint1.crz" "jnt_l_FingerPinkyA.rz";
connectAttr "jnt_l_FingerPinkyA.s" "jnt_l_FingerPinkyB.is";
connectAttr "jnt_l_FingerPinkyB_parentConstraint1.ctx" "jnt_l_FingerPinkyB.tx";
connectAttr "jnt_l_FingerPinkyB_parentConstraint1.cty" "jnt_l_FingerPinkyB.ty";
connectAttr "jnt_l_FingerPinkyB_parentConstraint1.ctz" "jnt_l_FingerPinkyB.tz";
connectAttr "jnt_l_FingerPinkyB_parentConstraint1.crx" "jnt_l_FingerPinkyB.rx";
connectAttr "jnt_l_FingerPinkyB_parentConstraint1.cry" "jnt_l_FingerPinkyB.ry";
connectAttr "jnt_l_FingerPinkyB_parentConstraint1.crz" "jnt_l_FingerPinkyB.rz";
connectAttr "jnt_l_FingerPinkyB.s" "jnt_l_FingerPinkyC.is";
connectAttr "jnt_l_FingerPinkyC_parentConstraint1.ctx" "jnt_l_FingerPinkyC.tx";
connectAttr "jnt_l_FingerPinkyC_parentConstraint1.cty" "jnt_l_FingerPinkyC.ty";
connectAttr "jnt_l_FingerPinkyC_parentConstraint1.ctz" "jnt_l_FingerPinkyC.tz";
connectAttr "jnt_l_FingerPinkyC_parentConstraint1.crx" "jnt_l_FingerPinkyC.rx";
connectAttr "jnt_l_FingerPinkyC_parentConstraint1.cry" "jnt_l_FingerPinkyC.ry";
connectAttr "jnt_l_FingerPinkyC_parentConstraint1.crz" "jnt_l_FingerPinkyC.rz";
connectAttr "jnt_l_FingerPinkyC.s" "jnt_l_FingerPinkyD.is";
connectAttr "jnt_l_FingerPinkyD_parentConstraint1.ctx" "jnt_l_FingerPinkyD.tx";
connectAttr "jnt_l_FingerPinkyD_parentConstraint1.cty" "jnt_l_FingerPinkyD.ty";
connectAttr "jnt_l_FingerPinkyD_parentConstraint1.ctz" "jnt_l_FingerPinkyD.tz";
connectAttr "jnt_l_FingerPinkyD_parentConstraint1.crx" "jnt_l_FingerPinkyD.rx";
connectAttr "jnt_l_FingerPinkyD_parentConstraint1.cry" "jnt_l_FingerPinkyD.ry";
connectAttr "jnt_l_FingerPinkyD_parentConstraint1.crz" "jnt_l_FingerPinkyD.rz";
connectAttr "jnt_l_FingerPinkyD.s" "jnt_l_FingerPinkyEnd.is";
connectAttr "jnt_l_FingerPinkyD.ro" "jnt_l_FingerPinkyD_parentConstraint1.cro";
connectAttr "jnt_l_FingerPinkyD.pim" "jnt_l_FingerPinkyD_parentConstraint1.cpim"
		;
connectAttr "jnt_l_FingerPinkyD.rp" "jnt_l_FingerPinkyD_parentConstraint1.crp";
connectAttr "jnt_l_FingerPinkyD.rpt" "jnt_l_FingerPinkyD_parentConstraint1.crt";
connectAttr "jnt_l_FingerPinkyD.jo" "jnt_l_FingerPinkyD_parentConstraint1.cjo";
connectAttr "ctl_l_FingerPinkyD_fk.t" "jnt_l_FingerPinkyD_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerPinkyD_fk.rp" "jnt_l_FingerPinkyD_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerPinkyD_fk.rpt" "jnt_l_FingerPinkyD_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerPinkyD_fk.r" "jnt_l_FingerPinkyD_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerPinkyD_fk.ro" "jnt_l_FingerPinkyD_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerPinkyD_fk.s" "jnt_l_FingerPinkyD_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerPinkyD_fk.pm" "jnt_l_FingerPinkyD_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerPinkyD_parentConstraint1.w0" "jnt_l_FingerPinkyD_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_FingerPinkyC.ro" "jnt_l_FingerPinkyC_parentConstraint1.cro";
connectAttr "jnt_l_FingerPinkyC.pim" "jnt_l_FingerPinkyC_parentConstraint1.cpim"
		;
connectAttr "jnt_l_FingerPinkyC.rp" "jnt_l_FingerPinkyC_parentConstraint1.crp";
connectAttr "jnt_l_FingerPinkyC.rpt" "jnt_l_FingerPinkyC_parentConstraint1.crt";
connectAttr "jnt_l_FingerPinkyC.jo" "jnt_l_FingerPinkyC_parentConstraint1.cjo";
connectAttr "ctl_l_FingerPinkyC_fk.t" "jnt_l_FingerPinkyC_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerPinkyC_fk.rp" "jnt_l_FingerPinkyC_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerPinkyC_fk.rpt" "jnt_l_FingerPinkyC_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerPinkyC_fk.r" "jnt_l_FingerPinkyC_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerPinkyC_fk.ro" "jnt_l_FingerPinkyC_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerPinkyC_fk.s" "jnt_l_FingerPinkyC_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerPinkyC_fk.pm" "jnt_l_FingerPinkyC_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerPinkyC_parentConstraint1.w0" "jnt_l_FingerPinkyC_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_FingerPinkyB.ro" "jnt_l_FingerPinkyB_parentConstraint1.cro";
connectAttr "jnt_l_FingerPinkyB.pim" "jnt_l_FingerPinkyB_parentConstraint1.cpim"
		;
connectAttr "jnt_l_FingerPinkyB.rp" "jnt_l_FingerPinkyB_parentConstraint1.crp";
connectAttr "jnt_l_FingerPinkyB.rpt" "jnt_l_FingerPinkyB_parentConstraint1.crt";
connectAttr "jnt_l_FingerPinkyB.jo" "jnt_l_FingerPinkyB_parentConstraint1.cjo";
connectAttr "ctl_l_FingerPinkyB_fk.t" "jnt_l_FingerPinkyB_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerPinkyB_fk.rp" "jnt_l_FingerPinkyB_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerPinkyB_fk.rpt" "jnt_l_FingerPinkyB_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerPinkyB_fk.r" "jnt_l_FingerPinkyB_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerPinkyB_fk.ro" "jnt_l_FingerPinkyB_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerPinkyB_fk.s" "jnt_l_FingerPinkyB_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerPinkyB_fk.pm" "jnt_l_FingerPinkyB_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerPinkyB_parentConstraint1.w0" "jnt_l_FingerPinkyB_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_l_FingerPinkyA.ro" "jnt_l_FingerPinkyA_parentConstraint1.cro";
connectAttr "jnt_l_FingerPinkyA.pim" "jnt_l_FingerPinkyA_parentConstraint1.cpim"
		;
connectAttr "jnt_l_FingerPinkyA.rp" "jnt_l_FingerPinkyA_parentConstraint1.crp";
connectAttr "jnt_l_FingerPinkyA.rpt" "jnt_l_FingerPinkyA_parentConstraint1.crt";
connectAttr "jnt_l_FingerPinkyA.jo" "jnt_l_FingerPinkyA_parentConstraint1.cjo";
connectAttr "ctl_l_FingerPinkyA_fk.t" "jnt_l_FingerPinkyA_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_l_FingerPinkyA_fk.rp" "jnt_l_FingerPinkyA_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_l_FingerPinkyA_fk.rpt" "jnt_l_FingerPinkyA_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_l_FingerPinkyA_fk.r" "jnt_l_FingerPinkyA_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_l_FingerPinkyA_fk.ro" "jnt_l_FingerPinkyA_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_l_FingerPinkyA_fk.s" "jnt_l_FingerPinkyA_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_l_FingerPinkyA_fk.pm" "jnt_l_FingerPinkyA_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerPinkyA_parentConstraint1.w0" "jnt_l_FingerPinkyA_parentConstraint1.tg[0].tw"
		;
connectAttr "off_l_FingerPinkyA_fk_parentConstraint.ctx" "off_l_FingerPinkyA_fk.tx"
		;
connectAttr "off_l_FingerPinkyA_fk_parentConstraint.cty" "off_l_FingerPinkyA_fk.ty"
		;
connectAttr "off_l_FingerPinkyA_fk_parentConstraint.ctz" "off_l_FingerPinkyA_fk.tz"
		;
connectAttr "off_l_FingerPinkyA_fk_parentConstraint.crx" "off_l_FingerPinkyA_fk.rx"
		;
connectAttr "off_l_FingerPinkyA_fk_parentConstraint.cry" "off_l_FingerPinkyA_fk.ry"
		;
connectAttr "off_l_FingerPinkyA_fk_parentConstraint.crz" "off_l_FingerPinkyA_fk.rz"
		;
connectAttr "off_l_FingerPinkyA_fk.ro" "off_l_FingerPinkyA_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerPinkyA_fk.pim" "off_l_FingerPinkyA_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerPinkyA_fk.rp" "off_l_FingerPinkyA_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerPinkyA_fk.rpt" "off_l_FingerPinkyA_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_hand.t" "off_l_FingerPinkyA_fk_parentConstraint.tg[0].tt";
connectAttr "ctl_l_hand.rp" "off_l_FingerPinkyA_fk_parentConstraint.tg[0].trp";
connectAttr "ctl_l_hand.rpt" "off_l_FingerPinkyA_fk_parentConstraint.tg[0].trt";
connectAttr "ctl_l_hand.r" "off_l_FingerPinkyA_fk_parentConstraint.tg[0].tr";
connectAttr "ctl_l_hand.ro" "off_l_FingerPinkyA_fk_parentConstraint.tg[0].tro";
connectAttr "ctl_l_hand.s" "off_l_FingerPinkyA_fk_parentConstraint.tg[0].ts";
connectAttr "ctl_l_hand.pm" "off_l_FingerPinkyA_fk_parentConstraint.tg[0].tpm";
connectAttr "off_l_FingerPinkyA_fk_parentConstraint.w0" "off_l_FingerPinkyA_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_l_FingerPinkyB_fk_parentConstraint.ctx" "off_l_FingerPinkyB_fk.tx"
		;
connectAttr "off_l_FingerPinkyB_fk_parentConstraint.cty" "off_l_FingerPinkyB_fk.ty"
		;
connectAttr "off_l_FingerPinkyB_fk_parentConstraint.ctz" "off_l_FingerPinkyB_fk.tz"
		;
connectAttr "off_l_FingerPinkyB_fk_parentConstraint.crx" "off_l_FingerPinkyB_fk.rx"
		;
connectAttr "off_l_FingerPinkyB_fk_parentConstraint.cry" "off_l_FingerPinkyB_fk.ry"
		;
connectAttr "off_l_FingerPinkyB_fk_parentConstraint.crz" "off_l_FingerPinkyB_fk.rz"
		;
connectAttr "off_l_FingerPinkyB_fk.ro" "off_l_FingerPinkyB_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerPinkyB_fk.pim" "off_l_FingerPinkyB_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerPinkyB_fk.rp" "off_l_FingerPinkyB_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerPinkyB_fk.rpt" "off_l_FingerPinkyB_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_FingerPinkyA_fk.t" "off_l_FingerPinkyB_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_l_FingerPinkyA_fk.rp" "off_l_FingerPinkyB_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_l_FingerPinkyA_fk.rpt" "off_l_FingerPinkyB_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_l_FingerPinkyA_fk.r" "off_l_FingerPinkyB_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_l_FingerPinkyA_fk.ro" "off_l_FingerPinkyB_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_l_FingerPinkyA_fk.s" "off_l_FingerPinkyB_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_l_FingerPinkyA_fk.pm" "off_l_FingerPinkyB_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_l_FingerPinkyB_fk_parentConstraint.w0" "off_l_FingerPinkyB_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_l_FingerPinkyC_fk_parentConstraint.ctx" "off_l_FingerPinkyC_fk.tx"
		;
connectAttr "off_l_FingerPinkyC_fk_parentConstraint.cty" "off_l_FingerPinkyC_fk.ty"
		;
connectAttr "off_l_FingerPinkyC_fk_parentConstraint.ctz" "off_l_FingerPinkyC_fk.tz"
		;
connectAttr "off_l_FingerPinkyC_fk_parentConstraint.crx" "off_l_FingerPinkyC_fk.rx"
		;
connectAttr "off_l_FingerPinkyC_fk_parentConstraint.cry" "off_l_FingerPinkyC_fk.ry"
		;
connectAttr "off_l_FingerPinkyC_fk_parentConstraint.crz" "off_l_FingerPinkyC_fk.rz"
		;
connectAttr "off_l_FingerPinkyC_fk.ro" "off_l_FingerPinkyC_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerPinkyC_fk.pim" "off_l_FingerPinkyC_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerPinkyC_fk.rp" "off_l_FingerPinkyC_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerPinkyC_fk.rpt" "off_l_FingerPinkyC_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_FingerPinkyB_fk.t" "off_l_FingerPinkyC_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_l_FingerPinkyB_fk.rp" "off_l_FingerPinkyC_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_l_FingerPinkyB_fk.rpt" "off_l_FingerPinkyC_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_l_FingerPinkyB_fk.r" "off_l_FingerPinkyC_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_l_FingerPinkyB_fk.ro" "off_l_FingerPinkyC_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_l_FingerPinkyB_fk.s" "off_l_FingerPinkyC_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_l_FingerPinkyB_fk.pm" "off_l_FingerPinkyC_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_l_FingerPinkyC_fk_parentConstraint.w0" "off_l_FingerPinkyC_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_l_FingerPinkyD_fk_parentConstraint.ctx" "off_l_FingerPinkyD_fk.tx"
		;
connectAttr "off_l_FingerPinkyD_fk_parentConstraint.cty" "off_l_FingerPinkyD_fk.ty"
		;
connectAttr "off_l_FingerPinkyD_fk_parentConstraint.ctz" "off_l_FingerPinkyD_fk.tz"
		;
connectAttr "off_l_FingerPinkyD_fk_parentConstraint.crx" "off_l_FingerPinkyD_fk.rx"
		;
connectAttr "off_l_FingerPinkyD_fk_parentConstraint.cry" "off_l_FingerPinkyD_fk.ry"
		;
connectAttr "off_l_FingerPinkyD_fk_parentConstraint.crz" "off_l_FingerPinkyD_fk.rz"
		;
connectAttr "off_l_FingerPinkyD_fk.ro" "off_l_FingerPinkyD_fk_parentConstraint.cro"
		;
connectAttr "off_l_FingerPinkyD_fk.pim" "off_l_FingerPinkyD_fk_parentConstraint.cpim"
		;
connectAttr "off_l_FingerPinkyD_fk.rp" "off_l_FingerPinkyD_fk_parentConstraint.crp"
		;
connectAttr "off_l_FingerPinkyD_fk.rpt" "off_l_FingerPinkyD_fk_parentConstraint.crt"
		;
connectAttr "ctl_l_FingerPinkyC_fk.t" "off_l_FingerPinkyD_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_l_FingerPinkyC_fk.rp" "off_l_FingerPinkyD_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_l_FingerPinkyC_fk.rpt" "off_l_FingerPinkyD_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_l_FingerPinkyC_fk.r" "off_l_FingerPinkyD_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_l_FingerPinkyC_fk.ro" "off_l_FingerPinkyD_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_l_FingerPinkyC_fk.s" "off_l_FingerPinkyD_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_l_FingerPinkyC_fk.pm" "off_l_FingerPinkyD_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_l_FingerPinkyD_fk_parentConstraint.w0" "off_l_FingerPinkyD_fk_parentConstraint.tg[0].tw"
		;
connectAttr "jnt_r_FingerThumbA_parentConstraint1.ctx" "jnt_r_FingerThumbA.tx";
connectAttr "jnt_r_FingerThumbA_parentConstraint1.cty" "jnt_r_FingerThumbA.ty";
connectAttr "jnt_r_FingerThumbA_parentConstraint1.ctz" "jnt_r_FingerThumbA.tz";
connectAttr "jnt_r_FingerThumbA_parentConstraint1.crx" "jnt_r_FingerThumbA.rx";
connectAttr "jnt_r_FingerThumbA_parentConstraint1.cry" "jnt_r_FingerThumbA.ry";
connectAttr "jnt_r_FingerThumbA_parentConstraint1.crz" "jnt_r_FingerThumbA.rz";
connectAttr "jnt_r_FingerThumbA.s" "jnt_r_FingerThumbB.is";
connectAttr "jnt_r_FingerThumbB_parentConstraint1.ctx" "jnt_r_FingerThumbB.tx";
connectAttr "jnt_r_FingerThumbB_parentConstraint1.cty" "jnt_r_FingerThumbB.ty";
connectAttr "jnt_r_FingerThumbB_parentConstraint1.ctz" "jnt_r_FingerThumbB.tz";
connectAttr "jnt_r_FingerThumbB_parentConstraint1.crx" "jnt_r_FingerThumbB.rx";
connectAttr "jnt_r_FingerThumbB_parentConstraint1.cry" "jnt_r_FingerThumbB.ry";
connectAttr "jnt_r_FingerThumbB_parentConstraint1.crz" "jnt_r_FingerThumbB.rz";
connectAttr "jnt_r_FingerThumbB.s" "jnt_r_FingerThumbC.is";
connectAttr "jnt_r_FingerThumbC_parentConstraint1.ctx" "jnt_r_FingerThumbC.tx";
connectAttr "jnt_r_FingerThumbC_parentConstraint1.cty" "jnt_r_FingerThumbC.ty";
connectAttr "jnt_r_FingerThumbC_parentConstraint1.ctz" "jnt_r_FingerThumbC.tz";
connectAttr "jnt_r_FingerThumbC_parentConstraint1.crx" "jnt_r_FingerThumbC.rx";
connectAttr "jnt_r_FingerThumbC_parentConstraint1.cry" "jnt_r_FingerThumbC.ry";
connectAttr "jnt_r_FingerThumbC_parentConstraint1.crz" "jnt_r_FingerThumbC.rz";
connectAttr "jnt_r_FingerThumbC.s" "jnt_r_FingerThumbEnd.is";
connectAttr "jnt_r_FingerThumbC.ro" "jnt_r_FingerThumbC_parentConstraint1.cro";
connectAttr "jnt_r_FingerThumbC.pim" "jnt_r_FingerThumbC_parentConstraint1.cpim"
		;
connectAttr "jnt_r_FingerThumbC.rp" "jnt_r_FingerThumbC_parentConstraint1.crp";
connectAttr "jnt_r_FingerThumbC.rpt" "jnt_r_FingerThumbC_parentConstraint1.crt";
connectAttr "jnt_r_FingerThumbC.jo" "jnt_r_FingerThumbC_parentConstraint1.cjo";
connectAttr "ctl_r_FingerThumbC_fk.t" "jnt_r_FingerThumbC_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerThumbC_fk.rp" "jnt_r_FingerThumbC_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerThumbC_fk.rpt" "jnt_r_FingerThumbC_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerThumbC_fk.r" "jnt_r_FingerThumbC_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerThumbC_fk.ro" "jnt_r_FingerThumbC_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerThumbC_fk.s" "jnt_r_FingerThumbC_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerThumbC_fk.pm" "jnt_r_FingerThumbC_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerThumbC_parentConstraint1.w0" "jnt_r_FingerThumbC_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_FingerThumbB.ro" "jnt_r_FingerThumbB_parentConstraint1.cro";
connectAttr "jnt_r_FingerThumbB.pim" "jnt_r_FingerThumbB_parentConstraint1.cpim"
		;
connectAttr "jnt_r_FingerThumbB.rp" "jnt_r_FingerThumbB_parentConstraint1.crp";
connectAttr "jnt_r_FingerThumbB.rpt" "jnt_r_FingerThumbB_parentConstraint1.crt";
connectAttr "jnt_r_FingerThumbB.jo" "jnt_r_FingerThumbB_parentConstraint1.cjo";
connectAttr "ctl_r_FingerThumbB_fk.t" "jnt_r_FingerThumbB_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerThumbB_fk.rp" "jnt_r_FingerThumbB_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerThumbB_fk.rpt" "jnt_r_FingerThumbB_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerThumbB_fk.r" "jnt_r_FingerThumbB_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerThumbB_fk.ro" "jnt_r_FingerThumbB_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerThumbB_fk.s" "jnt_r_FingerThumbB_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerThumbB_fk.pm" "jnt_r_FingerThumbB_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerThumbB_parentConstraint1.w0" "jnt_r_FingerThumbB_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_FingerThumbA.ro" "jnt_r_FingerThumbA_parentConstraint1.cro";
connectAttr "jnt_r_FingerThumbA.pim" "jnt_r_FingerThumbA_parentConstraint1.cpim"
		;
connectAttr "jnt_r_FingerThumbA.rp" "jnt_r_FingerThumbA_parentConstraint1.crp";
connectAttr "jnt_r_FingerThumbA.rpt" "jnt_r_FingerThumbA_parentConstraint1.crt";
connectAttr "jnt_r_FingerThumbA.jo" "jnt_r_FingerThumbA_parentConstraint1.cjo";
connectAttr "ctl_r_FingerThumbA_fk.t" "jnt_r_FingerThumbA_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerThumbA_fk.rp" "jnt_r_FingerThumbA_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerThumbA_fk.rpt" "jnt_r_FingerThumbA_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerThumbA_fk.r" "jnt_r_FingerThumbA_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerThumbA_fk.ro" "jnt_r_FingerThumbA_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerThumbA_fk.s" "jnt_r_FingerThumbA_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerThumbA_fk.pm" "jnt_r_FingerThumbA_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerThumbA_parentConstraint1.w0" "jnt_r_FingerThumbA_parentConstraint1.tg[0].tw"
		;
connectAttr "off_r_FingerThumbA_fk_parentConstraint.ctx" "off_r_FingerThumbA_fk.tx"
		;
connectAttr "off_r_FingerThumbA_fk_parentConstraint.cty" "off_r_FingerThumbA_fk.ty"
		;
connectAttr "off_r_FingerThumbA_fk_parentConstraint.ctz" "off_r_FingerThumbA_fk.tz"
		;
connectAttr "off_r_FingerThumbA_fk_parentConstraint.crx" "off_r_FingerThumbA_fk.rx"
		;
connectAttr "off_r_FingerThumbA_fk_parentConstraint.cry" "off_r_FingerThumbA_fk.ry"
		;
connectAttr "off_r_FingerThumbA_fk_parentConstraint.crz" "off_r_FingerThumbA_fk.rz"
		;
connectAttr "off_r_FingerThumbA_fk.ro" "off_r_FingerThumbA_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerThumbA_fk.pim" "off_r_FingerThumbA_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerThumbA_fk.rp" "off_r_FingerThumbA_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerThumbA_fk.rpt" "off_r_FingerThumbA_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_hand.t" "off_r_FingerThumbA_fk_parentConstraint.tg[0].tt";
connectAttr "ctl_r_hand.rp" "off_r_FingerThumbA_fk_parentConstraint.tg[0].trp";
connectAttr "ctl_r_hand.rpt" "off_r_FingerThumbA_fk_parentConstraint.tg[0].trt";
connectAttr "ctl_r_hand.r" "off_r_FingerThumbA_fk_parentConstraint.tg[0].tr";
connectAttr "ctl_r_hand.ro" "off_r_FingerThumbA_fk_parentConstraint.tg[0].tro";
connectAttr "ctl_r_hand.s" "off_r_FingerThumbA_fk_parentConstraint.tg[0].ts";
connectAttr "ctl_r_hand.pm" "off_r_FingerThumbA_fk_parentConstraint.tg[0].tpm";
connectAttr "off_r_FingerThumbA_fk_parentConstraint.w0" "off_r_FingerThumbA_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_r_FingerThumbB_fk_parentConstraint.ctx" "off_r_FingerThumbB_fk.tx"
		;
connectAttr "off_r_FingerThumbB_fk_parentConstraint.cty" "off_r_FingerThumbB_fk.ty"
		;
connectAttr "off_r_FingerThumbB_fk_parentConstraint.ctz" "off_r_FingerThumbB_fk.tz"
		;
connectAttr "off_r_FingerThumbB_fk_parentConstraint.crx" "off_r_FingerThumbB_fk.rx"
		;
connectAttr "off_r_FingerThumbB_fk_parentConstraint.cry" "off_r_FingerThumbB_fk.ry"
		;
connectAttr "off_r_FingerThumbB_fk_parentConstraint.crz" "off_r_FingerThumbB_fk.rz"
		;
connectAttr "off_r_FingerThumbB_fk.ro" "off_r_FingerThumbB_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerThumbB_fk.pim" "off_r_FingerThumbB_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerThumbB_fk.rp" "off_r_FingerThumbB_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerThumbB_fk.rpt" "off_r_FingerThumbB_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_FingerThumbA_fk.t" "off_r_FingerThumbB_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_r_FingerThumbA_fk.rp" "off_r_FingerThumbB_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_r_FingerThumbA_fk.rpt" "off_r_FingerThumbB_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_r_FingerThumbA_fk.r" "off_r_FingerThumbB_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_r_FingerThumbA_fk.ro" "off_r_FingerThumbB_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_r_FingerThumbA_fk.s" "off_r_FingerThumbB_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_r_FingerThumbA_fk.pm" "off_r_FingerThumbB_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_r_FingerThumbB_fk_parentConstraint.w0" "off_r_FingerThumbB_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_r_FingerThumbC_fk_parentConstraint.ctx" "off_r_FingerThumbC_fk.tx"
		;
connectAttr "off_r_FingerThumbC_fk_parentConstraint.cty" "off_r_FingerThumbC_fk.ty"
		;
connectAttr "off_r_FingerThumbC_fk_parentConstraint.ctz" "off_r_FingerThumbC_fk.tz"
		;
connectAttr "off_r_FingerThumbC_fk_parentConstraint.crx" "off_r_FingerThumbC_fk.rx"
		;
connectAttr "off_r_FingerThumbC_fk_parentConstraint.cry" "off_r_FingerThumbC_fk.ry"
		;
connectAttr "off_r_FingerThumbC_fk_parentConstraint.crz" "off_r_FingerThumbC_fk.rz"
		;
connectAttr "off_r_FingerThumbC_fk.ro" "off_r_FingerThumbC_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerThumbC_fk.pim" "off_r_FingerThumbC_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerThumbC_fk.rp" "off_r_FingerThumbC_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerThumbC_fk.rpt" "off_r_FingerThumbC_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_FingerThumbB_fk.t" "off_r_FingerThumbC_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_r_FingerThumbB_fk.rp" "off_r_FingerThumbC_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_r_FingerThumbB_fk.rpt" "off_r_FingerThumbC_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_r_FingerThumbB_fk.r" "off_r_FingerThumbC_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_r_FingerThumbB_fk.ro" "off_r_FingerThumbC_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_r_FingerThumbB_fk.s" "off_r_FingerThumbC_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_r_FingerThumbB_fk.pm" "off_r_FingerThumbC_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_r_FingerThumbC_fk_parentConstraint.w0" "off_r_FingerThumbC_fk_parentConstraint.tg[0].tw"
		;
connectAttr "jnt_r_FingerIndexA_parentConstraint1.ctx" "jnt_r_FingerIndexA.tx";
connectAttr "jnt_r_FingerIndexA_parentConstraint1.cty" "jnt_r_FingerIndexA.ty";
connectAttr "jnt_r_FingerIndexA_parentConstraint1.ctz" "jnt_r_FingerIndexA.tz";
connectAttr "jnt_r_FingerIndexA_parentConstraint1.crx" "jnt_r_FingerIndexA.rx";
connectAttr "jnt_r_FingerIndexA_parentConstraint1.cry" "jnt_r_FingerIndexA.ry";
connectAttr "jnt_r_FingerIndexA_parentConstraint1.crz" "jnt_r_FingerIndexA.rz";
connectAttr "jnt_r_FingerIndexA.s" "jnt_r_FingerIndexB.is";
connectAttr "jnt_r_FingerIndexB_parentConstraint1.ctx" "jnt_r_FingerIndexB.tx";
connectAttr "jnt_r_FingerIndexB_parentConstraint1.cty" "jnt_r_FingerIndexB.ty";
connectAttr "jnt_r_FingerIndexB_parentConstraint1.ctz" "jnt_r_FingerIndexB.tz";
connectAttr "jnt_r_FingerIndexB_parentConstraint1.crx" "jnt_r_FingerIndexB.rx";
connectAttr "jnt_r_FingerIndexB_parentConstraint1.cry" "jnt_r_FingerIndexB.ry";
connectAttr "jnt_r_FingerIndexB_parentConstraint1.crz" "jnt_r_FingerIndexB.rz";
connectAttr "jnt_r_FingerIndexB.s" "jnt_r_FingerIndexC.is";
connectAttr "jnt_r_FingerIndexC_parentConstraint1.ctx" "jnt_r_FingerIndexC.tx";
connectAttr "jnt_r_FingerIndexC_parentConstraint1.cty" "jnt_r_FingerIndexC.ty";
connectAttr "jnt_r_FingerIndexC_parentConstraint1.ctz" "jnt_r_FingerIndexC.tz";
connectAttr "jnt_r_FingerIndexC_parentConstraint1.crx" "jnt_r_FingerIndexC.rx";
connectAttr "jnt_r_FingerIndexC_parentConstraint1.cry" "jnt_r_FingerIndexC.ry";
connectAttr "jnt_r_FingerIndexC_parentConstraint1.crz" "jnt_r_FingerIndexC.rz";
connectAttr "jnt_r_FingerIndexC.s" "jnt_r_FingerIndexEnd.is";
connectAttr "jnt_r_FingerIndexC.ro" "jnt_r_FingerIndexC_parentConstraint1.cro";
connectAttr "jnt_r_FingerIndexC.pim" "jnt_r_FingerIndexC_parentConstraint1.cpim"
		;
connectAttr "jnt_r_FingerIndexC.rp" "jnt_r_FingerIndexC_parentConstraint1.crp";
connectAttr "jnt_r_FingerIndexC.rpt" "jnt_r_FingerIndexC_parentConstraint1.crt";
connectAttr "jnt_r_FingerIndexC.jo" "jnt_r_FingerIndexC_parentConstraint1.cjo";
connectAttr "ctl_r_FingerIndexC_fk.t" "jnt_r_FingerIndexC_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerIndexC_fk.rp" "jnt_r_FingerIndexC_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerIndexC_fk.rpt" "jnt_r_FingerIndexC_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerIndexC_fk.r" "jnt_r_FingerIndexC_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerIndexC_fk.ro" "jnt_r_FingerIndexC_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerIndexC_fk.s" "jnt_r_FingerIndexC_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerIndexC_fk.pm" "jnt_r_FingerIndexC_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerIndexC_parentConstraint1.w0" "jnt_r_FingerIndexC_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_FingerIndexB.ro" "jnt_r_FingerIndexB_parentConstraint1.cro";
connectAttr "jnt_r_FingerIndexB.pim" "jnt_r_FingerIndexB_parentConstraint1.cpim"
		;
connectAttr "jnt_r_FingerIndexB.rp" "jnt_r_FingerIndexB_parentConstraint1.crp";
connectAttr "jnt_r_FingerIndexB.rpt" "jnt_r_FingerIndexB_parentConstraint1.crt";
connectAttr "jnt_r_FingerIndexB.jo" "jnt_r_FingerIndexB_parentConstraint1.cjo";
connectAttr "ctl_r_FingerIndexB_fk.t" "jnt_r_FingerIndexB_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerIndexB_fk.rp" "jnt_r_FingerIndexB_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerIndexB_fk.rpt" "jnt_r_FingerIndexB_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerIndexB_fk.r" "jnt_r_FingerIndexB_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerIndexB_fk.ro" "jnt_r_FingerIndexB_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerIndexB_fk.s" "jnt_r_FingerIndexB_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerIndexB_fk.pm" "jnt_r_FingerIndexB_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerIndexB_parentConstraint1.w0" "jnt_r_FingerIndexB_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_FingerIndexA.ro" "jnt_r_FingerIndexA_parentConstraint1.cro";
connectAttr "jnt_r_FingerIndexA.pim" "jnt_r_FingerIndexA_parentConstraint1.cpim"
		;
connectAttr "jnt_r_FingerIndexA.rp" "jnt_r_FingerIndexA_parentConstraint1.crp";
connectAttr "jnt_r_FingerIndexA.rpt" "jnt_r_FingerIndexA_parentConstraint1.crt";
connectAttr "jnt_r_FingerIndexA.jo" "jnt_r_FingerIndexA_parentConstraint1.cjo";
connectAttr "ctl_r_FingerIndexA_fk.t" "jnt_r_FingerIndexA_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerIndexA_fk.rp" "jnt_r_FingerIndexA_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerIndexA_fk.rpt" "jnt_r_FingerIndexA_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerIndexA_fk.r" "jnt_r_FingerIndexA_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerIndexA_fk.ro" "jnt_r_FingerIndexA_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerIndexA_fk.s" "jnt_r_FingerIndexA_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerIndexA_fk.pm" "jnt_r_FingerIndexA_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerIndexA_parentConstraint1.w0" "jnt_r_FingerIndexA_parentConstraint1.tg[0].tw"
		;
connectAttr "off_r_FingerIndexA_fk_parentConstraint.ctx" "off_r_FingerIndexA_fk.tx"
		;
connectAttr "off_r_FingerIndexA_fk_parentConstraint.cty" "off_r_FingerIndexA_fk.ty"
		;
connectAttr "off_r_FingerIndexA_fk_parentConstraint.ctz" "off_r_FingerIndexA_fk.tz"
		;
connectAttr "off_r_FingerIndexA_fk_parentConstraint.crx" "off_r_FingerIndexA_fk.rx"
		;
connectAttr "off_r_FingerIndexA_fk_parentConstraint.cry" "off_r_FingerIndexA_fk.ry"
		;
connectAttr "off_r_FingerIndexA_fk_parentConstraint.crz" "off_r_FingerIndexA_fk.rz"
		;
connectAttr "off_r_FingerIndexA_fk.ro" "off_r_FingerIndexA_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerIndexA_fk.pim" "off_r_FingerIndexA_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerIndexA_fk.rp" "off_r_FingerIndexA_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerIndexA_fk.rpt" "off_r_FingerIndexA_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_hand.t" "off_r_FingerIndexA_fk_parentConstraint.tg[0].tt";
connectAttr "ctl_r_hand.rp" "off_r_FingerIndexA_fk_parentConstraint.tg[0].trp";
connectAttr "ctl_r_hand.rpt" "off_r_FingerIndexA_fk_parentConstraint.tg[0].trt";
connectAttr "ctl_r_hand.r" "off_r_FingerIndexA_fk_parentConstraint.tg[0].tr";
connectAttr "ctl_r_hand.ro" "off_r_FingerIndexA_fk_parentConstraint.tg[0].tro";
connectAttr "ctl_r_hand.s" "off_r_FingerIndexA_fk_parentConstraint.tg[0].ts";
connectAttr "ctl_r_hand.pm" "off_r_FingerIndexA_fk_parentConstraint.tg[0].tpm";
connectAttr "off_r_FingerIndexA_fk_parentConstraint.w0" "off_r_FingerIndexA_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_r_FingerIndexB_fk_parentConstraint.ctx" "off_r_FingerIndexB_fk.tx"
		;
connectAttr "off_r_FingerIndexB_fk_parentConstraint.cty" "off_r_FingerIndexB_fk.ty"
		;
connectAttr "off_r_FingerIndexB_fk_parentConstraint.ctz" "off_r_FingerIndexB_fk.tz"
		;
connectAttr "off_r_FingerIndexB_fk_parentConstraint.crx" "off_r_FingerIndexB_fk.rx"
		;
connectAttr "off_r_FingerIndexB_fk_parentConstraint.cry" "off_r_FingerIndexB_fk.ry"
		;
connectAttr "off_r_FingerIndexB_fk_parentConstraint.crz" "off_r_FingerIndexB_fk.rz"
		;
connectAttr "off_r_FingerIndexB_fk.ro" "off_r_FingerIndexB_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerIndexB_fk.pim" "off_r_FingerIndexB_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerIndexB_fk.rp" "off_r_FingerIndexB_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerIndexB_fk.rpt" "off_r_FingerIndexB_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_FingerIndexA_fk.t" "off_r_FingerIndexB_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_r_FingerIndexA_fk.rp" "off_r_FingerIndexB_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_r_FingerIndexA_fk.rpt" "off_r_FingerIndexB_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_r_FingerIndexA_fk.r" "off_r_FingerIndexB_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_r_FingerIndexA_fk.ro" "off_r_FingerIndexB_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_r_FingerIndexA_fk.s" "off_r_FingerIndexB_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_r_FingerIndexA_fk.pm" "off_r_FingerIndexB_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_r_FingerIndexB_fk_parentConstraint.w0" "off_r_FingerIndexB_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_r_FingerIndexC_fk_parentConstraint.ctx" "off_r_FingerIndexC_fk.tx"
		;
connectAttr "off_r_FingerIndexC_fk_parentConstraint.cty" "off_r_FingerIndexC_fk.ty"
		;
connectAttr "off_r_FingerIndexC_fk_parentConstraint.ctz" "off_r_FingerIndexC_fk.tz"
		;
connectAttr "off_r_FingerIndexC_fk_parentConstraint.crx" "off_r_FingerIndexC_fk.rx"
		;
connectAttr "off_r_FingerIndexC_fk_parentConstraint.cry" "off_r_FingerIndexC_fk.ry"
		;
connectAttr "off_r_FingerIndexC_fk_parentConstraint.crz" "off_r_FingerIndexC_fk.rz"
		;
connectAttr "off_r_FingerIndexC_fk.ro" "off_r_FingerIndexC_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerIndexC_fk.pim" "off_r_FingerIndexC_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerIndexC_fk.rp" "off_r_FingerIndexC_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerIndexC_fk.rpt" "off_r_FingerIndexC_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_FingerIndexB_fk.t" "off_r_FingerIndexC_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_r_FingerIndexB_fk.rp" "off_r_FingerIndexC_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_r_FingerIndexB_fk.rpt" "off_r_FingerIndexC_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_r_FingerIndexB_fk.r" "off_r_FingerIndexC_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_r_FingerIndexB_fk.ro" "off_r_FingerIndexC_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_r_FingerIndexB_fk.s" "off_r_FingerIndexC_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_r_FingerIndexB_fk.pm" "off_r_FingerIndexC_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_r_FingerIndexC_fk_parentConstraint.w0" "off_r_FingerIndexC_fk_parentConstraint.tg[0].tw"
		;
connectAttr "jnt_r_FingerMiddleA_parentConstraint1.ctx" "jnt_r_FingerMiddleA.tx"
		;
connectAttr "jnt_r_FingerMiddleA_parentConstraint1.cty" "jnt_r_FingerMiddleA.ty"
		;
connectAttr "jnt_r_FingerMiddleA_parentConstraint1.ctz" "jnt_r_FingerMiddleA.tz"
		;
connectAttr "jnt_r_FingerMiddleA_parentConstraint1.crx" "jnt_r_FingerMiddleA.rx"
		;
connectAttr "jnt_r_FingerMiddleA_parentConstraint1.cry" "jnt_r_FingerMiddleA.ry"
		;
connectAttr "jnt_r_FingerMiddleA_parentConstraint1.crz" "jnt_r_FingerMiddleA.rz"
		;
connectAttr "jnt_r_FingerMiddleA.s" "jnt_r_FingerMiddleB.is";
connectAttr "jnt_r_FingerMiddleB_parentConstraint1.ctx" "jnt_r_FingerMiddleB.tx"
		;
connectAttr "jnt_r_FingerMiddleB_parentConstraint1.cty" "jnt_r_FingerMiddleB.ty"
		;
connectAttr "jnt_r_FingerMiddleB_parentConstraint1.ctz" "jnt_r_FingerMiddleB.tz"
		;
connectAttr "jnt_r_FingerMiddleB_parentConstraint1.crx" "jnt_r_FingerMiddleB.rx"
		;
connectAttr "jnt_r_FingerMiddleB_parentConstraint1.cry" "jnt_r_FingerMiddleB.ry"
		;
connectAttr "jnt_r_FingerMiddleB_parentConstraint1.crz" "jnt_r_FingerMiddleB.rz"
		;
connectAttr "jnt_r_FingerMiddleB.s" "jnt_r_FingerMiddleC.is";
connectAttr "jnt_r_FingerMiddleC_parentConstraint1.ctx" "jnt_r_FingerMiddleC.tx"
		;
connectAttr "jnt_r_FingerMiddleC_parentConstraint1.cty" "jnt_r_FingerMiddleC.ty"
		;
connectAttr "jnt_r_FingerMiddleC_parentConstraint1.ctz" "jnt_r_FingerMiddleC.tz"
		;
connectAttr "jnt_r_FingerMiddleC_parentConstraint1.crx" "jnt_r_FingerMiddleC.rx"
		;
connectAttr "jnt_r_FingerMiddleC_parentConstraint1.cry" "jnt_r_FingerMiddleC.ry"
		;
connectAttr "jnt_r_FingerMiddleC_parentConstraint1.crz" "jnt_r_FingerMiddleC.rz"
		;
connectAttr "jnt_r_FingerMiddleC.s" "jnt_r_FingerMiddleEnd.is";
connectAttr "jnt_r_FingerMiddleC.ro" "jnt_r_FingerMiddleC_parentConstraint1.cro"
		;
connectAttr "jnt_r_FingerMiddleC.pim" "jnt_r_FingerMiddleC_parentConstraint1.cpim"
		;
connectAttr "jnt_r_FingerMiddleC.rp" "jnt_r_FingerMiddleC_parentConstraint1.crp"
		;
connectAttr "jnt_r_FingerMiddleC.rpt" "jnt_r_FingerMiddleC_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerMiddleC.jo" "jnt_r_FingerMiddleC_parentConstraint1.cjo"
		;
connectAttr "ctl_r_FingerMiddleC_fk.t" "jnt_r_FingerMiddleC_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerMiddleC_fk.rp" "jnt_r_FingerMiddleC_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerMiddleC_fk.rpt" "jnt_r_FingerMiddleC_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerMiddleC_fk.r" "jnt_r_FingerMiddleC_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerMiddleC_fk.ro" "jnt_r_FingerMiddleC_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerMiddleC_fk.s" "jnt_r_FingerMiddleC_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerMiddleC_fk.pm" "jnt_r_FingerMiddleC_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerMiddleC_parentConstraint1.w0" "jnt_r_FingerMiddleC_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_FingerMiddleB.ro" "jnt_r_FingerMiddleB_parentConstraint1.cro"
		;
connectAttr "jnt_r_FingerMiddleB.pim" "jnt_r_FingerMiddleB_parentConstraint1.cpim"
		;
connectAttr "jnt_r_FingerMiddleB.rp" "jnt_r_FingerMiddleB_parentConstraint1.crp"
		;
connectAttr "jnt_r_FingerMiddleB.rpt" "jnt_r_FingerMiddleB_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerMiddleB.jo" "jnt_r_FingerMiddleB_parentConstraint1.cjo"
		;
connectAttr "ctl_r_FingerMiddleB_fk.t" "jnt_r_FingerMiddleB_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerMiddleB_fk.rp" "jnt_r_FingerMiddleB_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerMiddleB_fk.rpt" "jnt_r_FingerMiddleB_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerMiddleB_fk.r" "jnt_r_FingerMiddleB_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerMiddleB_fk.ro" "jnt_r_FingerMiddleB_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerMiddleB_fk.s" "jnt_r_FingerMiddleB_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerMiddleB_fk.pm" "jnt_r_FingerMiddleB_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerMiddleB_parentConstraint1.w0" "jnt_r_FingerMiddleB_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_FingerMiddleA.ro" "jnt_r_FingerMiddleA_parentConstraint1.cro"
		;
connectAttr "jnt_r_FingerMiddleA.pim" "jnt_r_FingerMiddleA_parentConstraint1.cpim"
		;
connectAttr "jnt_r_FingerMiddleA.rp" "jnt_r_FingerMiddleA_parentConstraint1.crp"
		;
connectAttr "jnt_r_FingerMiddleA.rpt" "jnt_r_FingerMiddleA_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerMiddleA.jo" "jnt_r_FingerMiddleA_parentConstraint1.cjo"
		;
connectAttr "ctl_r_FingerMiddleA_fk.t" "jnt_r_FingerMiddleA_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerMiddleA_fk.rp" "jnt_r_FingerMiddleA_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerMiddleA_fk.rpt" "jnt_r_FingerMiddleA_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerMiddleA_fk.r" "jnt_r_FingerMiddleA_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerMiddleA_fk.ro" "jnt_r_FingerMiddleA_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerMiddleA_fk.s" "jnt_r_FingerMiddleA_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerMiddleA_fk.pm" "jnt_r_FingerMiddleA_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerMiddleA_parentConstraint1.w0" "jnt_r_FingerMiddleA_parentConstraint1.tg[0].tw"
		;
connectAttr "off_r_FingerMiddleA_fk_parentConstraint.ctx" "off_r_FingerMiddleA_fk.tx"
		;
connectAttr "off_r_FingerMiddleA_fk_parentConstraint.cty" "off_r_FingerMiddleA_fk.ty"
		;
connectAttr "off_r_FingerMiddleA_fk_parentConstraint.ctz" "off_r_FingerMiddleA_fk.tz"
		;
connectAttr "off_r_FingerMiddleA_fk_parentConstraint.crx" "off_r_FingerMiddleA_fk.rx"
		;
connectAttr "off_r_FingerMiddleA_fk_parentConstraint.cry" "off_r_FingerMiddleA_fk.ry"
		;
connectAttr "off_r_FingerMiddleA_fk_parentConstraint.crz" "off_r_FingerMiddleA_fk.rz"
		;
connectAttr "off_r_FingerMiddleA_fk.ro" "off_r_FingerMiddleA_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerMiddleA_fk.pim" "off_r_FingerMiddleA_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerMiddleA_fk.rp" "off_r_FingerMiddleA_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerMiddleA_fk.rpt" "off_r_FingerMiddleA_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_hand.t" "off_r_FingerMiddleA_fk_parentConstraint.tg[0].tt";
connectAttr "ctl_r_hand.rp" "off_r_FingerMiddleA_fk_parentConstraint.tg[0].trp";
connectAttr "ctl_r_hand.rpt" "off_r_FingerMiddleA_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_r_hand.r" "off_r_FingerMiddleA_fk_parentConstraint.tg[0].tr";
connectAttr "ctl_r_hand.ro" "off_r_FingerMiddleA_fk_parentConstraint.tg[0].tro";
connectAttr "ctl_r_hand.s" "off_r_FingerMiddleA_fk_parentConstraint.tg[0].ts";
connectAttr "ctl_r_hand.pm" "off_r_FingerMiddleA_fk_parentConstraint.tg[0].tpm";
connectAttr "off_r_FingerMiddleA_fk_parentConstraint.w0" "off_r_FingerMiddleA_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_r_FingerMiddleB_fk_parentConstraint.ctx" "off_r_FingerMiddleB_fk.tx"
		;
connectAttr "off_r_FingerMiddleB_fk_parentConstraint.cty" "off_r_FingerMiddleB_fk.ty"
		;
connectAttr "off_r_FingerMiddleB_fk_parentConstraint.ctz" "off_r_FingerMiddleB_fk.tz"
		;
connectAttr "off_r_FingerMiddleB_fk_parentConstraint.crx" "off_r_FingerMiddleB_fk.rx"
		;
connectAttr "off_r_FingerMiddleB_fk_parentConstraint.cry" "off_r_FingerMiddleB_fk.ry"
		;
connectAttr "off_r_FingerMiddleB_fk_parentConstraint.crz" "off_r_FingerMiddleB_fk.rz"
		;
connectAttr "off_r_FingerMiddleB_fk.ro" "off_r_FingerMiddleB_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerMiddleB_fk.pim" "off_r_FingerMiddleB_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerMiddleB_fk.rp" "off_r_FingerMiddleB_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerMiddleB_fk.rpt" "off_r_FingerMiddleB_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_FingerMiddleA_fk.t" "off_r_FingerMiddleB_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_r_FingerMiddleA_fk.rp" "off_r_FingerMiddleB_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_r_FingerMiddleA_fk.rpt" "off_r_FingerMiddleB_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_r_FingerMiddleA_fk.r" "off_r_FingerMiddleB_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_r_FingerMiddleA_fk.ro" "off_r_FingerMiddleB_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_r_FingerMiddleA_fk.s" "off_r_FingerMiddleB_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_r_FingerMiddleA_fk.pm" "off_r_FingerMiddleB_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_r_FingerMiddleB_fk_parentConstraint.w0" "off_r_FingerMiddleB_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_r_FingerMiddleC_fk_parentConstraint.ctx" "off_r_FingerMiddleC_fk.tx"
		;
connectAttr "off_r_FingerMiddleC_fk_parentConstraint.cty" "off_r_FingerMiddleC_fk.ty"
		;
connectAttr "off_r_FingerMiddleC_fk_parentConstraint.ctz" "off_r_FingerMiddleC_fk.tz"
		;
connectAttr "off_r_FingerMiddleC_fk_parentConstraint.crx" "off_r_FingerMiddleC_fk.rx"
		;
connectAttr "off_r_FingerMiddleC_fk_parentConstraint.cry" "off_r_FingerMiddleC_fk.ry"
		;
connectAttr "off_r_FingerMiddleC_fk_parentConstraint.crz" "off_r_FingerMiddleC_fk.rz"
		;
connectAttr "off_r_FingerMiddleC_fk.ro" "off_r_FingerMiddleC_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerMiddleC_fk.pim" "off_r_FingerMiddleC_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerMiddleC_fk.rp" "off_r_FingerMiddleC_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerMiddleC_fk.rpt" "off_r_FingerMiddleC_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_FingerMiddleB_fk.t" "off_r_FingerMiddleC_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_r_FingerMiddleB_fk.rp" "off_r_FingerMiddleC_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_r_FingerMiddleB_fk.rpt" "off_r_FingerMiddleC_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_r_FingerMiddleB_fk.r" "off_r_FingerMiddleC_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_r_FingerMiddleB_fk.ro" "off_r_FingerMiddleC_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_r_FingerMiddleB_fk.s" "off_r_FingerMiddleC_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_r_FingerMiddleB_fk.pm" "off_r_FingerMiddleC_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_r_FingerMiddleC_fk_parentConstraint.w0" "off_r_FingerMiddleC_fk_parentConstraint.tg[0].tw"
		;
connectAttr "jnt_r_FingerRingA_parentConstraint1.ctx" "jnt_r_FingerRingA.tx";
connectAttr "jnt_r_FingerRingA_parentConstraint1.cty" "jnt_r_FingerRingA.ty";
connectAttr "jnt_r_FingerRingA_parentConstraint1.ctz" "jnt_r_FingerRingA.tz";
connectAttr "jnt_r_FingerRingA_parentConstraint1.crx" "jnt_r_FingerRingA.rx";
connectAttr "jnt_r_FingerRingA_parentConstraint1.cry" "jnt_r_FingerRingA.ry";
connectAttr "jnt_r_FingerRingA_parentConstraint1.crz" "jnt_r_FingerRingA.rz";
connectAttr "jnt_r_FingerRingA.s" "jnt_r_FingerRingB.is";
connectAttr "jnt_r_FingerRingB_parentConstraint1.ctx" "jnt_r_FingerRingB.tx";
connectAttr "jnt_r_FingerRingB_parentConstraint1.cty" "jnt_r_FingerRingB.ty";
connectAttr "jnt_r_FingerRingB_parentConstraint1.ctz" "jnt_r_FingerRingB.tz";
connectAttr "jnt_r_FingerRingB_parentConstraint1.crx" "jnt_r_FingerRingB.rx";
connectAttr "jnt_r_FingerRingB_parentConstraint1.cry" "jnt_r_FingerRingB.ry";
connectAttr "jnt_r_FingerRingB_parentConstraint1.crz" "jnt_r_FingerRingB.rz";
connectAttr "jnt_r_FingerRingB.s" "jnt_r_FingerRingC.is";
connectAttr "jnt_r_FingerRingC_parentConstraint1.ctx" "jnt_r_FingerRingC.tx";
connectAttr "jnt_r_FingerRingC_parentConstraint1.cty" "jnt_r_FingerRingC.ty";
connectAttr "jnt_r_FingerRingC_parentConstraint1.ctz" "jnt_r_FingerRingC.tz";
connectAttr "jnt_r_FingerRingC_parentConstraint1.crx" "jnt_r_FingerRingC.rx";
connectAttr "jnt_r_FingerRingC_parentConstraint1.cry" "jnt_r_FingerRingC.ry";
connectAttr "jnt_r_FingerRingC_parentConstraint1.crz" "jnt_r_FingerRingC.rz";
connectAttr "jnt_r_FingerRingC.s" "jnt_r_FingerRingEnd.is";
connectAttr "jnt_r_FingerRingC.ro" "jnt_r_FingerRingC_parentConstraint1.cro";
connectAttr "jnt_r_FingerRingC.pim" "jnt_r_FingerRingC_parentConstraint1.cpim";
connectAttr "jnt_r_FingerRingC.rp" "jnt_r_FingerRingC_parentConstraint1.crp";
connectAttr "jnt_r_FingerRingC.rpt" "jnt_r_FingerRingC_parentConstraint1.crt";
connectAttr "jnt_r_FingerRingC.jo" "jnt_r_FingerRingC_parentConstraint1.cjo";
connectAttr "ctl_r_FingerRingC_fk.t" "jnt_r_FingerRingC_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerRingC_fk.rp" "jnt_r_FingerRingC_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerRingC_fk.rpt" "jnt_r_FingerRingC_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerRingC_fk.r" "jnt_r_FingerRingC_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerRingC_fk.ro" "jnt_r_FingerRingC_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerRingC_fk.s" "jnt_r_FingerRingC_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerRingC_fk.pm" "jnt_r_FingerRingC_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerRingC_parentConstraint1.w0" "jnt_r_FingerRingC_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_FingerRingB.ro" "jnt_r_FingerRingB_parentConstraint1.cro";
connectAttr "jnt_r_FingerRingB.pim" "jnt_r_FingerRingB_parentConstraint1.cpim";
connectAttr "jnt_r_FingerRingB.rp" "jnt_r_FingerRingB_parentConstraint1.crp";
connectAttr "jnt_r_FingerRingB.rpt" "jnt_r_FingerRingB_parentConstraint1.crt";
connectAttr "jnt_r_FingerRingB.jo" "jnt_r_FingerRingB_parentConstraint1.cjo";
connectAttr "ctl_r_FingerRingB_fk.t" "jnt_r_FingerRingB_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerRingB_fk.rp" "jnt_r_FingerRingB_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerRingB_fk.rpt" "jnt_r_FingerRingB_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerRingB_fk.r" "jnt_r_FingerRingB_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerRingB_fk.ro" "jnt_r_FingerRingB_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerRingB_fk.s" "jnt_r_FingerRingB_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerRingB_fk.pm" "jnt_r_FingerRingB_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerRingB_parentConstraint1.w0" "jnt_r_FingerRingB_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_FingerRingA.ro" "jnt_r_FingerRingA_parentConstraint1.cro";
connectAttr "jnt_r_FingerRingA.pim" "jnt_r_FingerRingA_parentConstraint1.cpim";
connectAttr "jnt_r_FingerRingA.rp" "jnt_r_FingerRingA_parentConstraint1.crp";
connectAttr "jnt_r_FingerRingA.rpt" "jnt_r_FingerRingA_parentConstraint1.crt";
connectAttr "jnt_r_FingerRingA.jo" "jnt_r_FingerRingA_parentConstraint1.cjo";
connectAttr "ctl_r_FingerRingA_fk.t" "jnt_r_FingerRingA_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerRingA_fk.rp" "jnt_r_FingerRingA_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerRingA_fk.rpt" "jnt_r_FingerRingA_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerRingA_fk.r" "jnt_r_FingerRingA_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerRingA_fk.ro" "jnt_r_FingerRingA_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerRingA_fk.s" "jnt_r_FingerRingA_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerRingA_fk.pm" "jnt_r_FingerRingA_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerRingA_parentConstraint1.w0" "jnt_r_FingerRingA_parentConstraint1.tg[0].tw"
		;
connectAttr "off_r_FingerRingA_fk_parentConstraint.ctx" "off_r_FingerRingA_fk.tx"
		;
connectAttr "off_r_FingerRingA_fk_parentConstraint.cty" "off_r_FingerRingA_fk.ty"
		;
connectAttr "off_r_FingerRingA_fk_parentConstraint.ctz" "off_r_FingerRingA_fk.tz"
		;
connectAttr "off_r_FingerRingA_fk_parentConstraint.crx" "off_r_FingerRingA_fk.rx"
		;
connectAttr "off_r_FingerRingA_fk_parentConstraint.cry" "off_r_FingerRingA_fk.ry"
		;
connectAttr "off_r_FingerRingA_fk_parentConstraint.crz" "off_r_FingerRingA_fk.rz"
		;
connectAttr "off_r_FingerRingA_fk.ro" "off_r_FingerRingA_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerRingA_fk.pim" "off_r_FingerRingA_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerRingA_fk.rp" "off_r_FingerRingA_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerRingA_fk.rpt" "off_r_FingerRingA_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_hand.t" "off_r_FingerRingA_fk_parentConstraint.tg[0].tt";
connectAttr "ctl_r_hand.rp" "off_r_FingerRingA_fk_parentConstraint.tg[0].trp";
connectAttr "ctl_r_hand.rpt" "off_r_FingerRingA_fk_parentConstraint.tg[0].trt";
connectAttr "ctl_r_hand.r" "off_r_FingerRingA_fk_parentConstraint.tg[0].tr";
connectAttr "ctl_r_hand.ro" "off_r_FingerRingA_fk_parentConstraint.tg[0].tro";
connectAttr "ctl_r_hand.s" "off_r_FingerRingA_fk_parentConstraint.tg[0].ts";
connectAttr "ctl_r_hand.pm" "off_r_FingerRingA_fk_parentConstraint.tg[0].tpm";
connectAttr "off_r_FingerRingA_fk_parentConstraint.w0" "off_r_FingerRingA_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_r_FingerRingB_fk_parentConstraint.ctx" "off_r_FingerRingB_fk.tx"
		;
connectAttr "off_r_FingerRingB_fk_parentConstraint.cty" "off_r_FingerRingB_fk.ty"
		;
connectAttr "off_r_FingerRingB_fk_parentConstraint.ctz" "off_r_FingerRingB_fk.tz"
		;
connectAttr "off_r_FingerRingB_fk_parentConstraint.crx" "off_r_FingerRingB_fk.rx"
		;
connectAttr "off_r_FingerRingB_fk_parentConstraint.cry" "off_r_FingerRingB_fk.ry"
		;
connectAttr "off_r_FingerRingB_fk_parentConstraint.crz" "off_r_FingerRingB_fk.rz"
		;
connectAttr "off_r_FingerRingB_fk.ro" "off_r_FingerRingB_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerRingB_fk.pim" "off_r_FingerRingB_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerRingB_fk.rp" "off_r_FingerRingB_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerRingB_fk.rpt" "off_r_FingerRingB_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_FingerRingA_fk.t" "off_r_FingerRingB_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_r_FingerRingA_fk.rp" "off_r_FingerRingB_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_r_FingerRingA_fk.rpt" "off_r_FingerRingB_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_r_FingerRingA_fk.r" "off_r_FingerRingB_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_r_FingerRingA_fk.ro" "off_r_FingerRingB_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_r_FingerRingA_fk.s" "off_r_FingerRingB_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_r_FingerRingA_fk.pm" "off_r_FingerRingB_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_r_FingerRingB_fk_parentConstraint.w0" "off_r_FingerRingB_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_r_FingerRingC_fk_parentConstraint.ctx" "off_r_FingerRingC_fk.tx"
		;
connectAttr "off_r_FingerRingC_fk_parentConstraint.cty" "off_r_FingerRingC_fk.ty"
		;
connectAttr "off_r_FingerRingC_fk_parentConstraint.ctz" "off_r_FingerRingC_fk.tz"
		;
connectAttr "off_r_FingerRingC_fk_parentConstraint.crx" "off_r_FingerRingC_fk.rx"
		;
connectAttr "off_r_FingerRingC_fk_parentConstraint.cry" "off_r_FingerRingC_fk.ry"
		;
connectAttr "off_r_FingerRingC_fk_parentConstraint.crz" "off_r_FingerRingC_fk.rz"
		;
connectAttr "off_r_FingerRingC_fk.ro" "off_r_FingerRingC_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerRingC_fk.pim" "off_r_FingerRingC_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerRingC_fk.rp" "off_r_FingerRingC_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerRingC_fk.rpt" "off_r_FingerRingC_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_FingerRingB_fk.t" "off_r_FingerRingC_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_r_FingerRingB_fk.rp" "off_r_FingerRingC_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_r_FingerRingB_fk.rpt" "off_r_FingerRingC_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_r_FingerRingB_fk.r" "off_r_FingerRingC_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_r_FingerRingB_fk.ro" "off_r_FingerRingC_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_r_FingerRingB_fk.s" "off_r_FingerRingC_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_r_FingerRingB_fk.pm" "off_r_FingerRingC_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_r_FingerRingC_fk_parentConstraint.w0" "off_r_FingerRingC_fk_parentConstraint.tg[0].tw"
		;
connectAttr "jnt_r_FingerPinkyA_parentConstraint1.ctx" "jnt_r_FingerPinkyA.tx";
connectAttr "jnt_r_FingerPinkyA_parentConstraint1.cty" "jnt_r_FingerPinkyA.ty";
connectAttr "jnt_r_FingerPinkyA_parentConstraint1.ctz" "jnt_r_FingerPinkyA.tz";
connectAttr "jnt_r_FingerPinkyA_parentConstraint1.crx" "jnt_r_FingerPinkyA.rx";
connectAttr "jnt_r_FingerPinkyA_parentConstraint1.cry" "jnt_r_FingerPinkyA.ry";
connectAttr "jnt_r_FingerPinkyA_parentConstraint1.crz" "jnt_r_FingerPinkyA.rz";
connectAttr "jnt_r_FingerPinkyA.s" "jnt_r_FingerPinkyB.is";
connectAttr "jnt_r_FingerPinkyB_parentConstraint1.ctx" "jnt_r_FingerPinkyB.tx";
connectAttr "jnt_r_FingerPinkyB_parentConstraint1.cty" "jnt_r_FingerPinkyB.ty";
connectAttr "jnt_r_FingerPinkyB_parentConstraint1.ctz" "jnt_r_FingerPinkyB.tz";
connectAttr "jnt_r_FingerPinkyB_parentConstraint1.crx" "jnt_r_FingerPinkyB.rx";
connectAttr "jnt_r_FingerPinkyB_parentConstraint1.cry" "jnt_r_FingerPinkyB.ry";
connectAttr "jnt_r_FingerPinkyB_parentConstraint1.crz" "jnt_r_FingerPinkyB.rz";
connectAttr "jnt_r_FingerPinkyB.s" "jnt_r_FingerPinkyC.is";
connectAttr "jnt_r_FingerPinkyC_parentConstraint1.ctx" "jnt_r_FingerPinkyC.tx";
connectAttr "jnt_r_FingerPinkyC_parentConstraint1.cty" "jnt_r_FingerPinkyC.ty";
connectAttr "jnt_r_FingerPinkyC_parentConstraint1.ctz" "jnt_r_FingerPinkyC.tz";
connectAttr "jnt_r_FingerPinkyC_parentConstraint1.crx" "jnt_r_FingerPinkyC.rx";
connectAttr "jnt_r_FingerPinkyC_parentConstraint1.cry" "jnt_r_FingerPinkyC.ry";
connectAttr "jnt_r_FingerPinkyC_parentConstraint1.crz" "jnt_r_FingerPinkyC.rz";
connectAttr "jnt_r_FingerPinkyC.s" "jnt_r_FingerPinkyD.is";
connectAttr "jnt_r_FingerPinkyD_parentConstraint1.ctx" "jnt_r_FingerPinkyD.tx";
connectAttr "jnt_r_FingerPinkyD_parentConstraint1.cty" "jnt_r_FingerPinkyD.ty";
connectAttr "jnt_r_FingerPinkyD_parentConstraint1.ctz" "jnt_r_FingerPinkyD.tz";
connectAttr "jnt_r_FingerPinkyD_parentConstraint1.crx" "jnt_r_FingerPinkyD.rx";
connectAttr "jnt_r_FingerPinkyD_parentConstraint1.cry" "jnt_r_FingerPinkyD.ry";
connectAttr "jnt_r_FingerPinkyD_parentConstraint1.crz" "jnt_r_FingerPinkyD.rz";
connectAttr "jnt_r_FingerPinkyD.s" "jnt_r_FingerPinkyEnd.is";
connectAttr "jnt_r_FingerPinkyD.ro" "jnt_r_FingerPinkyD_parentConstraint1.cro";
connectAttr "jnt_r_FingerPinkyD.pim" "jnt_r_FingerPinkyD_parentConstraint1.cpim"
		;
connectAttr "jnt_r_FingerPinkyD.rp" "jnt_r_FingerPinkyD_parentConstraint1.crp";
connectAttr "jnt_r_FingerPinkyD.rpt" "jnt_r_FingerPinkyD_parentConstraint1.crt";
connectAttr "jnt_r_FingerPinkyD.jo" "jnt_r_FingerPinkyD_parentConstraint1.cjo";
connectAttr "ctl_r_FingerPinkyD_fk.t" "jnt_r_FingerPinkyD_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerPinkyD_fk.rp" "jnt_r_FingerPinkyD_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerPinkyD_fk.rpt" "jnt_r_FingerPinkyD_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerPinkyD_fk.r" "jnt_r_FingerPinkyD_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerPinkyD_fk.ro" "jnt_r_FingerPinkyD_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerPinkyD_fk.s" "jnt_r_FingerPinkyD_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerPinkyD_fk.pm" "jnt_r_FingerPinkyD_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerPinkyD_parentConstraint1.w0" "jnt_r_FingerPinkyD_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_FingerPinkyC.ro" "jnt_r_FingerPinkyC_parentConstraint1.cro";
connectAttr "jnt_r_FingerPinkyC.pim" "jnt_r_FingerPinkyC_parentConstraint1.cpim"
		;
connectAttr "jnt_r_FingerPinkyC.rp" "jnt_r_FingerPinkyC_parentConstraint1.crp";
connectAttr "jnt_r_FingerPinkyC.rpt" "jnt_r_FingerPinkyC_parentConstraint1.crt";
connectAttr "jnt_r_FingerPinkyC.jo" "jnt_r_FingerPinkyC_parentConstraint1.cjo";
connectAttr "ctl_r_FingerPinkyC_fk.t" "jnt_r_FingerPinkyC_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerPinkyC_fk.rp" "jnt_r_FingerPinkyC_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerPinkyC_fk.rpt" "jnt_r_FingerPinkyC_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerPinkyC_fk.r" "jnt_r_FingerPinkyC_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerPinkyC_fk.ro" "jnt_r_FingerPinkyC_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerPinkyC_fk.s" "jnt_r_FingerPinkyC_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerPinkyC_fk.pm" "jnt_r_FingerPinkyC_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerPinkyC_parentConstraint1.w0" "jnt_r_FingerPinkyC_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_FingerPinkyB.ro" "jnt_r_FingerPinkyB_parentConstraint1.cro";
connectAttr "jnt_r_FingerPinkyB.pim" "jnt_r_FingerPinkyB_parentConstraint1.cpim"
		;
connectAttr "jnt_r_FingerPinkyB.rp" "jnt_r_FingerPinkyB_parentConstraint1.crp";
connectAttr "jnt_r_FingerPinkyB.rpt" "jnt_r_FingerPinkyB_parentConstraint1.crt";
connectAttr "jnt_r_FingerPinkyB.jo" "jnt_r_FingerPinkyB_parentConstraint1.cjo";
connectAttr "ctl_r_FingerPinkyB_fk.t" "jnt_r_FingerPinkyB_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerPinkyB_fk.rp" "jnt_r_FingerPinkyB_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerPinkyB_fk.rpt" "jnt_r_FingerPinkyB_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerPinkyB_fk.r" "jnt_r_FingerPinkyB_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerPinkyB_fk.ro" "jnt_r_FingerPinkyB_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerPinkyB_fk.s" "jnt_r_FingerPinkyB_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerPinkyB_fk.pm" "jnt_r_FingerPinkyB_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerPinkyB_parentConstraint1.w0" "jnt_r_FingerPinkyB_parentConstraint1.tg[0].tw"
		;
connectAttr "jnt_r_FingerPinkyA.ro" "jnt_r_FingerPinkyA_parentConstraint1.cro";
connectAttr "jnt_r_FingerPinkyA.pim" "jnt_r_FingerPinkyA_parentConstraint1.cpim"
		;
connectAttr "jnt_r_FingerPinkyA.rp" "jnt_r_FingerPinkyA_parentConstraint1.crp";
connectAttr "jnt_r_FingerPinkyA.rpt" "jnt_r_FingerPinkyA_parentConstraint1.crt";
connectAttr "jnt_r_FingerPinkyA.jo" "jnt_r_FingerPinkyA_parentConstraint1.cjo";
connectAttr "ctl_r_FingerPinkyA_fk.t" "jnt_r_FingerPinkyA_parentConstraint1.tg[0].tt"
		;
connectAttr "ctl_r_FingerPinkyA_fk.rp" "jnt_r_FingerPinkyA_parentConstraint1.tg[0].trp"
		;
connectAttr "ctl_r_FingerPinkyA_fk.rpt" "jnt_r_FingerPinkyA_parentConstraint1.tg[0].trt"
		;
connectAttr "ctl_r_FingerPinkyA_fk.r" "jnt_r_FingerPinkyA_parentConstraint1.tg[0].tr"
		;
connectAttr "ctl_r_FingerPinkyA_fk.ro" "jnt_r_FingerPinkyA_parentConstraint1.tg[0].tro"
		;
connectAttr "ctl_r_FingerPinkyA_fk.s" "jnt_r_FingerPinkyA_parentConstraint1.tg[0].ts"
		;
connectAttr "ctl_r_FingerPinkyA_fk.pm" "jnt_r_FingerPinkyA_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerPinkyA_parentConstraint1.w0" "jnt_r_FingerPinkyA_parentConstraint1.tg[0].tw"
		;
connectAttr "off_r_FingerPinkyA_fk_parentConstraint.ctx" "off_r_FingerPinkyA_fk.tx"
		;
connectAttr "off_r_FingerPinkyA_fk_parentConstraint.cty" "off_r_FingerPinkyA_fk.ty"
		;
connectAttr "off_r_FingerPinkyA_fk_parentConstraint.ctz" "off_r_FingerPinkyA_fk.tz"
		;
connectAttr "off_r_FingerPinkyA_fk_parentConstraint.crx" "off_r_FingerPinkyA_fk.rx"
		;
connectAttr "off_r_FingerPinkyA_fk_parentConstraint.cry" "off_r_FingerPinkyA_fk.ry"
		;
connectAttr "off_r_FingerPinkyA_fk_parentConstraint.crz" "off_r_FingerPinkyA_fk.rz"
		;
connectAttr "off_r_FingerPinkyA_fk.ro" "off_r_FingerPinkyA_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerPinkyA_fk.pim" "off_r_FingerPinkyA_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerPinkyA_fk.rp" "off_r_FingerPinkyA_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerPinkyA_fk.rpt" "off_r_FingerPinkyA_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_hand.t" "off_r_FingerPinkyA_fk_parentConstraint.tg[0].tt";
connectAttr "ctl_r_hand.rp" "off_r_FingerPinkyA_fk_parentConstraint.tg[0].trp";
connectAttr "ctl_r_hand.rpt" "off_r_FingerPinkyA_fk_parentConstraint.tg[0].trt";
connectAttr "ctl_r_hand.r" "off_r_FingerPinkyA_fk_parentConstraint.tg[0].tr";
connectAttr "ctl_r_hand.ro" "off_r_FingerPinkyA_fk_parentConstraint.tg[0].tro";
connectAttr "ctl_r_hand.s" "off_r_FingerPinkyA_fk_parentConstraint.tg[0].ts";
connectAttr "ctl_r_hand.pm" "off_r_FingerPinkyA_fk_parentConstraint.tg[0].tpm";
connectAttr "off_r_FingerPinkyA_fk_parentConstraint.w0" "off_r_FingerPinkyA_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_r_FingerPinkyB_fk_parentConstraint.ctx" "off_r_FingerPinkyB_fk.tx"
		;
connectAttr "off_r_FingerPinkyB_fk_parentConstraint.cty" "off_r_FingerPinkyB_fk.ty"
		;
connectAttr "off_r_FingerPinkyB_fk_parentConstraint.ctz" "off_r_FingerPinkyB_fk.tz"
		;
connectAttr "off_r_FingerPinkyB_fk_parentConstraint.crx" "off_r_FingerPinkyB_fk.rx"
		;
connectAttr "off_r_FingerPinkyB_fk_parentConstraint.cry" "off_r_FingerPinkyB_fk.ry"
		;
connectAttr "off_r_FingerPinkyB_fk_parentConstraint.crz" "off_r_FingerPinkyB_fk.rz"
		;
connectAttr "off_r_FingerPinkyB_fk.ro" "off_r_FingerPinkyB_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerPinkyB_fk.pim" "off_r_FingerPinkyB_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerPinkyB_fk.rp" "off_r_FingerPinkyB_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerPinkyB_fk.rpt" "off_r_FingerPinkyB_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_FingerPinkyA_fk.t" "off_r_FingerPinkyB_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_r_FingerPinkyA_fk.rp" "off_r_FingerPinkyB_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_r_FingerPinkyA_fk.rpt" "off_r_FingerPinkyB_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_r_FingerPinkyA_fk.r" "off_r_FingerPinkyB_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_r_FingerPinkyA_fk.ro" "off_r_FingerPinkyB_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_r_FingerPinkyA_fk.s" "off_r_FingerPinkyB_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_r_FingerPinkyA_fk.pm" "off_r_FingerPinkyB_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_r_FingerPinkyB_fk_parentConstraint.w0" "off_r_FingerPinkyB_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_r_FingerPinkyC_fk_parentConstraint.ctx" "off_r_FingerPinkyC_fk.tx"
		;
connectAttr "off_r_FingerPinkyC_fk_parentConstraint.cty" "off_r_FingerPinkyC_fk.ty"
		;
connectAttr "off_r_FingerPinkyC_fk_parentConstraint.ctz" "off_r_FingerPinkyC_fk.tz"
		;
connectAttr "off_r_FingerPinkyC_fk_parentConstraint.crx" "off_r_FingerPinkyC_fk.rx"
		;
connectAttr "off_r_FingerPinkyC_fk_parentConstraint.cry" "off_r_FingerPinkyC_fk.ry"
		;
connectAttr "off_r_FingerPinkyC_fk_parentConstraint.crz" "off_r_FingerPinkyC_fk.rz"
		;
connectAttr "off_r_FingerPinkyC_fk.ro" "off_r_FingerPinkyC_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerPinkyC_fk.pim" "off_r_FingerPinkyC_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerPinkyC_fk.rp" "off_r_FingerPinkyC_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerPinkyC_fk.rpt" "off_r_FingerPinkyC_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_FingerPinkyB_fk.t" "off_r_FingerPinkyC_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_r_FingerPinkyB_fk.rp" "off_r_FingerPinkyC_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_r_FingerPinkyB_fk.rpt" "off_r_FingerPinkyC_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_r_FingerPinkyB_fk.r" "off_r_FingerPinkyC_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_r_FingerPinkyB_fk.ro" "off_r_FingerPinkyC_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_r_FingerPinkyB_fk.s" "off_r_FingerPinkyC_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_r_FingerPinkyB_fk.pm" "off_r_FingerPinkyC_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_r_FingerPinkyC_fk_parentConstraint.w0" "off_r_FingerPinkyC_fk_parentConstraint.tg[0].tw"
		;
connectAttr "off_r_FingerPinkyD_fk_parentConstraint.ctx" "off_r_FingerPinkyD_fk.tx"
		;
connectAttr "off_r_FingerPinkyD_fk_parentConstraint.cty" "off_r_FingerPinkyD_fk.ty"
		;
connectAttr "off_r_FingerPinkyD_fk_parentConstraint.ctz" "off_r_FingerPinkyD_fk.tz"
		;
connectAttr "off_r_FingerPinkyD_fk_parentConstraint.crx" "off_r_FingerPinkyD_fk.rx"
		;
connectAttr "off_r_FingerPinkyD_fk_parentConstraint.cry" "off_r_FingerPinkyD_fk.ry"
		;
connectAttr "off_r_FingerPinkyD_fk_parentConstraint.crz" "off_r_FingerPinkyD_fk.rz"
		;
connectAttr "off_r_FingerPinkyD_fk.ro" "off_r_FingerPinkyD_fk_parentConstraint.cro"
		;
connectAttr "off_r_FingerPinkyD_fk.pim" "off_r_FingerPinkyD_fk_parentConstraint.cpim"
		;
connectAttr "off_r_FingerPinkyD_fk.rp" "off_r_FingerPinkyD_fk_parentConstraint.crp"
		;
connectAttr "off_r_FingerPinkyD_fk.rpt" "off_r_FingerPinkyD_fk_parentConstraint.crt"
		;
connectAttr "ctl_r_FingerPinkyC_fk.t" "off_r_FingerPinkyD_fk_parentConstraint.tg[0].tt"
		;
connectAttr "ctl_r_FingerPinkyC_fk.rp" "off_r_FingerPinkyD_fk_parentConstraint.tg[0].trp"
		;
connectAttr "ctl_r_FingerPinkyC_fk.rpt" "off_r_FingerPinkyD_fk_parentConstraint.tg[0].trt"
		;
connectAttr "ctl_r_FingerPinkyC_fk.r" "off_r_FingerPinkyD_fk_parentConstraint.tg[0].tr"
		;
connectAttr "ctl_r_FingerPinkyC_fk.ro" "off_r_FingerPinkyD_fk_parentConstraint.tg[0].tro"
		;
connectAttr "ctl_r_FingerPinkyC_fk.s" "off_r_FingerPinkyD_fk_parentConstraint.tg[0].ts"
		;
connectAttr "ctl_r_FingerPinkyC_fk.pm" "off_r_FingerPinkyD_fk_parentConstraint.tg[0].tpm"
		;
connectAttr "off_r_FingerPinkyD_fk_parentConstraint.w0" "off_r_FingerPinkyD_fk_parentConstraint.tg[0].tw"
		;
connectAttr "geo_l_FingerThumbA_grp_parentConstraint1.ctx" "geo_l_FingerThumbA_grp.tx"
		;
connectAttr "geo_l_FingerThumbA_grp_parentConstraint1.cty" "geo_l_FingerThumbA_grp.ty"
		;
connectAttr "geo_l_FingerThumbA_grp_parentConstraint1.ctz" "geo_l_FingerThumbA_grp.tz"
		;
connectAttr "geo_l_FingerThumbA_grp_parentConstraint1.crx" "geo_l_FingerThumbA_grp.rx"
		;
connectAttr "geo_l_FingerThumbA_grp_parentConstraint1.cry" "geo_l_FingerThumbA_grp.ry"
		;
connectAttr "geo_l_FingerThumbA_grp_parentConstraint1.crz" "geo_l_FingerThumbA_grp.rz"
		;
connectAttr "geo_l_FingerThumbA_grp.ro" "geo_l_FingerThumbA_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerThumbA_grp.pim" "geo_l_FingerThumbA_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerThumbA_grp.rp" "geo_l_FingerThumbA_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerThumbA_grp.rpt" "geo_l_FingerThumbA_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerThumbA.t" "geo_l_FingerThumbA_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerThumbA.rp" "geo_l_FingerThumbA_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerThumbA.rpt" "geo_l_FingerThumbA_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerThumbA.r" "geo_l_FingerThumbA_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerThumbA.ro" "geo_l_FingerThumbA_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerThumbA.s" "geo_l_FingerThumbA_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerThumbA.pm" "geo_l_FingerThumbA_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerThumbA.jo" "geo_l_FingerThumbA_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerThumbA.ssc" "geo_l_FingerThumbA_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerThumbA.is" "geo_l_FingerThumbA_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerThumbA_grp_parentConstraint1.w0" "geo_l_FingerThumbA_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerThumbB_grp_parentConstraint1.ctx" "geo_l_FingerThumbB_grp.tx"
		;
connectAttr "geo_l_FingerThumbB_grp_parentConstraint1.cty" "geo_l_FingerThumbB_grp.ty"
		;
connectAttr "geo_l_FingerThumbB_grp_parentConstraint1.ctz" "geo_l_FingerThumbB_grp.tz"
		;
connectAttr "geo_l_FingerThumbB_grp_parentConstraint1.crx" "geo_l_FingerThumbB_grp.rx"
		;
connectAttr "geo_l_FingerThumbB_grp_parentConstraint1.cry" "geo_l_FingerThumbB_grp.ry"
		;
connectAttr "geo_l_FingerThumbB_grp_parentConstraint1.crz" "geo_l_FingerThumbB_grp.rz"
		;
connectAttr "geo_l_FingerThumbB_grp.ro" "geo_l_FingerThumbB_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerThumbB_grp.pim" "geo_l_FingerThumbB_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerThumbB_grp.rp" "geo_l_FingerThumbB_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerThumbB_grp.rpt" "geo_l_FingerThumbB_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerThumbB.t" "geo_l_FingerThumbB_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerThumbB.rp" "geo_l_FingerThumbB_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerThumbB.rpt" "geo_l_FingerThumbB_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerThumbB.r" "geo_l_FingerThumbB_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerThumbB.ro" "geo_l_FingerThumbB_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerThumbB.s" "geo_l_FingerThumbB_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerThumbB.pm" "geo_l_FingerThumbB_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerThumbB.jo" "geo_l_FingerThumbB_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerThumbB.ssc" "geo_l_FingerThumbB_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerThumbB.is" "geo_l_FingerThumbB_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerThumbB_grp_parentConstraint1.w0" "geo_l_FingerThumbB_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerThumbC_grp_parentConstraint1.ctx" "geo_l_FingerThumbC_grp.tx"
		;
connectAttr "geo_l_FingerThumbC_grp_parentConstraint1.cty" "geo_l_FingerThumbC_grp.ty"
		;
connectAttr "geo_l_FingerThumbC_grp_parentConstraint1.ctz" "geo_l_FingerThumbC_grp.tz"
		;
connectAttr "geo_l_FingerThumbC_grp_parentConstraint1.crx" "geo_l_FingerThumbC_grp.rx"
		;
connectAttr "geo_l_FingerThumbC_grp_parentConstraint1.cry" "geo_l_FingerThumbC_grp.ry"
		;
connectAttr "geo_l_FingerThumbC_grp_parentConstraint1.crz" "geo_l_FingerThumbC_grp.rz"
		;
connectAttr "geo_l_FingerThumbC_grp.ro" "geo_l_FingerThumbC_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerThumbC_grp.pim" "geo_l_FingerThumbC_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerThumbC_grp.rp" "geo_l_FingerThumbC_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerThumbC_grp.rpt" "geo_l_FingerThumbC_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerThumbC.t" "geo_l_FingerThumbC_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerThumbC.rp" "geo_l_FingerThumbC_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerThumbC.rpt" "geo_l_FingerThumbC_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerThumbC.r" "geo_l_FingerThumbC_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerThumbC.ro" "geo_l_FingerThumbC_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerThumbC.s" "geo_l_FingerThumbC_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerThumbC.pm" "geo_l_FingerThumbC_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerThumbC.jo" "geo_l_FingerThumbC_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerThumbC.ssc" "geo_l_FingerThumbC_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerThumbC.is" "geo_l_FingerThumbC_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerThumbC_grp_parentConstraint1.w0" "geo_l_FingerThumbC_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerIndexA_grp_parentConstraint1.ctx" "geo_l_FingerIndexA_grp.tx"
		;
connectAttr "geo_l_FingerIndexA_grp_parentConstraint1.cty" "geo_l_FingerIndexA_grp.ty"
		;
connectAttr "geo_l_FingerIndexA_grp_parentConstraint1.ctz" "geo_l_FingerIndexA_grp.tz"
		;
connectAttr "geo_l_FingerIndexA_grp_parentConstraint1.crx" "geo_l_FingerIndexA_grp.rx"
		;
connectAttr "geo_l_FingerIndexA_grp_parentConstraint1.cry" "geo_l_FingerIndexA_grp.ry"
		;
connectAttr "geo_l_FingerIndexA_grp_parentConstraint1.crz" "geo_l_FingerIndexA_grp.rz"
		;
connectAttr "geo_l_FingerIndexA_grp.ro" "geo_l_FingerIndexA_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerIndexA_grp.pim" "geo_l_FingerIndexA_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerIndexA_grp.rp" "geo_l_FingerIndexA_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerIndexA_grp.rpt" "geo_l_FingerIndexA_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerIndexA.t" "geo_l_FingerIndexA_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerIndexA.rp" "geo_l_FingerIndexA_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerIndexA.rpt" "geo_l_FingerIndexA_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerIndexA.r" "geo_l_FingerIndexA_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerIndexA.ro" "geo_l_FingerIndexA_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerIndexA.s" "geo_l_FingerIndexA_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerIndexA.pm" "geo_l_FingerIndexA_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerIndexA.jo" "geo_l_FingerIndexA_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerIndexA.ssc" "geo_l_FingerIndexA_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerIndexA.is" "geo_l_FingerIndexA_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerIndexA_grp_parentConstraint1.w0" "geo_l_FingerIndexA_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerIndexB_grp_parentConstraint1.ctx" "geo_l_FingerIndexB_grp.tx"
		;
connectAttr "geo_l_FingerIndexB_grp_parentConstraint1.cty" "geo_l_FingerIndexB_grp.ty"
		;
connectAttr "geo_l_FingerIndexB_grp_parentConstraint1.ctz" "geo_l_FingerIndexB_grp.tz"
		;
connectAttr "geo_l_FingerIndexB_grp_parentConstraint1.crx" "geo_l_FingerIndexB_grp.rx"
		;
connectAttr "geo_l_FingerIndexB_grp_parentConstraint1.cry" "geo_l_FingerIndexB_grp.ry"
		;
connectAttr "geo_l_FingerIndexB_grp_parentConstraint1.crz" "geo_l_FingerIndexB_grp.rz"
		;
connectAttr "geo_l_FingerIndexB_grp.ro" "geo_l_FingerIndexB_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerIndexB_grp.pim" "geo_l_FingerIndexB_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerIndexB_grp.rp" "geo_l_FingerIndexB_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerIndexB_grp.rpt" "geo_l_FingerIndexB_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerIndexB.t" "geo_l_FingerIndexB_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerIndexB.rp" "geo_l_FingerIndexB_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerIndexB.rpt" "geo_l_FingerIndexB_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerIndexB.r" "geo_l_FingerIndexB_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerIndexB.ro" "geo_l_FingerIndexB_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerIndexB.s" "geo_l_FingerIndexB_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerIndexB.pm" "geo_l_FingerIndexB_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerIndexB.jo" "geo_l_FingerIndexB_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerIndexB.ssc" "geo_l_FingerIndexB_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerIndexB.is" "geo_l_FingerIndexB_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerIndexB_grp_parentConstraint1.w0" "geo_l_FingerIndexB_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerIndexC_grp_parentConstraint1.ctx" "geo_l_FingerIndexC_grp.tx"
		;
connectAttr "geo_l_FingerIndexC_grp_parentConstraint1.cty" "geo_l_FingerIndexC_grp.ty"
		;
connectAttr "geo_l_FingerIndexC_grp_parentConstraint1.ctz" "geo_l_FingerIndexC_grp.tz"
		;
connectAttr "geo_l_FingerIndexC_grp_parentConstraint1.crx" "geo_l_FingerIndexC_grp.rx"
		;
connectAttr "geo_l_FingerIndexC_grp_parentConstraint1.cry" "geo_l_FingerIndexC_grp.ry"
		;
connectAttr "geo_l_FingerIndexC_grp_parentConstraint1.crz" "geo_l_FingerIndexC_grp.rz"
		;
connectAttr "geo_l_FingerIndexC_grp.ro" "geo_l_FingerIndexC_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerIndexC_grp.pim" "geo_l_FingerIndexC_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerIndexC_grp.rp" "geo_l_FingerIndexC_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerIndexC_grp.rpt" "geo_l_FingerIndexC_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerIndexC.t" "geo_l_FingerIndexC_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerIndexC.rp" "geo_l_FingerIndexC_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerIndexC.rpt" "geo_l_FingerIndexC_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerIndexC.r" "geo_l_FingerIndexC_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerIndexC.ro" "geo_l_FingerIndexC_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerIndexC.s" "geo_l_FingerIndexC_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerIndexC.pm" "geo_l_FingerIndexC_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerIndexC.jo" "geo_l_FingerIndexC_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerIndexC.ssc" "geo_l_FingerIndexC_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerIndexC.is" "geo_l_FingerIndexC_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerIndexC_grp_parentConstraint1.w0" "geo_l_FingerIndexC_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerMiddleA_grp_parentConstraint1.ctx" "geo_l_FingerMiddleA_grp.tx"
		;
connectAttr "geo_l_FingerMiddleA_grp_parentConstraint1.cty" "geo_l_FingerMiddleA_grp.ty"
		;
connectAttr "geo_l_FingerMiddleA_grp_parentConstraint1.ctz" "geo_l_FingerMiddleA_grp.tz"
		;
connectAttr "geo_l_FingerMiddleA_grp_parentConstraint1.crx" "geo_l_FingerMiddleA_grp.rx"
		;
connectAttr "geo_l_FingerMiddleA_grp_parentConstraint1.cry" "geo_l_FingerMiddleA_grp.ry"
		;
connectAttr "geo_l_FingerMiddleA_grp_parentConstraint1.crz" "geo_l_FingerMiddleA_grp.rz"
		;
connectAttr "geo_l_FingerMiddleA_grp.ro" "geo_l_FingerMiddleA_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerMiddleA_grp.pim" "geo_l_FingerMiddleA_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerMiddleA_grp.rp" "geo_l_FingerMiddleA_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerMiddleA_grp.rpt" "geo_l_FingerMiddleA_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerMiddleA.t" "geo_l_FingerMiddleA_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerMiddleA.rp" "geo_l_FingerMiddleA_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerMiddleA.rpt" "geo_l_FingerMiddleA_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerMiddleA.r" "geo_l_FingerMiddleA_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerMiddleA.ro" "geo_l_FingerMiddleA_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerMiddleA.s" "geo_l_FingerMiddleA_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerMiddleA.pm" "geo_l_FingerMiddleA_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerMiddleA.jo" "geo_l_FingerMiddleA_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerMiddleA.ssc" "geo_l_FingerMiddleA_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerMiddleA.is" "geo_l_FingerMiddleA_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerMiddleA_grp_parentConstraint1.w0" "geo_l_FingerMiddleA_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerMiddleB_grp_parentConstraint1.ctx" "geo_l_FingerMiddleB_grp.tx"
		;
connectAttr "geo_l_FingerMiddleB_grp_parentConstraint1.cty" "geo_l_FingerMiddleB_grp.ty"
		;
connectAttr "geo_l_FingerMiddleB_grp_parentConstraint1.ctz" "geo_l_FingerMiddleB_grp.tz"
		;
connectAttr "geo_l_FingerMiddleB_grp_parentConstraint1.crx" "geo_l_FingerMiddleB_grp.rx"
		;
connectAttr "geo_l_FingerMiddleB_grp_parentConstraint1.cry" "geo_l_FingerMiddleB_grp.ry"
		;
connectAttr "geo_l_FingerMiddleB_grp_parentConstraint1.crz" "geo_l_FingerMiddleB_grp.rz"
		;
connectAttr "geo_l_FingerMiddleB_grp.ro" "geo_l_FingerMiddleB_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerMiddleB_grp.pim" "geo_l_FingerMiddleB_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerMiddleB_grp.rp" "geo_l_FingerMiddleB_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerMiddleB_grp.rpt" "geo_l_FingerMiddleB_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerMiddleB.t" "geo_l_FingerMiddleB_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerMiddleB.rp" "geo_l_FingerMiddleB_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerMiddleB.rpt" "geo_l_FingerMiddleB_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerMiddleB.r" "geo_l_FingerMiddleB_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerMiddleB.ro" "geo_l_FingerMiddleB_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerMiddleB.s" "geo_l_FingerMiddleB_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerMiddleB.pm" "geo_l_FingerMiddleB_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerMiddleB.jo" "geo_l_FingerMiddleB_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerMiddleB.ssc" "geo_l_FingerMiddleB_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerMiddleB.is" "geo_l_FingerMiddleB_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerMiddleB_grp_parentConstraint1.w0" "geo_l_FingerMiddleB_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerMiddleC_grp_parentConstraint1.ctx" "geo_l_FingerMiddleC_grp.tx"
		;
connectAttr "geo_l_FingerMiddleC_grp_parentConstraint1.cty" "geo_l_FingerMiddleC_grp.ty"
		;
connectAttr "geo_l_FingerMiddleC_grp_parentConstraint1.ctz" "geo_l_FingerMiddleC_grp.tz"
		;
connectAttr "geo_l_FingerMiddleC_grp_parentConstraint1.crx" "geo_l_FingerMiddleC_grp.rx"
		;
connectAttr "geo_l_FingerMiddleC_grp_parentConstraint1.cry" "geo_l_FingerMiddleC_grp.ry"
		;
connectAttr "geo_l_FingerMiddleC_grp_parentConstraint1.crz" "geo_l_FingerMiddleC_grp.rz"
		;
connectAttr "geo_l_FingerMiddleC_grp.ro" "geo_l_FingerMiddleC_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerMiddleC_grp.pim" "geo_l_FingerMiddleC_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerMiddleC_grp.rp" "geo_l_FingerMiddleC_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerMiddleC_grp.rpt" "geo_l_FingerMiddleC_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerMiddleC.t" "geo_l_FingerMiddleC_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerMiddleC.rp" "geo_l_FingerMiddleC_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerMiddleC.rpt" "geo_l_FingerMiddleC_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerMiddleC.r" "geo_l_FingerMiddleC_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerMiddleC.ro" "geo_l_FingerMiddleC_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerMiddleC.s" "geo_l_FingerMiddleC_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerMiddleC.pm" "geo_l_FingerMiddleC_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerMiddleC.jo" "geo_l_FingerMiddleC_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerMiddleC.ssc" "geo_l_FingerMiddleC_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerMiddleC.is" "geo_l_FingerMiddleC_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerMiddleC_grp_parentConstraint1.w0" "geo_l_FingerMiddleC_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerRingA_grp_parentConstraint1.ctx" "geo_l_FingerRingA_grp.tx"
		;
connectAttr "geo_l_FingerRingA_grp_parentConstraint1.cty" "geo_l_FingerRingA_grp.ty"
		;
connectAttr "geo_l_FingerRingA_grp_parentConstraint1.ctz" "geo_l_FingerRingA_grp.tz"
		;
connectAttr "geo_l_FingerRingA_grp_parentConstraint1.crx" "geo_l_FingerRingA_grp.rx"
		;
connectAttr "geo_l_FingerRingA_grp_parentConstraint1.cry" "geo_l_FingerRingA_grp.ry"
		;
connectAttr "geo_l_FingerRingA_grp_parentConstraint1.crz" "geo_l_FingerRingA_grp.rz"
		;
connectAttr "geo_l_FingerRingA_grp.ro" "geo_l_FingerRingA_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerRingA_grp.pim" "geo_l_FingerRingA_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerRingA_grp.rp" "geo_l_FingerRingA_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerRingA_grp.rpt" "geo_l_FingerRingA_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerRingA.t" "geo_l_FingerRingA_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerRingA.rp" "geo_l_FingerRingA_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerRingA.rpt" "geo_l_FingerRingA_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerRingA.r" "geo_l_FingerRingA_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerRingA.ro" "geo_l_FingerRingA_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerRingA.s" "geo_l_FingerRingA_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerRingA.pm" "geo_l_FingerRingA_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerRingA.jo" "geo_l_FingerRingA_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerRingA.ssc" "geo_l_FingerRingA_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerRingA.is" "geo_l_FingerRingA_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerRingA_grp_parentConstraint1.w0" "geo_l_FingerRingA_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerRingB_grp_parentConstraint1.ctx" "geo_l_FingerRingB_grp.tx"
		;
connectAttr "geo_l_FingerRingB_grp_parentConstraint1.cty" "geo_l_FingerRingB_grp.ty"
		;
connectAttr "geo_l_FingerRingB_grp_parentConstraint1.ctz" "geo_l_FingerRingB_grp.tz"
		;
connectAttr "geo_l_FingerRingB_grp_parentConstraint1.crx" "geo_l_FingerRingB_grp.rx"
		;
connectAttr "geo_l_FingerRingB_grp_parentConstraint1.cry" "geo_l_FingerRingB_grp.ry"
		;
connectAttr "geo_l_FingerRingB_grp_parentConstraint1.crz" "geo_l_FingerRingB_grp.rz"
		;
connectAttr "geo_l_FingerRingB_grp.ro" "geo_l_FingerRingB_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerRingB_grp.pim" "geo_l_FingerRingB_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerRingB_grp.rp" "geo_l_FingerRingB_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerRingB_grp.rpt" "geo_l_FingerRingB_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerRingB.t" "geo_l_FingerRingB_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerRingB.rp" "geo_l_FingerRingB_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerRingB.rpt" "geo_l_FingerRingB_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerRingB.r" "geo_l_FingerRingB_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerRingB.ro" "geo_l_FingerRingB_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerRingB.s" "geo_l_FingerRingB_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerRingB.pm" "geo_l_FingerRingB_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerRingB.jo" "geo_l_FingerRingB_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerRingB.ssc" "geo_l_FingerRingB_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerRingB.is" "geo_l_FingerRingB_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerRingB_grp_parentConstraint1.w0" "geo_l_FingerRingB_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerRingC_grp_parentConstraint1.ctx" "geo_l_FingerRingC_grp.tx"
		;
connectAttr "geo_l_FingerRingC_grp_parentConstraint1.cty" "geo_l_FingerRingC_grp.ty"
		;
connectAttr "geo_l_FingerRingC_grp_parentConstraint1.ctz" "geo_l_FingerRingC_grp.tz"
		;
connectAttr "geo_l_FingerRingC_grp_parentConstraint1.crx" "geo_l_FingerRingC_grp.rx"
		;
connectAttr "geo_l_FingerRingC_grp_parentConstraint1.cry" "geo_l_FingerRingC_grp.ry"
		;
connectAttr "geo_l_FingerRingC_grp_parentConstraint1.crz" "geo_l_FingerRingC_grp.rz"
		;
connectAttr "geo_l_FingerRingC_grp.ro" "geo_l_FingerRingC_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerRingC_grp.pim" "geo_l_FingerRingC_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerRingC_grp.rp" "geo_l_FingerRingC_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerRingC_grp.rpt" "geo_l_FingerRingC_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerRingC.t" "geo_l_FingerRingC_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerRingC.rp" "geo_l_FingerRingC_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerRingC.rpt" "geo_l_FingerRingC_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerRingC.r" "geo_l_FingerRingC_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerRingC.ro" "geo_l_FingerRingC_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerRingC.s" "geo_l_FingerRingC_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerRingC.pm" "geo_l_FingerRingC_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerRingC.jo" "geo_l_FingerRingC_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerRingC.ssc" "geo_l_FingerRingC_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerRingC.is" "geo_l_FingerRingC_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerRingC_grp_parentConstraint1.w0" "geo_l_FingerRingC_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerPinkyB_grp_parentConstraint1.ctx" "geo_l_FingerPinkyB_grp.tx"
		;
connectAttr "geo_l_FingerPinkyB_grp_parentConstraint1.cty" "geo_l_FingerPinkyB_grp.ty"
		;
connectAttr "geo_l_FingerPinkyB_grp_parentConstraint1.ctz" "geo_l_FingerPinkyB_grp.tz"
		;
connectAttr "geo_l_FingerPinkyB_grp_parentConstraint1.crx" "geo_l_FingerPinkyB_grp.rx"
		;
connectAttr "geo_l_FingerPinkyB_grp_parentConstraint1.cry" "geo_l_FingerPinkyB_grp.ry"
		;
connectAttr "geo_l_FingerPinkyB_grp_parentConstraint1.crz" "geo_l_FingerPinkyB_grp.rz"
		;
connectAttr "geo_l_FingerPinkyB_grp.ro" "geo_l_FingerPinkyB_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerPinkyB_grp.pim" "geo_l_FingerPinkyB_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerPinkyB_grp.rp" "geo_l_FingerPinkyB_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerPinkyB_grp.rpt" "geo_l_FingerPinkyB_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerPinkyB.t" "geo_l_FingerPinkyB_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerPinkyB.rp" "geo_l_FingerPinkyB_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerPinkyB.rpt" "geo_l_FingerPinkyB_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerPinkyB.r" "geo_l_FingerPinkyB_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerPinkyB.ro" "geo_l_FingerPinkyB_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerPinkyB.s" "geo_l_FingerPinkyB_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerPinkyB.pm" "geo_l_FingerPinkyB_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerPinkyB.jo" "geo_l_FingerPinkyB_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerPinkyB.ssc" "geo_l_FingerPinkyB_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerPinkyB.is" "geo_l_FingerPinkyB_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerPinkyB_grp_parentConstraint1.w0" "geo_l_FingerPinkyB_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerPinkyC_grp_parentConstraint1.ctx" "geo_l_FingerPinkyC_grp.tx"
		;
connectAttr "geo_l_FingerPinkyC_grp_parentConstraint1.cty" "geo_l_FingerPinkyC_grp.ty"
		;
connectAttr "geo_l_FingerPinkyC_grp_parentConstraint1.ctz" "geo_l_FingerPinkyC_grp.tz"
		;
connectAttr "geo_l_FingerPinkyC_grp_parentConstraint1.crx" "geo_l_FingerPinkyC_grp.rx"
		;
connectAttr "geo_l_FingerPinkyC_grp_parentConstraint1.cry" "geo_l_FingerPinkyC_grp.ry"
		;
connectAttr "geo_l_FingerPinkyC_grp_parentConstraint1.crz" "geo_l_FingerPinkyC_grp.rz"
		;
connectAttr "geo_l_FingerPinkyC_grp.ro" "geo_l_FingerPinkyC_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerPinkyC_grp.pim" "geo_l_FingerPinkyC_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerPinkyC_grp.rp" "geo_l_FingerPinkyC_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerPinkyC_grp.rpt" "geo_l_FingerPinkyC_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerPinkyC.t" "geo_l_FingerPinkyC_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerPinkyC.rp" "geo_l_FingerPinkyC_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerPinkyC.rpt" "geo_l_FingerPinkyC_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerPinkyC.r" "geo_l_FingerPinkyC_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerPinkyC.ro" "geo_l_FingerPinkyC_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerPinkyC.s" "geo_l_FingerPinkyC_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerPinkyC.pm" "geo_l_FingerPinkyC_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerPinkyC.jo" "geo_l_FingerPinkyC_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerPinkyC.ssc" "geo_l_FingerPinkyC_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerPinkyC.is" "geo_l_FingerPinkyC_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerPinkyC_grp_parentConstraint1.w0" "geo_l_FingerPinkyC_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_FingerPinkyD_grp_parentConstraint1.ctx" "geo_l_FingerPinkyD_grp.tx"
		;
connectAttr "geo_l_FingerPinkyD_grp_parentConstraint1.cty" "geo_l_FingerPinkyD_grp.ty"
		;
connectAttr "geo_l_FingerPinkyD_grp_parentConstraint1.ctz" "geo_l_FingerPinkyD_grp.tz"
		;
connectAttr "geo_l_FingerPinkyD_grp_parentConstraint1.crx" "geo_l_FingerPinkyD_grp.rx"
		;
connectAttr "geo_l_FingerPinkyD_grp_parentConstraint1.cry" "geo_l_FingerPinkyD_grp.ry"
		;
connectAttr "geo_l_FingerPinkyD_grp_parentConstraint1.crz" "geo_l_FingerPinkyD_grp.rz"
		;
connectAttr "geo_l_FingerPinkyD_grp.ro" "geo_l_FingerPinkyD_grp_parentConstraint1.cro"
		;
connectAttr "geo_l_FingerPinkyD_grp.pim" "geo_l_FingerPinkyD_grp_parentConstraint1.cpim"
		;
connectAttr "geo_l_FingerPinkyD_grp.rp" "geo_l_FingerPinkyD_grp_parentConstraint1.crp"
		;
connectAttr "geo_l_FingerPinkyD_grp.rpt" "geo_l_FingerPinkyD_grp_parentConstraint1.crt"
		;
connectAttr "jnt_l_FingerPinkyD.t" "geo_l_FingerPinkyD_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_l_FingerPinkyD.rp" "geo_l_FingerPinkyD_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_l_FingerPinkyD.rpt" "geo_l_FingerPinkyD_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_l_FingerPinkyD.r" "geo_l_FingerPinkyD_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_l_FingerPinkyD.ro" "geo_l_FingerPinkyD_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_l_FingerPinkyD.s" "geo_l_FingerPinkyD_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_l_FingerPinkyD.pm" "geo_l_FingerPinkyD_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_l_FingerPinkyD.jo" "geo_l_FingerPinkyD_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_l_FingerPinkyD.ssc" "geo_l_FingerPinkyD_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_l_FingerPinkyD.is" "geo_l_FingerPinkyD_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_l_FingerPinkyD_grp_parentConstraint1.w0" "geo_l_FingerPinkyD_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_palm_parentConstraint1.ctx" "geo_l_palm.tx";
connectAttr "geo_l_palm_parentConstraint1.cty" "geo_l_palm.ty";
connectAttr "geo_l_palm_parentConstraint1.ctz" "geo_l_palm.tz";
connectAttr "geo_l_palm_parentConstraint1.crx" "geo_l_palm.rx";
connectAttr "geo_l_palm_parentConstraint1.cry" "geo_l_palm.ry";
connectAttr "geo_l_palm_parentConstraint1.crz" "geo_l_palm.rz";
connectAttr "geo_l_palm.ro" "geo_l_palm_parentConstraint1.cro";
connectAttr "geo_l_palm.pim" "geo_l_palm_parentConstraint1.cpim";
connectAttr "geo_l_palm.rp" "geo_l_palm_parentConstraint1.crp";
connectAttr "geo_l_palm.rpt" "geo_l_palm_parentConstraint1.crt";
connectAttr "ctl_l_hand.t" "geo_l_palm_parentConstraint1.tg[0].tt";
connectAttr "ctl_l_hand.rp" "geo_l_palm_parentConstraint1.tg[0].trp";
connectAttr "ctl_l_hand.rpt" "geo_l_palm_parentConstraint1.tg[0].trt";
connectAttr "ctl_l_hand.r" "geo_l_palm_parentConstraint1.tg[0].tr";
connectAttr "ctl_l_hand.ro" "geo_l_palm_parentConstraint1.tg[0].tro";
connectAttr "ctl_l_hand.s" "geo_l_palm_parentConstraint1.tg[0].ts";
connectAttr "ctl_l_hand.pm" "geo_l_palm_parentConstraint1.tg[0].tpm";
connectAttr "geo_l_palm_parentConstraint1.w0" "geo_l_palm_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_l_wrist_parentConstraint1.ctx" "geo_l_wrist.tx";
connectAttr "geo_l_wrist_parentConstraint1.cty" "geo_l_wrist.ty";
connectAttr "geo_l_wrist_parentConstraint1.ctz" "geo_l_wrist.tz";
connectAttr "geo_l_wrist_parentConstraint1.crx" "geo_l_wrist.rx";
connectAttr "geo_l_wrist_parentConstraint1.cry" "geo_l_wrist.ry";
connectAttr "geo_l_wrist_parentConstraint1.crz" "geo_l_wrist.rz";
connectAttr "geo_l_wrist.ro" "geo_l_wrist_parentConstraint1.cro";
connectAttr "geo_l_wrist.pim" "geo_l_wrist_parentConstraint1.cpim";
connectAttr "geo_l_wrist.rp" "geo_l_wrist_parentConstraint1.crp";
connectAttr "geo_l_wrist.rpt" "geo_l_wrist_parentConstraint1.crt";
connectAttr "ctl_l_hand.t" "geo_l_wrist_parentConstraint1.tg[0].tt";
connectAttr "ctl_l_hand.rp" "geo_l_wrist_parentConstraint1.tg[0].trp";
connectAttr "ctl_l_hand.rpt" "geo_l_wrist_parentConstraint1.tg[0].trt";
connectAttr "ctl_l_hand.r" "geo_l_wrist_parentConstraint1.tg[0].tr";
connectAttr "ctl_l_hand.ro" "geo_l_wrist_parentConstraint1.tg[0].tro";
connectAttr "ctl_l_hand.s" "geo_l_wrist_parentConstraint1.tg[0].ts";
connectAttr "ctl_l_hand.pm" "geo_l_wrist_parentConstraint1.tg[0].tpm";
connectAttr "geo_l_wrist_parentConstraint1.w0" "geo_l_wrist_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerThumbA_grp_parentConstraint1.ctx" "geo_r_FingerThumbA_grp.tx"
		;
connectAttr "geo_r_FingerThumbA_grp_parentConstraint1.cty" "geo_r_FingerThumbA_grp.ty"
		;
connectAttr "geo_r_FingerThumbA_grp_parentConstraint1.ctz" "geo_r_FingerThumbA_grp.tz"
		;
connectAttr "geo_r_FingerThumbA_grp_parentConstraint1.crx" "geo_r_FingerThumbA_grp.rx"
		;
connectAttr "geo_r_FingerThumbA_grp_parentConstraint1.cry" "geo_r_FingerThumbA_grp.ry"
		;
connectAttr "geo_r_FingerThumbA_grp_parentConstraint1.crz" "geo_r_FingerThumbA_grp.rz"
		;
connectAttr "geo_r_FingerThumbA_grp.ro" "geo_r_FingerThumbA_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerThumbA_grp.pim" "geo_r_FingerThumbA_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerThumbA_grp.rp" "geo_r_FingerThumbA_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerThumbA_grp.rpt" "geo_r_FingerThumbA_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerThumbA.t" "geo_r_FingerThumbA_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerThumbA.rp" "geo_r_FingerThumbA_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerThumbA.rpt" "geo_r_FingerThumbA_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerThumbA.r" "geo_r_FingerThumbA_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerThumbA.ro" "geo_r_FingerThumbA_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerThumbA.s" "geo_r_FingerThumbA_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerThumbA.pm" "geo_r_FingerThumbA_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerThumbA.jo" "geo_r_FingerThumbA_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerThumbA.ssc" "geo_r_FingerThumbA_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerThumbA.is" "geo_r_FingerThumbA_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerThumbA_grp_parentConstraint1.w0" "geo_r_FingerThumbA_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerThumbB_grp_parentConstraint1.ctx" "geo_r_FingerThumbB_grp.tx"
		;
connectAttr "geo_r_FingerThumbB_grp_parentConstraint1.cty" "geo_r_FingerThumbB_grp.ty"
		;
connectAttr "geo_r_FingerThumbB_grp_parentConstraint1.ctz" "geo_r_FingerThumbB_grp.tz"
		;
connectAttr "geo_r_FingerThumbB_grp_parentConstraint1.crx" "geo_r_FingerThumbB_grp.rx"
		;
connectAttr "geo_r_FingerThumbB_grp_parentConstraint1.cry" "geo_r_FingerThumbB_grp.ry"
		;
connectAttr "geo_r_FingerThumbB_grp_parentConstraint1.crz" "geo_r_FingerThumbB_grp.rz"
		;
connectAttr "geo_r_FingerThumbB_grp.ro" "geo_r_FingerThumbB_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerThumbB_grp.pim" "geo_r_FingerThumbB_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerThumbB_grp.rp" "geo_r_FingerThumbB_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerThumbB_grp.rpt" "geo_r_FingerThumbB_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerThumbB.t" "geo_r_FingerThumbB_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerThumbB.rp" "geo_r_FingerThumbB_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerThumbB.rpt" "geo_r_FingerThumbB_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerThumbB.r" "geo_r_FingerThumbB_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerThumbB.ro" "geo_r_FingerThumbB_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerThumbB.s" "geo_r_FingerThumbB_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerThumbB.pm" "geo_r_FingerThumbB_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerThumbB.jo" "geo_r_FingerThumbB_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerThumbB.ssc" "geo_r_FingerThumbB_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerThumbB.is" "geo_r_FingerThumbB_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerThumbB_grp_parentConstraint1.w0" "geo_r_FingerThumbB_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerThumbC_grp_parentConstraint1.ctx" "geo_r_FingerThumbC_grp.tx"
		;
connectAttr "geo_r_FingerThumbC_grp_parentConstraint1.cty" "geo_r_FingerThumbC_grp.ty"
		;
connectAttr "geo_r_FingerThumbC_grp_parentConstraint1.ctz" "geo_r_FingerThumbC_grp.tz"
		;
connectAttr "geo_r_FingerThumbC_grp_parentConstraint1.crx" "geo_r_FingerThumbC_grp.rx"
		;
connectAttr "geo_r_FingerThumbC_grp_parentConstraint1.cry" "geo_r_FingerThumbC_grp.ry"
		;
connectAttr "geo_r_FingerThumbC_grp_parentConstraint1.crz" "geo_r_FingerThumbC_grp.rz"
		;
connectAttr "geo_r_FingerThumbC_grp.ro" "geo_r_FingerThumbC_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerThumbC_grp.pim" "geo_r_FingerThumbC_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerThumbC_grp.rp" "geo_r_FingerThumbC_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerThumbC_grp.rpt" "geo_r_FingerThumbC_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerThumbC.t" "geo_r_FingerThumbC_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerThumbC.rp" "geo_r_FingerThumbC_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerThumbC.rpt" "geo_r_FingerThumbC_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerThumbC.r" "geo_r_FingerThumbC_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerThumbC.ro" "geo_r_FingerThumbC_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerThumbC.s" "geo_r_FingerThumbC_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerThumbC.pm" "geo_r_FingerThumbC_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerThumbC.jo" "geo_r_FingerThumbC_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerThumbC.ssc" "geo_r_FingerThumbC_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerThumbC.is" "geo_r_FingerThumbC_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerThumbC_grp_parentConstraint1.w0" "geo_r_FingerThumbC_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerIndexA_grp_parentConstraint1.ctx" "geo_r_FingerIndexA_grp.tx"
		;
connectAttr "geo_r_FingerIndexA_grp_parentConstraint1.cty" "geo_r_FingerIndexA_grp.ty"
		;
connectAttr "geo_r_FingerIndexA_grp_parentConstraint1.ctz" "geo_r_FingerIndexA_grp.tz"
		;
connectAttr "geo_r_FingerIndexA_grp_parentConstraint1.crx" "geo_r_FingerIndexA_grp.rx"
		;
connectAttr "geo_r_FingerIndexA_grp_parentConstraint1.cry" "geo_r_FingerIndexA_grp.ry"
		;
connectAttr "geo_r_FingerIndexA_grp_parentConstraint1.crz" "geo_r_FingerIndexA_grp.rz"
		;
connectAttr "geo_r_FingerIndexA_grp.ro" "geo_r_FingerIndexA_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerIndexA_grp.pim" "geo_r_FingerIndexA_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerIndexA_grp.rp" "geo_r_FingerIndexA_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerIndexA_grp.rpt" "geo_r_FingerIndexA_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerIndexA.t" "geo_r_FingerIndexA_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerIndexA.rp" "geo_r_FingerIndexA_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerIndexA.rpt" "geo_r_FingerIndexA_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerIndexA.r" "geo_r_FingerIndexA_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerIndexA.ro" "geo_r_FingerIndexA_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerIndexA.s" "geo_r_FingerIndexA_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerIndexA.pm" "geo_r_FingerIndexA_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerIndexA.jo" "geo_r_FingerIndexA_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerIndexA.ssc" "geo_r_FingerIndexA_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerIndexA.is" "geo_r_FingerIndexA_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerIndexA_grp_parentConstraint1.w0" "geo_r_FingerIndexA_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerIndexB_grp_parentConstraint1.ctx" "geo_r_FingerIndexB_grp.tx"
		;
connectAttr "geo_r_FingerIndexB_grp_parentConstraint1.cty" "geo_r_FingerIndexB_grp.ty"
		;
connectAttr "geo_r_FingerIndexB_grp_parentConstraint1.ctz" "geo_r_FingerIndexB_grp.tz"
		;
connectAttr "geo_r_FingerIndexB_grp_parentConstraint1.crx" "geo_r_FingerIndexB_grp.rx"
		;
connectAttr "geo_r_FingerIndexB_grp_parentConstraint1.cry" "geo_r_FingerIndexB_grp.ry"
		;
connectAttr "geo_r_FingerIndexB_grp_parentConstraint1.crz" "geo_r_FingerIndexB_grp.rz"
		;
connectAttr "geo_r_FingerIndexB_grp.ro" "geo_r_FingerIndexB_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerIndexB_grp.pim" "geo_r_FingerIndexB_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerIndexB_grp.rp" "geo_r_FingerIndexB_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerIndexB_grp.rpt" "geo_r_FingerIndexB_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerIndexB.t" "geo_r_FingerIndexB_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerIndexB.rp" "geo_r_FingerIndexB_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerIndexB.rpt" "geo_r_FingerIndexB_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerIndexB.r" "geo_r_FingerIndexB_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerIndexB.ro" "geo_r_FingerIndexB_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerIndexB.s" "geo_r_FingerIndexB_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerIndexB.pm" "geo_r_FingerIndexB_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerIndexB.jo" "geo_r_FingerIndexB_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerIndexB.ssc" "geo_r_FingerIndexB_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerIndexB.is" "geo_r_FingerIndexB_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerIndexB_grp_parentConstraint1.w0" "geo_r_FingerIndexB_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerIndexC_grp_parentConstraint1.ctx" "geo_r_FingerIndexC_grp.tx"
		;
connectAttr "geo_r_FingerIndexC_grp_parentConstraint1.cty" "geo_r_FingerIndexC_grp.ty"
		;
connectAttr "geo_r_FingerIndexC_grp_parentConstraint1.ctz" "geo_r_FingerIndexC_grp.tz"
		;
connectAttr "geo_r_FingerIndexC_grp_parentConstraint1.crx" "geo_r_FingerIndexC_grp.rx"
		;
connectAttr "geo_r_FingerIndexC_grp_parentConstraint1.cry" "geo_r_FingerIndexC_grp.ry"
		;
connectAttr "geo_r_FingerIndexC_grp_parentConstraint1.crz" "geo_r_FingerIndexC_grp.rz"
		;
connectAttr "geo_r_FingerIndexC_grp.ro" "geo_r_FingerIndexC_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerIndexC_grp.pim" "geo_r_FingerIndexC_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerIndexC_grp.rp" "geo_r_FingerIndexC_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerIndexC_grp.rpt" "geo_r_FingerIndexC_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerIndexC.t" "geo_r_FingerIndexC_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerIndexC.rp" "geo_r_FingerIndexC_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerIndexC.rpt" "geo_r_FingerIndexC_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerIndexC.r" "geo_r_FingerIndexC_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerIndexC.ro" "geo_r_FingerIndexC_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerIndexC.s" "geo_r_FingerIndexC_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerIndexC.pm" "geo_r_FingerIndexC_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerIndexC.jo" "geo_r_FingerIndexC_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerIndexC.ssc" "geo_r_FingerIndexC_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerIndexC.is" "geo_r_FingerIndexC_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerIndexC_grp_parentConstraint1.w0" "geo_r_FingerIndexC_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerMiddleA_grp_parentConstraint1.ctx" "geo_r_FingerMiddleA_grp.tx"
		;
connectAttr "geo_r_FingerMiddleA_grp_parentConstraint1.cty" "geo_r_FingerMiddleA_grp.ty"
		;
connectAttr "geo_r_FingerMiddleA_grp_parentConstraint1.ctz" "geo_r_FingerMiddleA_grp.tz"
		;
connectAttr "geo_r_FingerMiddleA_grp_parentConstraint1.crx" "geo_r_FingerMiddleA_grp.rx"
		;
connectAttr "geo_r_FingerMiddleA_grp_parentConstraint1.cry" "geo_r_FingerMiddleA_grp.ry"
		;
connectAttr "geo_r_FingerMiddleA_grp_parentConstraint1.crz" "geo_r_FingerMiddleA_grp.rz"
		;
connectAttr "geo_r_FingerMiddleA_grp.ro" "geo_r_FingerMiddleA_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerMiddleA_grp.pim" "geo_r_FingerMiddleA_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerMiddleA_grp.rp" "geo_r_FingerMiddleA_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerMiddleA_grp.rpt" "geo_r_FingerMiddleA_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerMiddleA.t" "geo_r_FingerMiddleA_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerMiddleA.rp" "geo_r_FingerMiddleA_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerMiddleA.rpt" "geo_r_FingerMiddleA_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerMiddleA.r" "geo_r_FingerMiddleA_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerMiddleA.ro" "geo_r_FingerMiddleA_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerMiddleA.s" "geo_r_FingerMiddleA_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerMiddleA.pm" "geo_r_FingerMiddleA_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerMiddleA.jo" "geo_r_FingerMiddleA_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerMiddleA.ssc" "geo_r_FingerMiddleA_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerMiddleA.is" "geo_r_FingerMiddleA_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerMiddleA_grp_parentConstraint1.w0" "geo_r_FingerMiddleA_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerMiddleB_grp_parentConstraint1.ctx" "geo_r_FingerMiddleB_grp.tx"
		;
connectAttr "geo_r_FingerMiddleB_grp_parentConstraint1.cty" "geo_r_FingerMiddleB_grp.ty"
		;
connectAttr "geo_r_FingerMiddleB_grp_parentConstraint1.ctz" "geo_r_FingerMiddleB_grp.tz"
		;
connectAttr "geo_r_FingerMiddleB_grp_parentConstraint1.crx" "geo_r_FingerMiddleB_grp.rx"
		;
connectAttr "geo_r_FingerMiddleB_grp_parentConstraint1.cry" "geo_r_FingerMiddleB_grp.ry"
		;
connectAttr "geo_r_FingerMiddleB_grp_parentConstraint1.crz" "geo_r_FingerMiddleB_grp.rz"
		;
connectAttr "geo_r_FingerMiddleB_grp.ro" "geo_r_FingerMiddleB_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerMiddleB_grp.pim" "geo_r_FingerMiddleB_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerMiddleB_grp.rp" "geo_r_FingerMiddleB_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerMiddleB_grp.rpt" "geo_r_FingerMiddleB_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerMiddleB.t" "geo_r_FingerMiddleB_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerMiddleB.rp" "geo_r_FingerMiddleB_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerMiddleB.rpt" "geo_r_FingerMiddleB_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerMiddleB.r" "geo_r_FingerMiddleB_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerMiddleB.ro" "geo_r_FingerMiddleB_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerMiddleB.s" "geo_r_FingerMiddleB_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerMiddleB.pm" "geo_r_FingerMiddleB_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerMiddleB.jo" "geo_r_FingerMiddleB_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerMiddleB.ssc" "geo_r_FingerMiddleB_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerMiddleB.is" "geo_r_FingerMiddleB_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerMiddleB_grp_parentConstraint1.w0" "geo_r_FingerMiddleB_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerMiddleC_grp_parentConstraint1.ctx" "geo_r_FingerMiddleC_grp.tx"
		;
connectAttr "geo_r_FingerMiddleC_grp_parentConstraint1.cty" "geo_r_FingerMiddleC_grp.ty"
		;
connectAttr "geo_r_FingerMiddleC_grp_parentConstraint1.ctz" "geo_r_FingerMiddleC_grp.tz"
		;
connectAttr "geo_r_FingerMiddleC_grp_parentConstraint1.crx" "geo_r_FingerMiddleC_grp.rx"
		;
connectAttr "geo_r_FingerMiddleC_grp_parentConstraint1.cry" "geo_r_FingerMiddleC_grp.ry"
		;
connectAttr "geo_r_FingerMiddleC_grp_parentConstraint1.crz" "geo_r_FingerMiddleC_grp.rz"
		;
connectAttr "geo_r_FingerMiddleC_grp.ro" "geo_r_FingerMiddleC_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerMiddleC_grp.pim" "geo_r_FingerMiddleC_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerMiddleC_grp.rp" "geo_r_FingerMiddleC_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerMiddleC_grp.rpt" "geo_r_FingerMiddleC_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerMiddleC.t" "geo_r_FingerMiddleC_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerMiddleC.rp" "geo_r_FingerMiddleC_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerMiddleC.rpt" "geo_r_FingerMiddleC_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerMiddleC.r" "geo_r_FingerMiddleC_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerMiddleC.ro" "geo_r_FingerMiddleC_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerMiddleC.s" "geo_r_FingerMiddleC_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerMiddleC.pm" "geo_r_FingerMiddleC_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerMiddleC.jo" "geo_r_FingerMiddleC_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerMiddleC.ssc" "geo_r_FingerMiddleC_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerMiddleC.is" "geo_r_FingerMiddleC_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerMiddleC_grp_parentConstraint1.w0" "geo_r_FingerMiddleC_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerRingA_grp_parentConstraint1.ctx" "geo_r_FingerRingA_grp.tx"
		;
connectAttr "geo_r_FingerRingA_grp_parentConstraint1.cty" "geo_r_FingerRingA_grp.ty"
		;
connectAttr "geo_r_FingerRingA_grp_parentConstraint1.ctz" "geo_r_FingerRingA_grp.tz"
		;
connectAttr "geo_r_FingerRingA_grp_parentConstraint1.crx" "geo_r_FingerRingA_grp.rx"
		;
connectAttr "geo_r_FingerRingA_grp_parentConstraint1.cry" "geo_r_FingerRingA_grp.ry"
		;
connectAttr "geo_r_FingerRingA_grp_parentConstraint1.crz" "geo_r_FingerRingA_grp.rz"
		;
connectAttr "geo_r_FingerRingA_grp.ro" "geo_r_FingerRingA_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerRingA_grp.pim" "geo_r_FingerRingA_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerRingA_grp.rp" "geo_r_FingerRingA_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerRingA_grp.rpt" "geo_r_FingerRingA_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerRingA.t" "geo_r_FingerRingA_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerRingA.rp" "geo_r_FingerRingA_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerRingA.rpt" "geo_r_FingerRingA_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerRingA.r" "geo_r_FingerRingA_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerRingA.ro" "geo_r_FingerRingA_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerRingA.s" "geo_r_FingerRingA_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerRingA.pm" "geo_r_FingerRingA_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerRingA.jo" "geo_r_FingerRingA_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerRingA.ssc" "geo_r_FingerRingA_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerRingA.is" "geo_r_FingerRingA_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerRingA_grp_parentConstraint1.w0" "geo_r_FingerRingA_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerRingB_grp_parentConstraint1.ctx" "geo_r_FingerRingB_grp.tx"
		;
connectAttr "geo_r_FingerRingB_grp_parentConstraint1.cty" "geo_r_FingerRingB_grp.ty"
		;
connectAttr "geo_r_FingerRingB_grp_parentConstraint1.ctz" "geo_r_FingerRingB_grp.tz"
		;
connectAttr "geo_r_FingerRingB_grp_parentConstraint1.crx" "geo_r_FingerRingB_grp.rx"
		;
connectAttr "geo_r_FingerRingB_grp_parentConstraint1.cry" "geo_r_FingerRingB_grp.ry"
		;
connectAttr "geo_r_FingerRingB_grp_parentConstraint1.crz" "geo_r_FingerRingB_grp.rz"
		;
connectAttr "geo_r_FingerRingB_grp.ro" "geo_r_FingerRingB_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerRingB_grp.pim" "geo_r_FingerRingB_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerRingB_grp.rp" "geo_r_FingerRingB_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerRingB_grp.rpt" "geo_r_FingerRingB_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerRingB.t" "geo_r_FingerRingB_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerRingB.rp" "geo_r_FingerRingB_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerRingB.rpt" "geo_r_FingerRingB_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerRingB.r" "geo_r_FingerRingB_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerRingB.ro" "geo_r_FingerRingB_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerRingB.s" "geo_r_FingerRingB_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerRingB.pm" "geo_r_FingerRingB_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerRingB.jo" "geo_r_FingerRingB_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerRingB.ssc" "geo_r_FingerRingB_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerRingB.is" "geo_r_FingerRingB_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerRingB_grp_parentConstraint1.w0" "geo_r_FingerRingB_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerRingC_grp_parentConstraint1.ctx" "geo_r_FingerRingC_grp.tx"
		;
connectAttr "geo_r_FingerRingC_grp_parentConstraint1.cty" "geo_r_FingerRingC_grp.ty"
		;
connectAttr "geo_r_FingerRingC_grp_parentConstraint1.ctz" "geo_r_FingerRingC_grp.tz"
		;
connectAttr "geo_r_FingerRingC_grp_parentConstraint1.crx" "geo_r_FingerRingC_grp.rx"
		;
connectAttr "geo_r_FingerRingC_grp_parentConstraint1.cry" "geo_r_FingerRingC_grp.ry"
		;
connectAttr "geo_r_FingerRingC_grp_parentConstraint1.crz" "geo_r_FingerRingC_grp.rz"
		;
connectAttr "geo_r_FingerRingC_grp.ro" "geo_r_FingerRingC_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerRingC_grp.pim" "geo_r_FingerRingC_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerRingC_grp.rp" "geo_r_FingerRingC_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerRingC_grp.rpt" "geo_r_FingerRingC_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerRingC.t" "geo_r_FingerRingC_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerRingC.rp" "geo_r_FingerRingC_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerRingC.rpt" "geo_r_FingerRingC_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerRingC.r" "geo_r_FingerRingC_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerRingC.ro" "geo_r_FingerRingC_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerRingC.s" "geo_r_FingerRingC_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerRingC.pm" "geo_r_FingerRingC_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerRingC.jo" "geo_r_FingerRingC_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerRingC.ssc" "geo_r_FingerRingC_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerRingC.is" "geo_r_FingerRingC_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerRingC_grp_parentConstraint1.w0" "geo_r_FingerRingC_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerPinkyB_grp_parentConstraint1.ctx" "geo_r_FingerPinkyB_grp.tx"
		;
connectAttr "geo_r_FingerPinkyB_grp_parentConstraint1.cty" "geo_r_FingerPinkyB_grp.ty"
		;
connectAttr "geo_r_FingerPinkyB_grp_parentConstraint1.ctz" "geo_r_FingerPinkyB_grp.tz"
		;
connectAttr "geo_r_FingerPinkyB_grp_parentConstraint1.crx" "geo_r_FingerPinkyB_grp.rx"
		;
connectAttr "geo_r_FingerPinkyB_grp_parentConstraint1.cry" "geo_r_FingerPinkyB_grp.ry"
		;
connectAttr "geo_r_FingerPinkyB_grp_parentConstraint1.crz" "geo_r_FingerPinkyB_grp.rz"
		;
connectAttr "geo_r_FingerPinkyB_grp.ro" "geo_r_FingerPinkyB_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerPinkyB_grp.pim" "geo_r_FingerPinkyB_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerPinkyB_grp.rp" "geo_r_FingerPinkyB_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerPinkyB_grp.rpt" "geo_r_FingerPinkyB_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerPinkyB.t" "geo_r_FingerPinkyB_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerPinkyB.rp" "geo_r_FingerPinkyB_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerPinkyB.rpt" "geo_r_FingerPinkyB_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerPinkyB.r" "geo_r_FingerPinkyB_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerPinkyB.ro" "geo_r_FingerPinkyB_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerPinkyB.s" "geo_r_FingerPinkyB_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerPinkyB.pm" "geo_r_FingerPinkyB_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerPinkyB.jo" "geo_r_FingerPinkyB_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerPinkyB.ssc" "geo_r_FingerPinkyB_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerPinkyB.is" "geo_r_FingerPinkyB_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerPinkyB_grp_parentConstraint1.w0" "geo_r_FingerPinkyB_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerPinkyC_grp_parentConstraint1.ctx" "geo_r_FingerPinkyC_grp.tx"
		;
connectAttr "geo_r_FingerPinkyC_grp_parentConstraint1.cty" "geo_r_FingerPinkyC_grp.ty"
		;
connectAttr "geo_r_FingerPinkyC_grp_parentConstraint1.ctz" "geo_r_FingerPinkyC_grp.tz"
		;
connectAttr "geo_r_FingerPinkyC_grp_parentConstraint1.crx" "geo_r_FingerPinkyC_grp.rx"
		;
connectAttr "geo_r_FingerPinkyC_grp_parentConstraint1.cry" "geo_r_FingerPinkyC_grp.ry"
		;
connectAttr "geo_r_FingerPinkyC_grp_parentConstraint1.crz" "geo_r_FingerPinkyC_grp.rz"
		;
connectAttr "geo_r_FingerPinkyC_grp.ro" "geo_r_FingerPinkyC_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerPinkyC_grp.pim" "geo_r_FingerPinkyC_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerPinkyC_grp.rp" "geo_r_FingerPinkyC_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerPinkyC_grp.rpt" "geo_r_FingerPinkyC_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerPinkyC.t" "geo_r_FingerPinkyC_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerPinkyC.rp" "geo_r_FingerPinkyC_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerPinkyC.rpt" "geo_r_FingerPinkyC_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerPinkyC.r" "geo_r_FingerPinkyC_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerPinkyC.ro" "geo_r_FingerPinkyC_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerPinkyC.s" "geo_r_FingerPinkyC_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerPinkyC.pm" "geo_r_FingerPinkyC_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerPinkyC.jo" "geo_r_FingerPinkyC_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerPinkyC.ssc" "geo_r_FingerPinkyC_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerPinkyC.is" "geo_r_FingerPinkyC_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerPinkyC_grp_parentConstraint1.w0" "geo_r_FingerPinkyC_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_FingerPinkyD_grp_parentConstraint1.ctx" "geo_r_FingerPinkyD_grp.tx"
		;
connectAttr "geo_r_FingerPinkyD_grp_parentConstraint1.cty" "geo_r_FingerPinkyD_grp.ty"
		;
connectAttr "geo_r_FingerPinkyD_grp_parentConstraint1.ctz" "geo_r_FingerPinkyD_grp.tz"
		;
connectAttr "geo_r_FingerPinkyD_grp_parentConstraint1.crx" "geo_r_FingerPinkyD_grp.rx"
		;
connectAttr "geo_r_FingerPinkyD_grp_parentConstraint1.cry" "geo_r_FingerPinkyD_grp.ry"
		;
connectAttr "geo_r_FingerPinkyD_grp_parentConstraint1.crz" "geo_r_FingerPinkyD_grp.rz"
		;
connectAttr "geo_r_FingerPinkyD_grp.ro" "geo_r_FingerPinkyD_grp_parentConstraint1.cro"
		;
connectAttr "geo_r_FingerPinkyD_grp.pim" "geo_r_FingerPinkyD_grp_parentConstraint1.cpim"
		;
connectAttr "geo_r_FingerPinkyD_grp.rp" "geo_r_FingerPinkyD_grp_parentConstraint1.crp"
		;
connectAttr "geo_r_FingerPinkyD_grp.rpt" "geo_r_FingerPinkyD_grp_parentConstraint1.crt"
		;
connectAttr "jnt_r_FingerPinkyD.t" "geo_r_FingerPinkyD_grp_parentConstraint1.tg[0].tt"
		;
connectAttr "jnt_r_FingerPinkyD.rp" "geo_r_FingerPinkyD_grp_parentConstraint1.tg[0].trp"
		;
connectAttr "jnt_r_FingerPinkyD.rpt" "geo_r_FingerPinkyD_grp_parentConstraint1.tg[0].trt"
		;
connectAttr "jnt_r_FingerPinkyD.r" "geo_r_FingerPinkyD_grp_parentConstraint1.tg[0].tr"
		;
connectAttr "jnt_r_FingerPinkyD.ro" "geo_r_FingerPinkyD_grp_parentConstraint1.tg[0].tro"
		;
connectAttr "jnt_r_FingerPinkyD.s" "geo_r_FingerPinkyD_grp_parentConstraint1.tg[0].ts"
		;
connectAttr "jnt_r_FingerPinkyD.pm" "geo_r_FingerPinkyD_grp_parentConstraint1.tg[0].tpm"
		;
connectAttr "jnt_r_FingerPinkyD.jo" "geo_r_FingerPinkyD_grp_parentConstraint1.tg[0].tjo"
		;
connectAttr "jnt_r_FingerPinkyD.ssc" "geo_r_FingerPinkyD_grp_parentConstraint1.tg[0].tsc"
		;
connectAttr "jnt_r_FingerPinkyD.is" "geo_r_FingerPinkyD_grp_parentConstraint1.tg[0].tis"
		;
connectAttr "geo_r_FingerPinkyD_grp_parentConstraint1.w0" "geo_r_FingerPinkyD_grp_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_palm_parentConstraint1.ctx" "geo_r_palm.tx";
connectAttr "geo_r_palm_parentConstraint1.cty" "geo_r_palm.ty";
connectAttr "geo_r_palm_parentConstraint1.ctz" "geo_r_palm.tz";
connectAttr "geo_r_palm_parentConstraint1.crx" "geo_r_palm.rx";
connectAttr "geo_r_palm_parentConstraint1.cry" "geo_r_palm.ry";
connectAttr "geo_r_palm_parentConstraint1.crz" "geo_r_palm.rz";
connectAttr "geo_r_palm.ro" "geo_r_palm_parentConstraint1.cro";
connectAttr "geo_r_palm.pim" "geo_r_palm_parentConstraint1.cpim";
connectAttr "geo_r_palm.rp" "geo_r_palm_parentConstraint1.crp";
connectAttr "geo_r_palm.rpt" "geo_r_palm_parentConstraint1.crt";
connectAttr "ctl_r_hand.t" "geo_r_palm_parentConstraint1.tg[0].tt";
connectAttr "ctl_r_hand.rp" "geo_r_palm_parentConstraint1.tg[0].trp";
connectAttr "ctl_r_hand.rpt" "geo_r_palm_parentConstraint1.tg[0].trt";
connectAttr "ctl_r_hand.r" "geo_r_palm_parentConstraint1.tg[0].tr";
connectAttr "ctl_r_hand.ro" "geo_r_palm_parentConstraint1.tg[0].tro";
connectAttr "ctl_r_hand.s" "geo_r_palm_parentConstraint1.tg[0].ts";
connectAttr "ctl_r_hand.pm" "geo_r_palm_parentConstraint1.tg[0].tpm";
connectAttr "geo_r_palm_parentConstraint1.w0" "geo_r_palm_parentConstraint1.tg[0].tw"
		;
connectAttr "geo_r_wrist_parentConstraint1.ctx" "geo_r_wrist.tx";
connectAttr "geo_r_wrist_parentConstraint1.cty" "geo_r_wrist.ty";
connectAttr "geo_r_wrist_parentConstraint1.ctz" "geo_r_wrist.tz";
connectAttr "geo_r_wrist_parentConstraint1.crx" "geo_r_wrist.rx";
connectAttr "geo_r_wrist_parentConstraint1.cry" "geo_r_wrist.ry";
connectAttr "geo_r_wrist_parentConstraint1.crz" "geo_r_wrist.rz";
connectAttr "geo_r_wrist.ro" "geo_r_wrist_parentConstraint1.cro";
connectAttr "geo_r_wrist.pim" "geo_r_wrist_parentConstraint1.cpim";
connectAttr "geo_r_wrist.rp" "geo_r_wrist_parentConstraint1.crp";
connectAttr "geo_r_wrist.rpt" "geo_r_wrist_parentConstraint1.crt";
connectAttr "ctl_r_hand.t" "geo_r_wrist_parentConstraint1.tg[0].tt";
connectAttr "ctl_r_hand.rp" "geo_r_wrist_parentConstraint1.tg[0].trp";
connectAttr "ctl_r_hand.rpt" "geo_r_wrist_parentConstraint1.tg[0].trt";
connectAttr "ctl_r_hand.r" "geo_r_wrist_parentConstraint1.tg[0].tr";
connectAttr "ctl_r_hand.ro" "geo_r_wrist_parentConstraint1.tg[0].tro";
connectAttr "ctl_r_hand.s" "geo_r_wrist_parentConstraint1.tg[0].ts";
connectAttr "ctl_r_hand.pm" "geo_r_wrist_parentConstraint1.tg[0].tpm";
connectAttr "geo_r_wrist_parentConstraint1.w0" "geo_r_wrist_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "skin_SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "skin_SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "skin_mtl.oc" "skin_SG.ss";
connectAttr "geo_l_FingerThumbA_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerThumbAShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerThumbB_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerThumbBShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerThumbC_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerThumbCShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerIndexA_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerIndexAShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerIndexB_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerIndexBShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerIndexC_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerIndexCShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerMiddleA_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerMiddleAShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerMiddleB_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerMiddleBShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerMiddleC_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerMiddleCShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerRingA_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerRingAShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerRingB_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerRingBShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerRingC_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerRingCShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerPinkyB_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerPinkyBShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerPinkyC_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerPinkyCShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerPinkyD_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_FingerPinkyDShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_palmShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_l_wristShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerThumbA_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerThumbAShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerThumbB_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerThumbBShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerThumbC_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerThumbCShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerIndexA_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerIndexAShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerIndexB_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerIndexBShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerIndexC_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerIndexCShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerMiddleA_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerMiddleAShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerMiddleB_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerMiddleBShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerMiddleC_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerMiddleCShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerRingA_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerRingAShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerRingB_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerRingBShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerRingC_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerRingCShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerPinkyB_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerPinkyBShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerPinkyC_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerPinkyCShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerPinkyD_knuckleShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_FingerPinkyDShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_palmShape.iog" "skin_SG.dsm" -na;
connectAttr "geo_r_wristShape.iog" "skin_SG.dsm" -na;
connectAttr "skin_SG.msg" "materialInfo1.sg";
connectAttr "skin_SG.pa" ":renderPartition.st" -na;
connectAttr "skin_mtl.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of test_scene_clean.ma
