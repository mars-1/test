.class Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$1;
.super Ljava/lang/Object;
.source "SerialNoAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

.field private final synthetic val$arg0:I

.field private final synthetic val$item:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

    iput-object p2, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$1;->val$item:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;

    iput p3, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$1;->val$arg0:I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->mFragment:Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->access$0(Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;)Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;

    move-result-object v1

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$1;->val$item:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;

    iget-object v2, v0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$Item;->relat_item_root:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->list:Ljava/util/List;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;->access$1(Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter;)Ljava/util/List;

    move-result-object v0

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/mine/adapter/SerialNoAdapter$1;->val$arg0:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cnlaunch/x431pro/utils/db/SerialNumber;

    invoke-virtual {v1, v2, v0}, Lcom/cnlaunch/x431pro/activity/mine/SerialNumberFragment;->getConnectorInfo(Landroid/view/View;Lcom/cnlaunch/x431pro/utils/db/SerialNumber;)V

    .line 80
    return-void
.end method
