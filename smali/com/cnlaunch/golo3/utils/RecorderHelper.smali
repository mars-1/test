.class public Lcom/cnlaunch/golo3/utils/RecorderHelper;
.super Ljava/lang/Object;
.source "RecorderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/golo3/utils/RecorderHelper$OnStateChangedListener;,
        Lcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;
    }
.end annotation


# static fields
.field public static final IDLE_STATE:I = 0x0

.field public static final INTERNAL_ERROR:I = 0x2

.field public static final IN_CALL_RECORD_ERROR:I = 0x3

.field public static final NO_ERROR:I = 0x0

.field public static final PLAYING_STATE:I = 0x2

.field public static final RECORDING_STATE:I = 0x1

.field static final SAMPLE_LENGTH_KEY:Ljava/lang/String; = "sample_length"

.field static final SAMPLE_PATH_KEY:Ljava/lang/String; = "sample_path"

.field public static final SDCARD_ACCESS_ERROR:I = 0x1

.field public static final TAG:Ljava/lang/String; = "RecorderHelper"

.field public static final VOICE_ClUMES_0:I = 0x0

.field public static final VOICE_ClUMES_1:I = 0x1

.field public static final VOICE_ClUMES_2:I = 0x2

.field public static final VOICE_ClUMES_3:I = 0x3

.field public static final VOICE_ClUMES_4:I = 0x4

.field public static final VOICE_ClUMES_5:I = 0x5

.field public static final VOICE_ClUMES_6:I = 0x6

.field public static final VOICE_ClUMES_7:I = 0x7

.field public static final VOICE_ClUMES_8:I = 0x8

.field public static final VOICE_ClUMES_9:I = 0x9


# instance fields
.field private SAMPLE_RATE:I

.field private audioEncoding:I

.field private audioRecord:Landroid/media/AudioRecord;

.field audioRecorder:Landroid/media/AudioRecord;

.field private buffersize:I

.field private centerY:I

.field private channelConfig:I

.field private cnt:I

.field private height:I

.field mOnStateChangedListener:Lcom/cnlaunch/golo3/utils/RecorderHelper$OnStateChangedListener;

.field mRecorder:Landroid/media/MediaRecorder;

.field private mRunning:Z

.field mSampleFile:Ljava/io/File;

.field mSampleLength:I

.field mSampleStart:J

.field mState:I

.field private pointY:[F

.field private step:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v2, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mState:I

    .line 42
    iput-boolean v2, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRunning:Z

    .line 45
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->SAMPLE_RATE:I

    .line 46
    const/16 v0, 0xc

    iput v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->channelConfig:I

    .line 47
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->audioEncoding:I

    .line 48
    const/16 v0, 0x400

    iput v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->buffersize:I

    .line 58
    iput-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mOnStateChangedListener:Lcom/cnlaunch/golo3/utils/RecorderHelper$OnStateChangedListener;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleStart:J

    .line 61
    iput v2, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleLength:I

    .line 62
    iput-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    .line 64
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    .line 65
    iput-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->audioRecorder:Landroid/media/AudioRecord;

    .line 15
    return-void
.end method

.method private setError(I)V
    .locals 1
    .parameter "error"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mOnStateChangedListener:Lcom/cnlaunch/golo3/utils/RecorderHelper$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mOnStateChangedListener:Lcom/cnlaunch/golo3/utils/RecorderHelper$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/cnlaunch/golo3/utils/RecorderHelper$OnStateChangedListener;->onError(I)V

    .line 255
    :cond_0
    return-void
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 240
    iget v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mState:I

    if-ne p1, v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    iput p1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mState:I

    .line 244
    iget v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mState:I

    invoke-direct {p0, v0}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->signalStateChanged(I)V

    goto :goto_0
.end method

.method private signalStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mOnStateChangedListener:Lcom/cnlaunch/golo3/utils/RecorderHelper$OnStateChangedListener;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mOnStateChangedListener:Lcom/cnlaunch/golo3/utils/RecorderHelper$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/cnlaunch/golo3/utils/RecorderHelper$OnStateChangedListener;->onStateChanged(I)V

    .line 250
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->stopRecording()Ljava/io/File;

    .line 157
    iput v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleLength:I

    .line 159
    invoke-direct {p0, v0}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->signalStateChanged(I)V

    .line 160
    return-void
.end method

.method public delete()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 128
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->stopRecording()Ljava/io/File;

    .line 130
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    .line 134
    iput v1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleLength:I

    .line 136
    invoke-direct {p0, v1}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->signalStateChanged(I)V

    .line 137
    return-void
.end method

.method public deleteFile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 143
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    .line 144
    iput v1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleLength:I

    .line 146
    invoke-direct {p0, v1}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->signalStateChanged(I)V

    .line 147
    return-void
.end method

.method public getMaxAmplitude()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 72
    iget v1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return v0

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v0

    goto :goto_0
.end method

.method public getRecorder()Landroid/media/MediaRecorder;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .parameter "mp"
    .parameter "what"
    .parameter "extra"

    .prologue
    const/4 v0, 0x1

    .line 234
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->stopRecording()Ljava/io/File;

    .line 235
    invoke-direct {p0, v0}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->setError(I)V

    .line 236
    return v0
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "recorderState"

    .prologue
    const/4 v4, -0x1

    .line 85
    const-string/jumbo v3, "sample_path"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, samplePath:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string/jumbo v3, "sample_length"

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 89
    .local v1, sampleLength:I
    if-eq v1, v4, :cond_0

    .line 92
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 95
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    if-eqz v3, :cond_2

    .line 96
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->delete()V

    .line 100
    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    .line 101
    iput v1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleLength:I

    .line 103
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->signalStateChanged(I)V

    goto :goto_0
.end method

.method public sampleFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    return-object v0
.end method

.method public sampleLength()I
    .locals 1

    .prologue
    .line 115
    iget v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleLength:I

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "recorderState"

    .prologue
    .line 67
    const-string/jumbo v0, "sample_path"

    iget-object v1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "sample_length"

    iget v1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleLength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public setOnStateChangedListener(Lcom/cnlaunch/golo3/utils/RecorderHelper$OnStateChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 107
    iput-object p1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mOnStateChangedListener:Lcom/cnlaunch/golo3/utils/RecorderHelper$OnStateChangedListener;

    .line 108
    return-void
.end method

.method public startRecording(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/cnlaunch/golo3/utils/MediaProvider;->createVoiceFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    iput-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    .line 166
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    if-nez v3, :cond_0

    .line 169
    const-string/jumbo v3, "\u6ca1\u6709sd\u5361"

    const/16 v4, 0x3e8

    .line 167
    invoke-static {p1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 211
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_1

    .line 174
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    .line 176
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 177
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v6}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 178
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 179
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 184
    :try_start_0
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :try_start_1
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleStart:J

    .line 210
    invoke-direct {p0, v2}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->setState(I)V

    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, exception:Ljava/io/IOException;
    invoke-direct {p0, v5}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->setError(I)V

    .line 187
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 188
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 189
    iput-object v7, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    .line 195
    .end local v1           #exception:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 196
    .local v1, exception:Ljava/lang/RuntimeException;
    const-string/jumbo v3, "audio"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 197
    .local v0, audioMngr:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    if-eq v3, v5, :cond_2

    .line 198
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    const/4 v4, -0x2

    if-eq v3, v4, :cond_2

    .line 197
    const/4 v2, 0x0

    .line 199
    .local v2, isInCall:Z
    :cond_2
    if-eqz v2, :cond_3

    .line 200
    invoke-direct {p0, v6}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->setError(I)V

    .line 204
    :goto_1
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 205
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 206
    iput-object v7, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    .line 202
    :cond_3
    invoke-direct {p0, v5}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->setError(I)V

    goto :goto_1
.end method

.method public state()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mState:I

    return v0
.end method

.method public stopRecording()Ljava/io/File;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 214
    iget-object v2, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 230
    :goto_0
    return-object v1

    .line 217
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    iget-object v2, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 222
    iput-object v1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    .line 225
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleStart:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleLength:I

    .line 227
    const-string/jumbo v1, "hsy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RecorderHelper  \u5f55\u5236\u65f6\u95f4 = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/golo3/utils/LogUtils;->ii(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->setState(I)V

    .line 230
    iget-object v1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mSampleFile:Ljava/io/File;

    goto :goto_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    invoke-virtual {p0}, Lcom/cnlaunch/golo3/utils/RecorderHelper;->deleteFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    iget-object v2, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 222
    iput-object v1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_1

    .line 220
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v2

    .line 221
    iget-object v3, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 222
    iput-object v1, p0, Lcom/cnlaunch/golo3/utils/RecorderHelper;->mRecorder:Landroid/media/MediaRecorder;

    .line 223
    throw v2
.end method
