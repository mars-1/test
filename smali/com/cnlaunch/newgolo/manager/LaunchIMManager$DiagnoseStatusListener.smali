.class public interface abstract Lcom/cnlaunch/newgolo/manager/LaunchIMManager$DiagnoseStatusListener;
.super Ljava/lang/Object;
.source "LaunchIMManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/manager/LaunchIMManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DiagnoseStatusListener"
.end annotation


# virtual methods
.method public abstract exitCommondCode(I)V
.end method

.method public abstract remoteReport(Ljava/lang/String;)V
.end method

.method public abstract remoteReport_PDF(Ljava/lang/String;Lcom/cnlaunch/newgolo/model/ICallback;)V
.end method

.method public abstract removeFloatingWindow()V
.end method

.method public abstract startGoloWithMiniDiag(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract stopToConnect()V
.end method
