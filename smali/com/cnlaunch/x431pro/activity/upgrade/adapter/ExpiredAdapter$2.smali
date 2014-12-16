.class Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$2;
.super Ljava/lang/Object;
.source "ExpiredAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;

.field private final synthetic val$bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$2;->val$bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$2;->val$bean:Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;

    invoke-virtual {v0, p2}, Lcom/cnlaunch/x431pro/module/upgrade/model/X431PadDtoSoft;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter$2;->this$0:Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/upgrade/adapter/ExpiredAdapter;->mFragment:Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/activity/upgrade/UpgradeFragment;->selectAllChanged()V

    .line 89
    return-void
.end method
