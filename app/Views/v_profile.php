<?= $this->extend('layout')?>
<?= $this->section('content')?>
Username : <?= session()->get('username') ?><br>
Role : <?= session()->get('role') ?><br>

<?php
if (session()->get('isLoggedIn')) {
    echo "Waktu Login " . date("H:i:s");
}

?> 
<?= $this->endSection()?>    