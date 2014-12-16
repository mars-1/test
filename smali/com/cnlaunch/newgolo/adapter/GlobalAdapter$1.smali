.class Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$1;
.super Ljava/lang/Object;
.source "GlobalAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;

.field private final synthetic val$pt:I


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$1;->this$0:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;

    iput p2, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$1;->val$pt:I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$1;->this$0:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->mGlobalItemClick:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->access$0(Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;)Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$1;->this$0:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->mGlobalItemClick:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->access$0(Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;)Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;

    move-result-object v0

    iget v1, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$1;->val$pt:I

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$1;->this$0:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;

    iget v3, p0, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$1;->val$pt:I

    invoke-virtual {v2, v3}, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;->onClick(Landroid/view/View;IJ)V

    .line 94
    :cond_0
    return-void
.end method
