.class Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$1;
.super Ljava/lang/Object;
.source "DataStreamGraphicalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->repaint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$1;->this$0:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView$1;->this$0:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->invalidate()V

    .line 73
    return-void
.end method
