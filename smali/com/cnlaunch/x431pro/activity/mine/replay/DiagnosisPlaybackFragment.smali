.class public Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "DiagnosisPlaybackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/cnlaunch/x431pro/activity/BaseFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private btn_confirm:Landroid/widget/Button;

.field private btn_delete:Landroid/widget/Button;

.field private btn_selectall:Landroid/widget/CheckBox;

.field private cols:I

.field private fileId:I

.field private grp:I

.field private hlsx:I

.field private item:I

.field private itemcount:I

.field private jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

.field private mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

.field private mCheckCount:I

.field private mCheckLimit:I

.field private mGv:Landroid/widget/GridView;

.field private mReportPath:Ljava/lang/String;

.field private namestrs:[Ljava/lang/String;

.field private selectMenuBeanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;",
            ">;"
        }
    .end annotation
.end field

.field private selectedStreamItemdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;"
        }
    .end annotation
.end field

.field streamAllList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private textStrs:[Ljava/lang/String;

.field private unitstrs:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 39
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mReportPath:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckCount:I

    .line 56
    const/16 v0, 0x270f

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckLimit:I

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->streamAllList:Ljava/util/ArrayList;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Landroid/widget/CheckBox;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->btn_selectall:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    iput p1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckCount:I

    return-void
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->selectMenuBeanList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckLimit:I

    return v0
.end method

.method static synthetic access$5(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mReportPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)Landroid/app/FragmentManager;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->fragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method private getReportDiagnoseItemList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "reportPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v6, selectMenuBeanListTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v1, dataStreamBeanListTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v2, file:Ljava/io/File;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->streamAllList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 184
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 185
    new-instance v7, Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    invoke-direct {v7}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;-><init>()V

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    .line 186
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    invoke-virtual {v7}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->init()I

    move-result v7

    iput v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->hlsx:I

    .line 187
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mReportPath:Ljava/lang/String;

    iget v9, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->hlsx:I

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->openFile(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->fileId:I

    .line 189
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->fileId:I

    if-nez v7, :cond_1

    .line 190
    new-instance v7, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$3;

    invoke-direct {v7, p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$3;-><init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)V

    .line 201
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0704fc

    const v10, 0x7f0706e4

    const/4 v11, 0x1

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$3;->showDialog(Landroid/content/Context;IIZ)V

    .line 213
    :goto_0
    const/4 v0, 0x0

    .line 214
    .local v0, dataStreamBean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    const/4 v5, 0x0

    .line 215
    .local v5, selectMenuBean:Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->item:I

    if-lez v7, :cond_0

    .line 217
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->grp:I

    iget v9, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->cols:I

    iget v10, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->item:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->readDsDataFirstItemData(III)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->textStrs:[Ljava/lang/String;

    .line 218
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->namestrs:[Ljava/lang/String;

    array-length v7, v7

    if-lt v3, v7, :cond_2

    .line 232
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->streamAllList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    iget v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->itemcount:I

    if-lt v4, v7, :cond_6

    .line 251
    .end local v3           #i:I
    .end local v4           #j:I
    :cond_0
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->fileId:I

    iget v9, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->hlsx:I

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->readEndCloseFile(II)V

    .line 255
    .end local v0           #dataStreamBean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    .end local v5           #selectMenuBean:Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;
    :goto_3
    return-object v6

    .line 203
    :cond_1
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->fileId:I

    invoke-virtual {v7, v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->readGroupId(I)I

    move-result v7

    iput v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->grp:I

    .line 204
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->grp:I

    invoke-virtual {v7, v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->readGroupItemCount(I)I

    move-result v7

    iput v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->itemcount:I

    .line 205
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->grp:I

    invoke-virtual {v7, v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->readGroupItemColCount(I)I

    move-result v7

    iput v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->cols:I

    .line 206
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->grp:I

    iget v9, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->cols:I

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->readDsNames(II)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->namestrs:[Ljava/lang/String;

    .line 207
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->grp:I

    iget v9, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->cols:I

    invoke-virtual {v7, v8, v9}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->readDsunitstrs(II)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->unitstrs:[Ljava/lang/String;

    .line 210
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->grp:I

    invoke-virtual {v7, v8}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->readDsDataFirstItemCount(I)I

    move-result v7

    iput v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->item:I

    goto :goto_0

    .line 219
    .restart local v0       #dataStreamBean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    .restart local v3       #i:I
    .restart local v5       #selectMenuBean:Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;
    :cond_2
    new-instance v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .end local v0           #dataStreamBean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    invoke-direct {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;-><init>()V

    .line 220
    .restart local v0       #dataStreamBean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->namestrs:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-nez v7, :cond_3

    const-string/jumbo v7, ""

    :goto_4
    invoke-virtual {v0, v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setTitle(Ljava/lang/String;)V

    .line 221
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->unitstrs:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-nez v7, :cond_4

    const-string/jumbo v7, ""

    :goto_5
    invoke-virtual {v0, v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setUnit(Ljava/lang/String;)V

    .line 222
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->textStrs:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-nez v7, :cond_5

    const-string/jumbo v7, ""

    :goto_6
    invoke-virtual {v0, v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setValue(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->doConversion()V

    .line 224
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    new-instance v5, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;

    .end local v5           #selectMenuBean:Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;
    invoke-direct {v5}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;-><init>()V

    .line 227
    .restart local v5       #selectMenuBean:Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setCheck(Z)V

    .line 228
    invoke-virtual {v5, v3}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setNum(I)V

    .line 229
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->namestrs:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v5, v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;->setTitle(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 220
    :cond_3
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->namestrs:[Ljava/lang/String;

    aget-object v7, v7, v3

    goto :goto_4

    .line 221
    :cond_4
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->unitstrs:[Ljava/lang/String;

    aget-object v7, v7, v3

    goto :goto_5

    .line 222
    :cond_5
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->textStrs:[Ljava/lang/String;

    aget-object v7, v7, v3

    goto :goto_6

    .line 235
    .restart local v4       #j:I
    :cond_6
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->jnitest:Lcom/cnlaunch/mycar/jni/JniX431FileTest;

    iget v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->grp:I

    iget v9, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->cols:I

    iget v10, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->item:I

    invoke-virtual {v7, v8, v9, v10}, Lcom/cnlaunch/mycar/jni/JniX431FileTest;->readDsDataNextItemData(III)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->textStrs:[Ljava/lang/String;

    .line 236
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #dataStreamBeanListTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .restart local v1       #dataStreamBeanListTemp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v3, 0x0

    :goto_7
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->textStrs:[Ljava/lang/String;

    array-length v7, v7

    if-lt v3, v7, :cond_7

    .line 245
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->streamAllList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 238
    :cond_7
    new-instance v0, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    .end local v0           #dataStreamBean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    invoke-direct {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;-><init>()V

    .line 239
    .restart local v0       #dataStreamBean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->namestrs:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-nez v7, :cond_8

    const-string/jumbo v7, ""

    :goto_8
    invoke-virtual {v0, v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setTitle(Ljava/lang/String;)V

    .line 240
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->unitstrs:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-nez v7, :cond_9

    const-string/jumbo v7, ""

    :goto_9
    invoke-virtual {v0, v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setUnit(Ljava/lang/String;)V

    .line 241
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->textStrs:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-nez v7, :cond_a

    const-string/jumbo v7, ""

    :goto_a
    invoke-virtual {v0, v7}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->setValue(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;->doConversion()V

    .line 243
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 239
    :cond_8
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->namestrs:[Ljava/lang/String;

    aget-object v7, v7, v3

    goto :goto_8

    .line 240
    :cond_9
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->unitstrs:[Ljava/lang/String;

    aget-object v7, v7, v3

    goto :goto_9

    .line 241
    :cond_a
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->textStrs:[Ljava/lang/String;

    aget-object v7, v7, v3

    goto :goto_a

    .line 253
    .end local v0           #dataStreamBean:Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #selectMenuBean:Lcom/cnlaunch/diagnosemodule/bean/BasicSelectMenuBean;
    :cond_b
    iget-object v7, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f0705ec

    invoke-static {v7, v8}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    goto/16 :goto_3
.end method

.method private getSelectedStreamItemdList(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, streamAllList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v7, streamSelectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;>;"
    const/4 v1, 0x0

    .line 268
    .local v1, dataStreamBeanSelectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->getSelectMaskCount()I

    move-result v4

    .line 269
    .local v4, maskSelectCount:I
    if-nez v4, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f070540

    invoke-static {v8, v9}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;I)V

    .line 291
    :cond_0
    return-object v7

    .line 272
    :cond_1
    iget-object v8, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v8}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->getMaskString()Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, maskStr:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_0

    .line 274
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #dataStreamBeanSelectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .restart local v1       #dataStreamBeanSelectedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;>;"
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_3

    .line 286
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 287
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 277
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 278
    .local v0, ch:Ljava/lang/Character;
    invoke-virtual {v0}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v6

    .line 279
    .local v6, str:Ljava/lang/String;
    const-string/jumbo v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 280
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 281
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/cnlaunch/diagnosemodule/bean/BasicDataStreamBean;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    .end local v0           #ch:Ljava/lang/Character;
    .end local v6           #str:Ljava/lang/String;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 80
    const v0, 0x7f0705a9

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->setTitle(I)V

    .line 81
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c00ef

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->btn_selectall:Landroid/widget/CheckBox;

    .line 82
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->btn_selectall:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->btn_selectall:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c004f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->btn_confirm:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->btn_confirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c00f0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->btn_delete:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->btn_delete:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c00f1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mGv:Landroid/widget/GridView;

    .line 92
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mGv:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mReportPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->getReportDiagnoseItemList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->selectMenuBeanList:Ljava/util/ArrayList;

    .line 95
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->selectMenuBeanList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->selectMenuBeanList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/cnlaunch/x431pro/module/diagnose/MConfiguration;->isSortlist()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;-><init>(Ljava/util/ArrayList;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v0, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->setReplaydatastreamFlag(Z)V

    .line 98
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v0, v4}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->setOnClickable(Z)V

    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mGv:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->btn_selectall:Landroid/widget/CheckBox;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 68
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 69
    const-string/jumbo v1, "report_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mReportPath:Ljava/lang/String;

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->initViews()V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 127
    :sswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->streamAllList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->getSelectedStreamItemdList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->selectedStreamItemdList:Ljava/util/ArrayList;

    .line 128
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->selectedStreamItemdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->btn_selectall:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 131
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v1, "DataStreamAll"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->selectedStreamItemdList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 133
    const-string/jumbo v2, "DataStreamCount"

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->selectedStreamItemdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string/jumbo v1, "DataStreamShow_Type"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string/jumbo v1, "ReportPath"

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mReportPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-class v1, Lcom/cnlaunch/x431pro/activity/mine/replay/DataStreamReplayFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->replaceFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 140
    .end local v0           #bundle:Landroid/os/Bundle;
    :sswitch_1
    new-instance v1, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$2;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;)V

    .line 151
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0704fc

    const v4, 0x7f0705eb

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment$2;->showDialog(Landroid/content/Context;IIZ)V

    goto :goto_0

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x7f0c004f -> :sswitch_0
        0x7f0c00f0 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 76
    const v0, 0x7f030045

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 158
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 160
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v1, p3}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->setItemCheck(I)Z

    move-result v0

    .line 161
    .local v0, flag:Z
    iget v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckCount:I

    if-eqz v0, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v1, v3

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckCount:I

    .line 162
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckCount:I

    iget v3, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckLimit:I

    if-le v1, v3, :cond_0

    .line 163
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f07053c

    invoke-virtual {p0, v3}, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mAdapter:Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;

    invoke-virtual {v1, p3, v5}, Lcom/cnlaunch/x431pro/activity/diagnose/adapter/DatastreamSelectListAdapter;->setItemCheck(IZ)V

    .line 165
    iget v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/cnlaunch/x431pro/activity/mine/replay/DiagnosisPlaybackFragment;->mCheckCount:I

    goto :goto_0

    .line 161
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 158
    :pswitch_data_0
    .packed-switch 0x7f0c00f1
        :pswitch_0
    .end packed-switch
.end method
