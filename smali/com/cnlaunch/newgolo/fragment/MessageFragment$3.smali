.class Lcom/cnlaunch/newgolo/fragment/MessageFragment$3;
.super Ljava/lang/Object;
.source "MessageFragment.java"

# interfaces
.implements Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$ItemErrorClick;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/fragment/MessageFragment;
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
    iput-object p1, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$3;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cnlaunch/newgolo/fragment/MessageFragment$3;->this$0:Lcom/cnlaunch/newgolo/fragment/MessageFragment;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/fragment/MessageFragment;->showResendDialog(I)V

    .line 262
    return-void
.end method
