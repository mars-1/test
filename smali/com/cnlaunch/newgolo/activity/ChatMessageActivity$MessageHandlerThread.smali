.class Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;
.super Landroid/os/HandlerThread;
.source "ChatMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandlerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 1200
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;->this$0:Lcom/cnlaunch/newgolo/activity/ChatMessageActivity;

    .line 1201
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p0}, Lcom/cnlaunch/newgolo/activity/ChatMessageActivity$MessageHandlerThread;->start()V

    .line 1203
    return-void
.end method
