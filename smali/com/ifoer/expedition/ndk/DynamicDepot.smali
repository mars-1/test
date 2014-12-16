.class public Lcom/ifoer/expedition/ndk/DynamicDepot;
.super Ljava/lang/Object;
.source "DynamicDepot.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native AutoSearchVehByVIN(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public native DiagnoseMain()I
.end method

.method public native OBDReadVIN()I
.end method
