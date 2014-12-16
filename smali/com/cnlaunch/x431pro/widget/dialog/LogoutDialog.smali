.class public Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;
.super Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;
.source "LogoutDialog.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;->mContext:Landroid/content/Context;

    .line 12
    return-void
.end method


# virtual methods
.method public noOnClickListener()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public yesOnClickListener()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/LogoutDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;-><init>(Landroid/content/Context;)V

    .line 16
    .local v0, lf:Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->Logout()V

    .line 17
    return-void
.end method
