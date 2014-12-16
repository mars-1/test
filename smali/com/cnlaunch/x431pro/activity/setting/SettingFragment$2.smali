.class Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$2;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$2;->this$0:Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "expired_remind"

    invoke-virtual {v0, v1, p2}, Lcom/cnlaunch/framework/common/PreferencesManager;->put(Ljava/lang/String;Z)V

    .line 149
    return-void
.end method
