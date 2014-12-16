.class public Lcom/cnlaunch/x431pro/widget/switchbutton/FrameAnimationController;
.super Ljava/lang/Object;
.source "FrameAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/widget/switchbutton/FrameAnimationController$AnimationHandler;
    }
.end annotation


# static fields
.field public static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final MSG_ANIMATE:I = 0x3e8

.field private static final mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/cnlaunch/x431pro/widget/switchbutton/FrameAnimationController$AnimationHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/widget/switchbutton/FrameAnimationController$AnimationHandler;-><init>(Lcom/cnlaunch/x431pro/widget/switchbutton/FrameAnimationController$AnimationHandler;)V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/switchbutton/FrameAnimationController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static requestAnimationFrame(Ljava/lang/Runnable;)V
    .locals 4
    .parameter "runnable"

    .prologue
    .line 23
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 24
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 25
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    sget-object v1, Lcom/cnlaunch/x431pro/widget/switchbutton/FrameAnimationController;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x10

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 27
    return-void
.end method

.method public static requestFrameDelay(Ljava/lang/Runnable;J)V
    .locals 2
    .parameter "runnable"
    .parameter "delay"

    .prologue
    .line 30
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 31
    .local v0, message:Landroid/os/Message;
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    .line 32
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    sget-object v1, Lcom/cnlaunch/x431pro/widget/switchbutton/FrameAnimationController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 34
    return-void
.end method
