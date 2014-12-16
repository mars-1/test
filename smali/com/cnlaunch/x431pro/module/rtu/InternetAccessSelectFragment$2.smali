.class Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment$2;
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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment$2;->this$0:Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment$2;->this$0:Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/module/rtu/InternetAccessSelectFragment;->mListener:Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/module/rtu/BaseSelectFragment$OnBaseSelectFragmentInteractionListener;->OnBaseSelectFragmentInteractiond(I)V

    .line 43
    return-void
.end method
