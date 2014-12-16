.class Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment$1;
.super Ljava/lang/Object;
.source "BaseDiagnoseFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->initBaseView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 185
    if-eqz p2, :cond_0

    .line 186
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getPrintData()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, data:Ljava/lang/String;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/BaseDiagnoseFragment;->getCallBack()Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/IFragmentCallback;->printData(Ljava/lang/String;)I

    .line 189
    .end local v0           #data:Ljava/lang/String;
    :cond_0
    return-void
.end method
