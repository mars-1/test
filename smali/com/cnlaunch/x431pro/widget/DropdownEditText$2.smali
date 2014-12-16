.class Lcom/cnlaunch/x431pro/widget/DropdownEditText$2;
.super Ljava/lang/Object;
.source "DropdownEditText.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/widget/DropdownEditText;->showPopupWindow()V
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
.field final synthetic this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/widget/DropdownEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$2;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 226
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$2;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$2;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$2;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v1, v0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->mEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$2;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v2, v0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->preferManager:Lcom/cnlaunch/framework/common/PreferencesManager;

    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$2;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/DropdownEditText$2;->this$0:Lcom/cnlaunch/x431pro/widget/DropdownEditText;

    iget-object v0, v0, Lcom/cnlaunch/x431pro/widget/DropdownEditText;->handle:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 229
    return-void
.end method
