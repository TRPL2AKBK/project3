<?php

namespace App\Notifications;


use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use Illuminate\Support\Facades\Log;


class SoalVerifiedNotification extends Notification
{
    use Queueable;

    protected $soal;
    protected $pengurus;

    public function __construct($soal, $pengurus)
    {
        $this->soal = $soal;
        $this->pengurus = $pengurus;
    }

    public function via($notifiable)
    {
        return ['database']; // Menyimpan notifikasi ke dalam database
    }

    public function toDatabase($notifiable)
    {
        Log::info('Sending SoalVerifiedNotification to user ' . $notifiable->id);

        return [
            'soal_id' => $this->soal->id,
            // 'message' => 'Soal Anda telah diverifikasi oleh ' . $this->pengurus->name,
            'message' => 'Soal Anda telah diverifikasi',
        ];
    }
}
