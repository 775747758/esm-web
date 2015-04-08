var esm = esm == null ? new Object() : esm;
esm.index = esm.index == null ? new Object() : esm.index;
esm.index.menu = esm.index.menu == null ? new Object() : esm.index.menu;
/*
 * 判断是否具有权限
 */
esm.index.isHavePermission = function(url) {
	var result=false;
	jQuery.ajax({
		url : "/getPermissions.do",
		type : "get",
		success : function(data, status, xhr) {
			var permissions = [];
			for ( var i in data) {
				permissions.push(data[i]);
			}
			for (var i = 0; i < permissions.length; i++) {
				var item = permissions[i];
				if(item.url==url)
				{
					result=true;
				}
			}
		}
	});
	return result;
};
/**
 * 初始化菜单
 */
esm.index.menu.init = function() {
	jQuery.ajax({
		url : "/getPermissions.do",
		type : "get",
		success : function(data, status, xhr) {
			var permissions = [];
			for ( var i in data) {
				permissions.push(data[i]);
			}
			// console.info(permissions);
			var trees = [];
			esm.index.menu.buildTree(permissions, trees);
			esm.index.menu.sort(trees);
			//console.info(trees);

			jQuery("#tt").tree({
				data : trees
			});
		}
	});
};

/**
 * 构造左侧菜单
 */
esm.index.menu.buildTree = function(permissions, trees) {
	for (var i = 0; i < permissions.length; i++) {
		var item = permissions[i];
		esm.index.menu.build(item, permissions, trees);
	}
};
/**
 * 构造左侧菜单树
 */
esm.index.menu.build = function(node, permissions, trees) {
	if (node.leaderId == 0) {
		esm.index.menu.format(node);
		trees.push(node);
	} else if (node.leaderId > 0) {
		for (var j = 0; j < permissions.length; j++) {
			var item = permissions[j];
			if (node.id == item.id) {
				continue;
			}
			if (node.leaderId == item.id) {
				esm.index.menu.format(node);
				item.children = item.children == null ? [] : item.children;
				item.children.push(node);
			}
		}
	}
};
/**
 * 格式化对象。方便调用jquery-easy-ui构造树所需要的json格式。
 */
esm.index.menu.format = function(permission) {
	if (permission.url.trim().length < 1) {
		permission.text = permission.name;
	} else {
			//<a onclick="esm.common.tab.create('添加用户','/settings/user/addUser.do');" title="应授予系统管理员">添加用户</a>
			 permission.text = "<a onclick=\"esm.common.tab.create('"
				 + permission.name + "','" + permission.url + "');\" title=\""
				 + permission.description + "\">" + permission.name + "</a>";
	}

	// 去除无用的属性
	var keys = [ "url", "name", "leaderId", "description" ];
	for (var i = 0; i < keys.length; i++) {
		delete (permission[keys[i]]);
	}
};
/**
 * 按照用户定的顺序排序
 */
esm.index.menu.sort = function(trees) {
	for (var i = 0; i < trees.length; i++) {
		for (var j = i + 1; j < trees.length; j++) {
			if (trees[j].seq < trees[i].seq) {
				var node = trees[i];
				trees[i] = trees[j];
				trees[j] = node;
			}
		}
		if (trees[i].children != null && trees[i].children.length > 0) {
			esm.index.menu.sort(trees[i].children);
		}
	}
};