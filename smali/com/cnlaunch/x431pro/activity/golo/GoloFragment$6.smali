.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$6;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->setEditListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$6;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 552
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 548
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 542
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$6;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$6;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mEdit:Lcom/cnlaunch/x431pro/widget/ClearEditText;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$38(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Lcom/cnlaunch/x431pro/widget/ClearEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/widget/ClearEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$39(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Ljava/lang/String;)V

    .line 543
    return-void
.end method
