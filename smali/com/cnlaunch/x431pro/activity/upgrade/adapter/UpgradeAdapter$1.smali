.class Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$1;
.super Ljava/lang/Object;
.source "UpgradeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$1;->val$bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    iput p3, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$1;->val$position:I

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter;->mFragment:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$1;->val$bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->getSoftId()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/UpgradeAdapter$1;->val$position:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->queryHistoryDiagSofts(Landroid/view/View;Ljava/lang/String;I)V

    .line 103
    return-void
.end method
