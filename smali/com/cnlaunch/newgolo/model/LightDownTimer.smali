.class public Lcom/cnlaunch/newgolo/model/LightDownTimer;
.super Landroid/os/CountDownTimer;
.source "LightDownTimer.java"


# instance fields
.field private TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .parameter "millisInFuture"
    .parameter "countDownInterval"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 10
    const-string/jumbo v0, "LightDownTimer"

    iput-object v0, p0, Lcom/cnlaunch/newgolo/model/LightDownTimer;->TAG:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcom/cnlaunch/newgolo/manager/GoloLightManager;->init()V

    .line 15
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/cnlaunch/newgolo/manager/GoloLightManager;->close()V

    .line 30
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/LightDownTimer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GoloLightManager close()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 24
    invoke-static {}, Lcom/cnlaunch/newgolo/manager/GoloLightManager;->close()V

    .line 25
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/LightDownTimer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GoloLightManager.close() onFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public onTick(J)V
    .locals 0
    .parameter "millisUntilFinished"

    .prologue
    .line 20
    return-void
.end method

.method public open()V
    .locals 2

    .prologue
    .line 34
    invoke-static {}, Lcom/cnlaunch/newgolo/manager/GoloLightManager;->open()V

    .line 35
    iget-object v0, p0, Lcom/cnlaunch/newgolo/model/LightDownTimer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "GoloLightManager.open()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method
