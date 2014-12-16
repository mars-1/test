.class Lcom/cnlaunch/achartengineslim/chart/AbstractChart$1;
.super Ljava/util/TimerTask;
.source "AbstractChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;


# direct methods
.method constructor <init>(Lcom/cnlaunch/achartengineslim/chart/AbstractChart;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart$1;->this$0:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

    .line 63
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart$1;->this$0:Lcom/cnlaunch/achartengineslim/chart/AbstractChart;

    iget v1, v0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mCurrentCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/cnlaunch/achartengineslim/chart/AbstractChart;->mCurrentCount:I

    .line 69
    return-void
.end method
