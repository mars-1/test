.class public Lcom/cnlaunch/x431pro/module/diagnose/MConfiguration;
.super Ljava/lang/Object;
.source "MConfiguration.java"


# static fields
.field private static final DefaultDiagnoseType:I = 0x3

.field private static final defaultMeasure:I = 0x0

.field private static final isSortList:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultDiagnoseType()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x3

    return v0
.end method

.method public static getDefaultMeasure()I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public static isSortlist()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public static setDatastreamRefreshControl(ZI)V
    .locals 0
    .parameter "flag"
    .parameter "delay"

    .prologue
    .line 49
    invoke-static {p0, p1}, Lcom/cnlaunch/diagnosemodule/utils/DiagnoseConstants;->setDatastream_refresh_control(ZI)V

    .line 50
    return-void
.end method
