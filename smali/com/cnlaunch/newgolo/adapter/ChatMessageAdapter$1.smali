.class Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$1;
.super Landroid/os/Handler;
.source "ChatMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$1;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    .line 93
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 104
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$1;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
