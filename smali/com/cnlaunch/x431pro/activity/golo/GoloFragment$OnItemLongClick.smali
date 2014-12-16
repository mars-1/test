.class Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;
.super Ljava/lang/Object;
.source "GoloFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnItemLongClick"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;


# direct methods
.method private constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 713
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 713
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)V

    return-void
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;)Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;
    .locals 1
    .parameter

    .prologue
    .line 713
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    return-object v0
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 717
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string/jumbo v3, "GoloFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "OnItemLongClick: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    if-lez p3, :cond_0

    .line 719
    add-int/lit8 p3, p3, -0x1

    .line 721
    :cond_0
    const/4 v2, 0x0

    .line 722
    .local v2, object:Ljava/lang/Object;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mType:I
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$9(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 723
    new-instance v2, Ljava/lang/Object;

    .end local v2           #object:Ljava/lang/Object;
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 724
    .restart local v2       #object:Ljava/lang/Object;
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateRemoteList:Ljava/util/List;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$34(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 725
    const-string/jumbo v3, "GoloFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "filterDateList.size() != 0:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateRemoteList:Ljava/util/List;
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$34(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->filterDateRemoteList:Ljava/util/List;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$34(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 730
    :goto_0
    instance-of v3, v2, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 731
    check-cast v1, Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;

    .line 732
    .local v1, goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$1(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 733
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070748

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 734
    const v3, 0x7f070749

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 735
    const v3, 0x7f07074a

    new-instance v4, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick$1;

    invoke-direct {v4, p0, v1}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick$1;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 748
    const v3, 0x7f07074b

    new-instance v4, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick$2;

    invoke-direct {v4, p0}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick$2;-><init>(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 758
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 761
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #goloRemoteOrderInfo:Lcom/cnlaunch/x431pro/module/golo/model/GoloRemoteOrderInfo;
    .end local v2           #object:Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 728
    .restart local v2       #object:Ljava/lang/Object;
    :cond_2
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment$OnItemLongClick;->this$0:Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->remoteUsersDateList:Ljava/util/List;
    invoke-static {v3}, Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;->access$8(Lcom/cnlaunch/x431pro/activity/golo/GoloFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
