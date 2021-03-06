<?php

namespace App\Models;

//use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class siswa extends Model
{
    //use HasFactory;
    protected $table = "siswa";
    protected $primaryKey = "nis";
    protected $fillable = [
        'nis', 'id_kelas', 'nama', 'alamat', 'jenis_kelamin'
    ];

    public function pembayaran()
    {
        return $this->hasMany(pembayaran::class);
    }
}
