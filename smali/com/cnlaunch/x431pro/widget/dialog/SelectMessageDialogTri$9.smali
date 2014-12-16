.class Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$9;
.super Ljava/lang/Object;
.source "SelectMessageDialogTri.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;->showDifDialog(Landroid/content/Context;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$9;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri$9;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialogTri;->gamOnClickListener()V

    .line 121
    return-void
.end method
