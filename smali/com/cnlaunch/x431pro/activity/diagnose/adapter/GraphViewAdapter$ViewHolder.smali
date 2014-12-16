.class Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "GraphViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mChartView:Lcom/cnlaunch/achartengineslim/DataStreamGraphicalView;

.field mCurrentRenderer:Lcom/cnlaunch/achartengineslim/renderer/XYSeriesRenderer;

.field mCurrentSeries:Lcom/cnlaunch/achartengineslim/model/XYSeries;

.field mLayout:Landroid/widget/LinearLayout;

.field mName:Landroid/widget/TextView;

.field mRenderer:Lcom/cnlaunch/achartengineslim/renderer/DataStreamSeriesRenderer;

.field mTimes:J

.field mUnit:Landroid/widget/TextView;

.field strTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 255
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/GraphViewAdapter$ViewHolder;->mTimes:J

    return-void
.end method
