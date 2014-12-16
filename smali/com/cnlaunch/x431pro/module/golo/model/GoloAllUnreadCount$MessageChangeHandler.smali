.class Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageChangeHandler;
.super Landroid/os/HandlerThread;
.source "GoloAllUnreadCount.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageChangeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount$MessageChangeHandler;->this$0:Lcom/cnlaunch/x431pro/module/golo/model/GoloAllUnreadCount;

    .line 83
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method
