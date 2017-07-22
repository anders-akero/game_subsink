var gith = require('gith').create( 9001 );
var execFile = require('child_process').execFile;

var execOptions = {
    maxBuffer: 1024 * 1024 // 1mb
}

gith({
    repo: 'anders-akero/game_subsink'
}).on( 'all', function( payload ) {
    if( payload.branch === 'master' ) {
        // Exec a shell script
        execFile('hook.sh', execOptions, function(error, stdout, stderr) {
            console.log('Updated');
        });
    }
});
