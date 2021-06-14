<?php
return [
    [
        'name' => 'Ql sản phẩm',
        'list-check' => ['attribute','category','keyword','product','comment','rating'],
        'icon' => 'fa fa-database',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Thông tin',
                'namespace' => 'attribute',
                'route' => 'admin.attribute.index',
                'icon'  => 'fa fa-key',
				'level'  => [1],
            ],
            [
                'name'  => 'Danh mục',
                'namespace' => 'category',
                'route' => 'admin.category.index',
                'icon'  => 'fa fa-edit',
				'level'  => [1],
			],
            [
                'name'  => 'Sản phẩm',
                'namespace' => 'product',
                'route' => 'admin.product.index',
                'icon'  => 'fa fa-database',
				'level'  => [1,2],
			],
			[
                'name'  => 'Bình luân',
                'namespace' => 'comment',
                'route' => 'admin.comment.index',
                'icon'  => 'fa fa-star',
				'level'  => [1,2],
            ],
        ]
    ],
   
	[
		'name' => 'Ql khách hàng',
		'list-check' => ['user','ncc'],
		'icon' => 'fa fa-user',
		'level'  => [1,2],
		'sub'  => [
			[
				'name'  => 'Khách hàng',
				'route' => 'admin.user.index',
				'namespace' => 'user',
				'icon'  => 'fa fa-user',
				'level'  => [1,2],
			],
			[
				'name'  => 'Nhà cung cấp',
				'route' => 'admin.ncc.index',
				'namespace' => 'user',
				'icon'  => 'fa fa-users',
				'level'  => [1,2],
			]
		]
	],
    [
        'name' => 'Đơn hàng',
        'list-check' => ['transaction'],
        'icon' => 'fa-shopping-cart',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Danh sách',
                'namespace' => 'transaction',
                'route' => 'admin.transaction.index',
                'icon'  => 'fa-opencart',
				'level'  => [1,2],
            ]
        ]
    ],
	[
        'name' => 'Kho',
        'list-check' => ['inventory','import','export','invoice_entered'],
        'icon' => 'fa-folder-open-o',
		'level'  => [1,2],
        'sub'  => [
            [
                'name'  => 'Nhập kho',
                'namespace' => 'import',
                'route' => 'admin.invoice_entered.index',
                'icon'  => 'fa-plus-square',
				'level'  => [1,2],
            ],
			[
				'name'  => 'Xuất kho',
				'namespace' => 'export',
				'route' => 'admin.inventory.out_of_stock',
				'icon'  => 'fa-plus-square',
				'level'  => [1,2],
			],
			[
				'name'  => 'Tồn kho',
				'namespace' => 'tonkho',
				'route' => 'admin.inventory.tonkho',
				'icon'  => 'fa-plus-square',
				'level'  => [1,2],
			]
        ]
    ],
    [
        'name'  => 'Hệ thống',
        'label' => 'true'
    ],
	[
		'name' => 'Hệ thống',
		'list-check' => ['slide','account_admin','event','page-static','statistical'],
		'icon' => 'fa  fa-usd',
		'level'  => [1],
		'sub'  => [
			[
				'name'  => 'Ql Nhân viên',
				'route' => 'admin.account_admin.index',
				'namespace' => 'pay-in',
				'level'  => [1],
				'icon'  => 'fa-circle-o'
			],
			
		]
	],
];
