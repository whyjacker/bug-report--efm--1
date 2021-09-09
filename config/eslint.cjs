// ESlint
module.exports = {
	extends : [
		"./eslint.default.json"
	],
	overrides : [
		{
			files : [
				'**/ignore/*',
			],
			env : {
				node : true,
			},
			rules         : {
				'id-match' : ['off'],
			},
		},
	],
}

