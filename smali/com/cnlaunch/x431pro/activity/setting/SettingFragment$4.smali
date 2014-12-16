.class Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$4;
.super Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;
.source "SettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;Landroid/content/Context;II)V
    .locals 0
    .parameter
    .parameter "$anonymous0"
    .parameter "$anonymous1"
    .parameter "$anonymous2"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;

    .line 258
    invoke-direct {p0, p2, p3, p4}, Lcom/cnlaunch/x431pro/widget/dialog/TipDialog;-><init>(Landroid/content/Context;II)V

    return-void
.end method


# virtual methods
.method public doingFinish(IZ)V
    .locals 2
    .parameter "button"
    .parameter "isChecked"

    .prologue
    .line 261
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$4;->this$0:Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "is_show_diaglog_tip"

    invoke-virtual {v0, v1, p2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 264
    :cond_0
    return-void
.end method
