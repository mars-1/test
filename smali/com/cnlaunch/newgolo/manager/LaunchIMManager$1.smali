.class Lcom/cnlaunch/newgolo/manager/LaunchIMManager$1;
.super Ljava/lang/Object;
.source "LaunchIMManager.java"

# interfaces
.implements Lcom/cnlaunch/newgolo/manager/LaunchIMManager$OnVoiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/manager/LaunchIMManager;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/manager/LaunchIMManager$1;->this$0:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 342
    return-void
.end method

.method public onStart(I)V
    .locals 0
    .parameter "msgId"

    .prologue
    .line 345
    return-void
.end method
