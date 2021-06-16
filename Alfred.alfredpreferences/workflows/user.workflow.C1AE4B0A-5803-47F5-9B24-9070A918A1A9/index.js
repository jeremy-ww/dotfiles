const alfy = require('alfy');

let input = alfy.input.trim() || '';

try {
	if (input.length !== 0 && !input.startsWith('{')) {
		input = `{${input}}`;
	}
	const dependencies = JSON.parse(input);
	const command = Object.entries(dependencies)
		.map(([name, version]) => {
			return name + '@' + version;
		})
		.join(' ');
	alfy.output([
		{
			title: 'Success!',
      subtitle: command.substr(0, 10) + '...',
			arg: command,
		},
	]);
} catch (err) {
	alfy.error('Wrong JSON inputted!');
}
