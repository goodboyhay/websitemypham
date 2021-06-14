<?php

namespace App\Console\Commands;

use App\Services\ShoppingCartService\PayManager;
use Illuminate\Console\Command;

class DrivePayCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'pay:test-drive';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Test drive pay';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return mixed
     */
    public function handle()
    {
        $this->info("init command test");
        $transaction = [
            "tst_name"        => "Phạm Hoàng Diễn",
            "tst_phone"       => "0932022097    ",
            "tst_address"     => "Quận 8",
            "tst_email"       => "dienseven@gmail.com",
            "tst_note"        => "Giao hàng tận nơi ạ",
            "tst_user_id"     => 2,
            "tst_total_money" => "121"
        ];

        $result = new PayManager($transaction);
    }
}
