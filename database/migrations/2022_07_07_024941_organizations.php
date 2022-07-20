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
        Schema::create('organizations',function (Blueprint $table){
            $table->id('id');
            $table->string('name')->nullable();
            $table->string('location')->nullable();
            $table->string('img_path')->nullable();
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
        Schema::drop('organizations');
    }
};
