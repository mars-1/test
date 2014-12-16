.class final Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$SwitchAnimation;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwitchAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;)V
    .locals 0
    .parameter

    .prologue
    .line 355
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$SwitchAnimation;->this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$SwitchAnimation;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 355
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$SwitchAnimation;-><init>(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$SwitchAnimation;->this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    #getter for: Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->mAnimating:Z
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->access$0(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$SwitchAnimation;->this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    #calls: Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->doAnimation()V
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->access$1(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;)V

    .line 363
    invoke-static {p0}, Lcom/cnlaunch/x431pro/widget/switchbutton/FrameAnimationController;->requestAnimationFrame(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
