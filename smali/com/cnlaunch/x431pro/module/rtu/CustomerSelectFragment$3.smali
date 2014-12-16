.class Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment$3;
.super Ljava/lang/Object;
.source "CustomerSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment$3;->this$0:Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment$3;->this$0:Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/module/rtu/CustomerSelectFragment;->mListener:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;

    .line 54
    const/16 v1, 0xb

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;->OnBaseSelectFragmentInteractiond(I)V

    .line 55
    return-void
.end method
