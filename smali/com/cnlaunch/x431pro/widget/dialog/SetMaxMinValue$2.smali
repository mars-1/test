.class Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;
.super Ljava/lang/Object;
.source "SetMaxMinValue.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6
    .parameter "s"

    .prologue
    const/4 v5, 0x0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->editMin:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$10(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    #setter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->minValue:D
    invoke-static {v1, v2, v3}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$11(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;D)V

    .line 142
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    const/4 v2, 0x1

    #setter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bValidMin:Z
    invoke-static {v1, v2}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$12(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;Z)V

    .line 143
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bValidMax:Z
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$13(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->maxValue:D
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$5(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)D

    move-result-wide v1

    iget-object v3, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->minValue:D
    invoke-static {v3}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$6(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mcontext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$7(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->mfromFragment:Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;
    invoke-static {v2}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$8(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/activity/diagnose/fragment/GraphGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->btnSure:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$9(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->btnSure:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$9(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, e:Ljava/lang/NumberFormatException;
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #setter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->bValidMin:Z
    invoke-static {v1, v5}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$12(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;Z)V

    .line 153
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue$2;->this$0:Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;

    #getter for: Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->btnSure:Landroid/widget/Button;
    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;->access$9(Lcom/cnlaunch/x431pro/widget/dialog/SetMaxMinValue;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 128
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 123
    return-void
.end method
