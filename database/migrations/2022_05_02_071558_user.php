<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users',function (Blueprint $table){
            $table->id('id');
            $table->string('name')->nullable();
            $table->string('cnic_no')->unique();
            $table->string('email')->unique();
            $table->string('password');
            $table->string('user_type',10);
            $table->string('status',1)->default(0);
            $table->rememberToken();
            $table->timestamp('created_at');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
};
