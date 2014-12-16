.class Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment$1;
.super Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;
.source "ThemeSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;

    .line 99
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public noOnClickListener()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public yesOnClickListener()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment$1;->this$0:Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->currentType:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;->access$0(Lcom/cnlaunch/x431pro/activity/setting/ThemeSettingFragment;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/common/ApplicationTheme;->reloadTheme(Landroid/content/Context;I)V

    .line 104
    return-void
.end method
