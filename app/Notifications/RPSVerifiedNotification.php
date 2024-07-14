<?php

namespace App\Notifications;


use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use Illuminate\Support\Facades\Log;


class RPSVerifiedNotification extends Notification
{
    use Queueable;

    protected $rps;
    protected $pengurus;

    public function __construct($rps, $pengurus)
    {
        $this->rps = $rps;
        $this->pengurus = $pengurus;
    }

    public function via($notifiable)
    {
        return ['database']; // Menyimpan notifikasi ke dalam database
    }

    public function toDatabase($notifiable)
    {
        Log::info('Sending RpsVerifiedNotification to user ' . $notifiable->id);

        return [
            'rps_id' => $this->rps->id,
            // 'message' => 'RPS Anda telah diverifikasi oleh ' . $this->pengurus->name,
            'message' => 'RPS Anda telah diverifikasi',
        ];
    }
}
