.class Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$1;
.super Ljava/lang/Object;
.source "SelectCarVerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    iput p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$1;->val$position:I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter;->delListenter:Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDelectDataListenter;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/SelectCarVerAdapter$1;->val$position:I

    invoke-interface {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/listenter/OnDelectDataListenter;->delSoftByPosition(I)V

    .line 90
    return-void
.end method
