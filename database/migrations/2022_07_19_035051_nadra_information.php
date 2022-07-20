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
        Schema::create('nadra_information',function (Blueprint $table){
            $table->id('id');
            $table->string('cnic',20)->nullable();
            $table->string('first_name',20)->nullable();
            $table->string('last_name',20)->nullable();
            $table->string('address',20)->nullable();
            $table->string('phone_no',20);
            $table->string('gender',20);
//            $table->dateTime('d.o.b');
            $table->string('applied_status',1)->default(0);
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
        //
    }
};
