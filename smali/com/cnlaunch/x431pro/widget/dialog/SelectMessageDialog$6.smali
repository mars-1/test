.class Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$6;
.super Ljava/lang/Object;
.source "SelectMessageDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;->showDifDialog(Landroid/content/Context;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$6;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog$6;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SelectMessageDialog;->noOnClickListener()V

    .line 103
    return-void
.end method
