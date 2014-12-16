.class Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$5;
.super Ljava/lang/Object;
.source "SettingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment$5;->this$0:Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;

    const-class v1, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/x431pro/activity/setting/SettingFragment;->replaceFragment(Ljava/lang/String;I)V

    .line 270
    return-void
.end method
