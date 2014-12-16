.class Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage$2;
.super Ljava/lang/Thread;
.source "CombinedGraphPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->initSerieses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    .line 126
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage$2;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage$2;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;)Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->repaint()V

    .line 134
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
