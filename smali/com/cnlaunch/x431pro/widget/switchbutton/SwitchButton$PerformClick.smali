.class final Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$PerformClick;
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
    name = "PerformClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$PerformClick;->this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$PerformClick;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$PerformClick;-><init>(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$PerformClick;->this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->performClick()Z

    .line 289
    return-void
.end method
