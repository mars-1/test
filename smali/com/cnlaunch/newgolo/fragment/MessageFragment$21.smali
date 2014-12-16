.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$21;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment;->getOutSideOnTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$21;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    .line 1623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$21;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    #getter for: Lcom/cnlaunch/newgolo/fragment/MessageFragment;->mLaunchIMManager:Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->access$10(Lcom/cnlaunch/newgolo/fragment/MessageFragment;)Lcom/cnlaunch/newgolo/manager/LaunchIMManager;

    move-result-object v0

    const/16 v1, 0x7d0

    new-instance v2, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;

    iget-object v3, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$21;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;-><init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Lcom/cnlaunch/newgolo/fragment/MessageFragment$ProRecorderStatusCallback;)V

    invoke-virtual {v0, p2, v1, v2}, Lcom/cnlaunch/newgolo/manager/LaunchIMManager;->recordVoice(Landroid/view/MotionEvent;ILcom/cnlaunch/golo3/utils/RecorderHelper$RecorderStatusCallback;)V

    .line 1628
    const/4 v0, 0x0

    return v0
.end method
