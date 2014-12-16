.class public Lcom/cnlaunch/diagnosemodule/utils/MessagerInfo;
.super Ljava/lang/Object;
.source "MessagerInfo.java"


# static fields
.field public static final CLIENT_DiagnoseDatastreamRecord:I = 0xd

.field public static final CLIENT_FeedbackCmd_Mask:I = 0xf

.field public static final CLIENT_FeedbackCmd_Normal:I = 0x3

.field public static final CLIENT_FeedbackCmd_PageDataStream:I = 0x4

.field public static final CLIENT_InitMessager:I = 0x0

.field public static final CLIENT_KeyBack:I = 0x5

.field public static final CLIENT_LaunchAutoConnBluetooth:I = 0xb

.field public static final CLIENT_LaunchBluetooth:I = 0x6

.field public static final CLIENT_LaunchDiag:I = 0x1

.field public static final CLIENT_LaunchRemoteDiag:I = 0x8

.field public static final CLIENT_LaunchWifi:I = 0x7

.field public static final CLIENT_SendCustomDialog:I = 0xc

.field public static final SERVICE_DIAGNOSE_LOG_DATA:I = 0xe

.field public static final SERVICE_DiagnoseData:I = 0x2

.field public static final SERVICE_RemoteDiagExit:I = 0xa

.field public static final SERVICE_RemoteDiagStatus:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
