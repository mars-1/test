.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick$2;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick$2;->this$1:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;

    .line 747
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 751
    if-eqz p1, :cond_0

    .line 752
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 754
    :cond_0
    return-void
.end method
