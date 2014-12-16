.class public Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/golo3/utils/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceRecorder"
.end annotation


# static fields
.field private static voice:Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;


# instance fields
.field private file:Ljava/io/File;

.field private recorder:Landroid/media/MediaRecorder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->voice:Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;

    invoke-direct {v0}, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;-><init>()V

    sput-object v0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->voice:Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;

    .line 68
    :cond_0
    sget-object v0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->voice:Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;

    return-object v0
.end method


# virtual methods
.method public start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 71
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/golo3/utils/MediaProvider;->createVoiceFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->file:Ljava/io/File;

    .line 73
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 75
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 76
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 79
    return-void
.end method

.method public stop()Ljava/io/File;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 84
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->recorder:Landroid/media/MediaRecorder;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/golo3/utils/MediaProvider$VoiceRecorder;->file:Ljava/io/File;

    return-object v0
.end method
