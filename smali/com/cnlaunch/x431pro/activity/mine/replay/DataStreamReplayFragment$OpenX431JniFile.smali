.class Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;
.super Landroid/os/AsyncTask;
.source "DataStreamReplayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpenX431JniFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private namestrs:[Ljava/lang/String;

.field private textStrs:[Ljava/lang/String;

.field final synthetic this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

.field private unitstrs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 273
    iput-object p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "params"

    .prologue
    .line 279
    const/4 v3, 0x0

    .local v3, j:I
    :goto_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->itemcount:I
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$3(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 293
    const/4 v4, 0x0

    return-object v4

    .line 280
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    move-result-object v4

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->grp:I
    invoke-static {v5}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$7(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v5

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->cols:I
    invoke-static {v6}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$8(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v6

    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->item:I
    invoke-static {v7}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$9(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->readDsDataNextItemData(III)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->textStrs:[Ljava/lang/String;

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v1, dataStreamBeanListTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->textStrs:[Ljava/lang/String;

    array-length v4, v4

    if-lt v2, v4, :cond_1

    .line 290
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->streamAllList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$10(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v4}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->publishProgress([Ljava/lang/Object;)V

    .line 279
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    :cond_1
    new-instance v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-direct {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;-><init>()V

    .line 284
    .local v0, dataStreamBean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->namestrs:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    :goto_2
    invoke-virtual {v0, v4}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setTitle(Ljava/lang/String;)V

    .line 285
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->unitstrs:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-nez v4, :cond_3

    const-string/jumbo v4, ""

    :goto_3
    invoke-virtual {v0, v4}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setUnit(Ljava/lang/String;)V

    .line 286
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->textStrs:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-nez v4, :cond_4

    const-string/jumbo v4, ""

    :goto_4
    invoke-virtual {v0, v4}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setValue(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->doConversion()V

    .line 288
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 284
    :cond_2
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->namestrs:[Ljava/lang/String;

    aget-object v4, v4, v2

    goto :goto_2

    .line 285
    :cond_3
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->unitstrs:[Ljava/lang/String;

    aget-object v4, v4, v2

    goto :goto_3

    .line 286
    :cond_4
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->textStrs:[Ljava/lang/String;

    aget-object v4, v4, v2

    goto :goto_4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 304
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;
    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$6(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->fileId:I
    invoke-static {v1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$11(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->this$0:Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    #getter for: Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->hlsx:I
    invoke-static {v2}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;->access$12(Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->readEndCloseFile(II)V

    .line 305
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0
    .parameter "values"

    .prologue
    .line 298
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment$OpenX431JniFile;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
