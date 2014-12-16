.class Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment$1;
.super Ljava/lang/Object;
.source "InternetAccessSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment$1;->this$0:Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;->mListener:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;->OnBaseSelectFragmentInteractiond(I)V

    .line 36
    return-void
.end method
