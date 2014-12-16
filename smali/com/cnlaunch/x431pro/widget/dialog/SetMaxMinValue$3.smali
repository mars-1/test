.class Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$3;
.super Ljava/lang/Object;
.source "SetMaxMinValue.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$3;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$3;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mfromFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$8(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$3;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mfromFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$8(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$3;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->maxValue:D
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$5(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$3;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->minValue:D
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$6(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->onSetMaxMin(DD)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$3;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    const/4 v1, 0x1

    #setter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bCanDismiss:Z
    invoke-static {v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$14(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;Z)V

    .line 166
    return-void
.end method
