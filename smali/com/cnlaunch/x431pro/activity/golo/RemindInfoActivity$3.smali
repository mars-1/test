.class Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;
.super Ljava/lang/Object;
.source "RemindInfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->initView()V
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
.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
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
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 162
    add-int/lit8 p3, p3, -0x1

    .line 163
    :try_start_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$7(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$7(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, p3, :cond_2

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$7(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 164
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$3(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->setSelectedPosition(I)V

    .line 165
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$7(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->getHistory()Lcom/cnlaunch/x431pro/module/golo/model/History;

    move-result-object v1

    .line 166
    .local v1, history:Lcom/cnlaunch/x431pro/module/golo/model/History;
    const-string/jumbo v4, "0"

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getIs_read()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 168
    new-instance v4, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$ModifyWarnInfoStateAsy;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$ModifyWarnInfoStateAsy;-><init>(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$ModifyWarnInfoStateAsy;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getId()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$ModifyWarnInfoStateAsy;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 169
    const-string/jumbo v4, "1"

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/module/golo/model/History;->setIs_read(Ljava/lang/String;)V

    .line 170
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$3(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->notifyDataSetChanged()V

    .line 171
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->historyData:Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$8(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->getUnreadsize()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, size:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "null"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 173
    .local v3, unRead:I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->historyData:Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$8(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;

    move-result-object v5

    if-lez v3, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v3, -0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Lcom/cnlaunch/x431pro/module/golo/model/HistoryData;->setUnreadsize(Ljava/lang/String;)V

    .line 174
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    const v7, 0x7f0706c7

    invoke-virtual {v6, v7}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mTotalSize:I
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$9(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->setTitle(Ljava/lang/String;)V

    .line 176
    .end local v2           #size:Ljava/lang/String;
    .end local v3           #unRead:I
    :cond_1
    const-string/jumbo v4, "1"

    invoke-virtual {v1, v4}, Lcom/cnlaunch/x431pro/module/golo/model/History;->setIs_read(Ljava/lang/String;)V

    .line 177
    sget-object v5, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->HISTORY:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$7(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->getType()Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 178
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$7(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    sget-object v5, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->DETAIL:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->setType(Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;)V

    .line 179
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$7(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->getRemindDetail()Lcom/cnlaunch/x431pro/module/golo/model/GoloDetailInfo;

    move-result-object v4

    if-nez v4, :cond_5

    .line 180
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/module/golo/model/History;->getSerial_no()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p3, v5}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->loadRemindDetail(ILjava/lang/String;)V

    .line 195
    .end local v1           #history:Lcom/cnlaunch/x431pro/module/golo/model/History;
    :cond_2
    :goto_2
    return-void

    .line 172
    .restart local v1       #history:Lcom/cnlaunch/x431pro/module/golo/model/History;
    .restart local v2       #size:Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto/16 :goto_0

    .line 173
    .restart local v3       #unRead:I
    :cond_4
    const-string/jumbo v4, "0"

    goto/16 :goto_1

    .line 182
    .end local v2           #size:Ljava/lang/String;
    .end local v3           #unRead:I
    :cond_5
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$3(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 191
    .end local v1           #history:Lcom/cnlaunch/x431pro/module/golo/model/History;
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 184
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #history:Lcom/cnlaunch/x431pro/module/golo/model/History;
    :cond_6
    :try_start_1
    sget-object v5, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->DETAIL:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$7(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->getType()Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 186
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->mSourceDataList:Ljava/util/List;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$7(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;

    sget-object v5, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;->HISTORY:Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo;->setType(Lcom/cnlaunch/x431pro/module/golo/model/RemindItemInfo$RemindType;)V

    .line 187
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity$3;->this$0:Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;

    #getter for: Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->remindAdapter:Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;->access$3(Lcom/cnlaunch/x431pro/activity/golo/RemindInfoActivity;)Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/golo/adapter/RemindAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
