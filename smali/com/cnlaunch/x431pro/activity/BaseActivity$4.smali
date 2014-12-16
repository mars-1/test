.class Lcom/cnlaunch/x431pro/activity/BaseActivity$4;
.super Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/BaseActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/BaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/BaseActivity$4;->this$0:Lcom/cnlaunch/x431pro/activity/BaseActivity;

    .line 235
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public noOnClickListener()V
    .locals 0

    .prologue
    .line 243
    return-void
.end method

.method public yesOnClickListener()V
    .locals 1

    .prologue
    .line 238
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 239
    return-void
.end method
