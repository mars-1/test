.class Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage$1;
.super Ljava/util/TimerTask;
.source "CombinedGraphPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;-><init>(Landroid/content/Context;III)V
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    .line 62
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;

    #getter for: Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->mGraphicalView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;->access$1(Lcom/cnlaunch/x431pro/activity/diagnose/datastream/CombinedGraphPage;)Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;->repaint()V

    .line 66
    return-void
.end method
