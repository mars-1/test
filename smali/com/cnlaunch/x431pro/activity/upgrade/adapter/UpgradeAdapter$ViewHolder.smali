.class Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "UpgradeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field cbox_item:Landroid/widget/CheckBox;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

.field tv_carname_item:Landroid/widget/TextView;

.field tv_curversion_item:Landroid/widget/TextView;

.field tv_upgradeversion_item:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$ViewHolder;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
