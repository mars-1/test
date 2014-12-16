.class Lcom/cnlaunch/newgolo/provider/ViewPagerProvider$1;
.super Ljava/lang/Object;
.source "ViewPagerProvider.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/provider/ViewPagerProvider;->getGlobalView(Landroid/content/Context;ZLcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private final synthetic val$globalItemClick:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/provider/ViewPagerProvider$1;->val$globalItemClick:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/cnlaunch/newgolo/provider/ViewPagerProvider$1;->val$globalItemClick:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/newgolo/provider/ViewPagerProvider$1;->val$globalItemClick:Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;

    invoke-interface {v0, p2, p3, p4, p5}, Lcom/cnlaunch/newgolo/adapter/GlobalAdapter$OnGlobalItemClick;->onClick(Landroid/view/View;IJ)V

    .line 91
    :cond_0
    return-void
.end method
