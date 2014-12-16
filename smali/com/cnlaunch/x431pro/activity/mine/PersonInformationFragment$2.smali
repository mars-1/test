.class Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment$2;
.super Lcom/cnlaunch/x431pro/activity/login/LoginFunction;
.source "PersonInformationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->onFailure(IILjava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;

    .line 233
    invoke-direct {p0, p2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onSuccess(ILjava/lang/Object;)V
    .locals 1
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 236
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/login/LoginFunction;->onSuccess(ILjava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/mine/PersonInformationFragment;->onResume()V

    .line 238
    return-void
.end method
