.class public Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;
.super Ljava/lang/Object;
.source "DataStreamConfiguration.java"


# static fields
.field public static combinedBigPageNum:I

.field public static graphColumnNum:I

.field public static graphPageNum:I

.field public static mBigPage:I

.field public static mMaxPageCount:I

.field public static mPageItemCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    const/4 v1, 0x5

    .line 16
    sput v1, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->mPageItemCount:I

    .line 29
    const/16 v0, 0x23

    sput v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->mMaxPageCount:I

    .line 42
    const/4 v0, 0x3

    sput v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->mBigPage:I

    .line 55
    sput v2, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->graphPageNum:I

    .line 68
    sput v1, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->graphColumnNum:I

    .line 81
    sput v2, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->combinedBigPageNum:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBigPage()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->mBigPage:I

    return v0
.end method

.method public static getCombinedGraphBigPageNum()I
    .locals 1

    .prologue
    .line 91
    sget v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->combinedBigPageNum:I

    return v0
.end method

.method public static getGraphColumnNum()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->graphColumnNum:I

    return v0
.end method

.method public static getGraphPageNum()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->graphPageNum:I

    return v0
.end method

.method public static getMaxPageCount()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->mMaxPageCount:I

    return v0
.end method

.method public static getPageItemCount()I
    .locals 1

    .prologue
    .line 26
    sget v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->mPageItemCount:I

    return v0
.end method

.method public static initConfig(Landroid/content/Context;)V
    .locals 2
    .parameter "mContext"

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->setDataStreamPageNum(I)V

    .line 105
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->mPageItemCount:I

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->mMaxPageCount:I

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->mBigPage:I

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->graphPageNum:I

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->graphColumnNum:I

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/cnlaunch/x431pro/common/DataStreamConfiguration;->combinedBigPageNum:I

    .line 116
    return-void
.end method
