.class Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$2;
.super Ljava/lang/Object;
.source "UpgradeAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

.field private final synthetic val$bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$2;->val$bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$2;->val$bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v0, p2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setChecked(Z)V

    .line 121
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->mFragment:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->selectAllChanged()V

    .line 122
    return-void
.end method
