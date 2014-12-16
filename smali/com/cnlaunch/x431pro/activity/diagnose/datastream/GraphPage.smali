.class public abstract Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;
.super Ljava/lang/Object;
.source "GraphPage.java"


# instance fields
.field private mBigPageIndex:I

.field protected mStartIndex:I

.field protected mStreamCount:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .parameter "bigPageIndex"
    .parameter "startIndex"
    .parameter "streamCount"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;->mBigPageIndex:I

    .line 13
    iput p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;->mStartIndex:I

    .line 14
    iput p3, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;->mStreamCount:I

    .line 15
    return-void
.end method


# virtual methods
.method public getBigPageIndex()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/datastream/GraphPage;->mBigPageIndex:I

    return v0
.end method

.method public abstract getGraphView()Landroid/view/View;
.end method

.method public abstract unload()V
.end method
