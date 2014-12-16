.class Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$2;
.super Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;
.source "OrientationSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;

    .line 100
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public noOnClickListener()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public yesOnClickListener()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->currentType:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->access$0(Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/common/ApplicationTheme;->reloadOrientation(Landroid/content/Context;I)V

    .line 105
    return-void
.end method
