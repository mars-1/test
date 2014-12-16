.class public Lcom/cnlaunch/newgolo/widget/RecordDialog;
.super Landroid/app/Dialog;
.source "RecordDialog.java"


# static fields
.field private static final MSG_UPDATE_COLUMS:I = 0x1

.field private static final SPACE:I = 0x190

.field private static final TAG:Ljava/lang/String; = "RecordDialog"


# instance fields
.field private cacheId:I

.field public isStop:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private mVoiceColums:Landroid/widget/ImageView;

.field private voiceColumIds:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 31
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 5
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 33
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 34
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 35
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 36
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 37
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 38
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 39
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->voiceColumIds:[I

    .line 40
    new-instance v0, Lcom/cnlaunch/newgolo/widget/RecordDialog$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/widget/RecordDialog$1;-><init>(Lcom/cnlaunch/newgolo/widget/RecordDialog;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mHandler:Landroid/os/Handler;

    .line 65
    iput-object p1, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "theme"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 31
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 32
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 33
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 34
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 35
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 36
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 37
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 38
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 39
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->voiceColumIds:[I

    .line 40
    new-instance v0, Lcom/cnlaunch/newgolo/widget/RecordDialog$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/widget/RecordDialog$1;-><init>(Lcom/cnlaunch/newgolo/widget/RecordDialog;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .parameter "context"
    .parameter "cancelable"
    .parameter "cancelListener"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 30
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_0:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 31
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_1:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 32
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_2:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 33
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_3:I

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 34
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_4:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 35
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_5:I

    aput v2, v0, v1

    const/4 v1, 0x6

    .line 36
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_6:I

    aput v2, v0, v1

    const/4 v1, 0x7

    .line 37
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_7:I

    aput v2, v0, v1

    const/16 v1, 0x8

    .line 38
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_8:I

    aput v2, v0, v1

    const/16 v1, 0x9

    .line 39
    sget v2, Lcom/cnlaunch/golo3/message/R$drawable;->audio_recorder_volume_9:I

    aput v2, v0, v1

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->voiceColumIds:[I

    .line 40
    new-instance v0, Lcom/cnlaunch/newgolo/widget/RecordDialog$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/widget/RecordDialog$1;-><init>(Lcom/cnlaunch/newgolo/widget/RecordDialog;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->init(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/newgolo/widget/RecordDialog;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mVoiceColums:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/newgolo/widget/RecordDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->updateMicStatus()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "mContext"

    .prologue
    .line 80
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mTimer:Ljava/util/Timer;

    .line 81
    new-instance v0, Lcom/cnlaunch/newgolo/widget/RecordDialog$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/newgolo/widget/RecordDialog$2;-><init>(Lcom/cnlaunch/newgolo/widget/RecordDialog;)V

    iput-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mTimerTask:Ljava/util/TimerTask;

    .line 89
    return-void
.end method

.method private updateMicStatus()V
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 118
    iget-boolean v4, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->isStop:Z

    if-eqz v4, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v4, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getIntance(Landroid/content/Context;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->getMaxAmplitude()I

    move-result v0

    .line 122
    .local v0, amp:I
    mul-int/lit8 v4, v0, 0xa

    const v5, 0x8000

    div-int v1, v4, v5

    .line 123
    .local v1, colums:I
    const-string/jumbo v4, "RecordDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "mUpdateMicStatusTimer ratio:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", amp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v4, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->voiceColumIds:[I

    const/4 v5, 0x0

    aget v2, v4, v5

    .line 125
    .local v2, imgId:I
    if-ge v1, v7, :cond_3

    if-lez v1, :cond_3

    .line 126
    iget-object v4, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->voiceColumIds:[I

    aget v2, v4, v1

    .line 130
    :cond_2
    :goto_1
    iget v4, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->cacheId:I

    if-eq v4, v2, :cond_0

    .line 131
    iput v2, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->cacheId:I

    .line 132
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 133
    .local v3, msg:Landroid/os/Message;
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 134
    iput v2, v3, Landroid/os/Message;->arg1:I

    .line 135
    iget-object v4, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 127
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    if-lt v1, v7, :cond_2

    .line 128
    iget-object v4, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->voiceColumIds:[I

    const/16 v5, 0x9

    aget v2, v4, v5

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->isStop:Z

    .line 101
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 103
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 104
    iput-object v1, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mTimer:Ljava/util/Timer;

    .line 106
    :cond_0
    iput-object v1, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mVoiceColums:Landroid/widget/ImageView;

    .line 107
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 73
    iget-object v1, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 74
    sget v2, Lcom/cnlaunch/golo3/message/R$layout;->new_dialog_record:I

    const/4 v3, 0x0

    .line 73
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, statusView:Landroid/view/View;
    sget v1, Lcom/cnlaunch/golo3/message/R$id;->dialog_record_mike:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mVoiceColums:Landroid/widget/ImageView;

    .line 76
    invoke-virtual {p0, v0}, Lcom/cnlaunch/newgolo/widget/RecordDialog;->setContentView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public setRecord(Landroid/media/MediaRecorder;)V
    .locals 0
    .parameter "recorder"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mRecorder:Landroid/media/MediaRecorder;

    .line 112
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x190

    .line 93
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->isStop:Z

    .line 95
    iget-object v0, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/widget/RecordDialog;->mTimerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 96
    return-void
.end method
