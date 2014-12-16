.class Lcom/cnlaunch/newgolo/handler/BaseHandler$1;
.super Ljava/lang/Object;
.source "BaseHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/handler/BaseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/handler/BaseHandler;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/handler/BaseHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/handler/BaseHandler$1;->this$0:Lcom/cnlaunch/newgolo/handler/BaseHandler;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "message"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/cnlaunch/newgolo/handler/BaseHandler$1;->this$0:Lcom/cnlaunch/newgolo/handler/BaseHandler;

    invoke-virtual {v0, p1}, Lcom/cnlaunch/newgolo/handler/BaseHandler;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
