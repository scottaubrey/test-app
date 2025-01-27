<?php
chdir(dirname(__DIR__));
?>

<h1>Hello world</h1>


<? if (file_exists('git_rev')): ?>
<pre><code><?= file_get_contents('git_rev'); ?></code></pre>
<? endif; ?>
