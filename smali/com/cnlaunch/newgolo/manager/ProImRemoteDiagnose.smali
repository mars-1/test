.class public abstract Lcom/cnlaunch/newgolo/manager/ProImRemoteDiagnose;
.super Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;
.source "ProImRemoteDiagnose.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "mContext"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/cnlaunch/newgolo/manager/IMRemoteDiagManager;-><init>(Landroid/content/Context;)V

    .line 9
    return-void
.end method


# virtual methods
.method public onAskForListener(Ljava/lang/String;)V
    .locals 0
    .parameter "snKey"

    .prologue
    .line 38
    return-void
.end method

.method public onInviteListener()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onStartListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "ip"
    .parameter "port"
    .parameter "domain"

    .prologue
    .line 28
    return-void
.end method

.method public onStopListener()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
