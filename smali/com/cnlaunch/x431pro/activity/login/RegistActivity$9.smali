.class Lcom/cnlaunch/x431pro/activity/login/RegistActivity$9;
.super Ljava/lang/Object;
.source "RegistActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 597
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/Tools;->isUSAProject()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 598
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->listCountry:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$0(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_1

    .line 599
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 600
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    const/16 v3, 0xca

    invoke-virtual {v2, v3}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->request(I)V

    .line 614
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 603
    goto :goto_0

    :cond_1
    move v1, v2

    .line 606
    goto :goto_0

    .line 608
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 609
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 610
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->access$2(Lcom/cnlaunch/x431pro/activity/login/RegistActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/cnlaunch/x431pro/activity/login/CountrySelectActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 611
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/login/RegistActivity$9;->this$0:Lcom/cnlaunch/x431pro/activity/login/RegistActivity;

    invoke-virtual {v2, v0, v1}, Lcom/cnlaunch/x431pro/activity/login/RegistActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    move v1, v2

    .line 614
    goto :goto_0
.end method
