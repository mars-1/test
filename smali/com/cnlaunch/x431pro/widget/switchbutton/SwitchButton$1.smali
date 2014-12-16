.class Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$1;
.super Ljava/lang/Object;
.source "SwitchButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->setCheckedDelayed(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

.field private final synthetic val$checked:Z


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$1;->this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$1;->val$checked:Z

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$1;->this$0:Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;

    iget-boolean v1, p0, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton$1;->val$checked:Z

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/widget/switchbutton/SwitchButton;->setChecked(Z)V

    .line 176
    return-void
.end method
