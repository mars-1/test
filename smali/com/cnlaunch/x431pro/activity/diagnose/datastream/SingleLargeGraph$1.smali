.class Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$1;
.super Ljava/util/TimerTask;
.source "SingleLargeGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    .line 260
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;->access$0(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/SingleLargeGraph;)Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->repaint()V

    .line 265
    return-void
.end method
