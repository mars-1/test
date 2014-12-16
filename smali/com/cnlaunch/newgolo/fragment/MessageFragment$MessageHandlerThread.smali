.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$MessageHandlerThread;
.super Landroid/os/HandlerThread;
.source "MessageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandlerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/fragment/MessageFragment;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$MessageHandlerThread;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    .line 1151
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/fragment/MessageFragment$MessageHandlerThread;->start()V

    .line 1153
    return-void
.end method
