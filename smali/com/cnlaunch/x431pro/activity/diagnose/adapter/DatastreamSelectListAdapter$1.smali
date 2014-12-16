.class Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$1;
.super Ljava/lang/Object;
.source "DatastreamSelectListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

.field private final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    iput p2, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$1;->val$index:I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$1;->this$0:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    iget v1, p0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->setItemCheck(I)Z

    .line 99
    return-void
.end method
