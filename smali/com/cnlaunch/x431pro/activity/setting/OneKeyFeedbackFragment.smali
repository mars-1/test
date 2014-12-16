.class public Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "OneKeyFeedbackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x73d1e29430dadc4cL


# instance fields
.field private adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

.field private btn_onekey_feedback_cancel:Landroid/widget/Button;

.field private btn_onekey_feedback_next:Landroid/widget/Button;

.field private btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

.field private diagnosis_log:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private items_diagnosis_log:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lv_setting_onekey:Landroid/widget/ListView;

.field private mSerialNo:Ljava/lang/String;

.field private set_filename:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private temp_isSelected:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mSerialNo:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->set_filename:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->temp_isSelected:Ljava/util/List;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;)Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->refreshBtnSelect()V

    return-void
.end method

.method private initViews()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    const v0, 0x7f0705f0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->setTitle(I)V

    .line 99
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 100
    new-instance v0, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    invoke-direct {v0, v1, v2, p0}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;-><init>(Landroid/content/Context;Ljava/util/Vector;Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    .line 101
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0495

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->lv_setting_onekey:Landroid/widget/ListView;

    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->lv_setting_onekey:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0492

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    .line 106
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0493

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_next:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_next:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 131
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_next:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0494

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_cancel:Landroid/widget/Button;

    .line 117
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_next:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_cancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->lv_setting_onekey:Landroid/widget/ListView;

    new-instance v1, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment$1;

    invoke-direct {v1, p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private refreshBtnSelect()V
    .locals 3

    .prologue
    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 142
    :goto_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    const v2, 0x7f0704e6

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 144
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 146
    :cond_0
    return-void

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    const v2, 0x7f0704e7

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 138
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 135
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private refreshView()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 197
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v4

    const-string/jumbo v5, "serialNo"

    invoke-virtual {v4, v5}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mSerialNo:Ljava/lang/String;

    .line 198
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil;->getDiagnoseLogFileList()Ljava/util/Vector;

    move-result-object v4

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->diagnosis_log:Ljava/util/Vector;

    .line 200
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->set_filename:Ljava/util/List;

    if-eqz v4, :cond_1

    .line 201
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->set_filename:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 206
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 210
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    if-eqz v4, :cond_3

    .line 211
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->clear()V

    .line 216
    :goto_2
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mSerialNo:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 217
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_4

    .line 230
    :cond_0
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->temp_isSelected:Ljava/util/List;

    if-eqz v4, :cond_6

    .line 231
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->temp_isSelected:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 232
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v4, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 238
    :goto_4
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 239
    const/4 v1, 0x0

    :goto_5
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lt v1, v4, :cond_7

    .line 246
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 251
    :goto_6
    const/4 v1, 0x0

    :goto_7
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_a

    .line 264
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->selectAllChanged()V

    .line 266
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->setmList(Ljava/util/Vector;)V

    .line 267
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->notifyDataSetChanged()V

    .line 268
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->lv_setting_onekey:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->refreshBtnSelect()V

    .line 270
    return-void

    .line 203
    .end local v1           #i:I
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->set_filename:Ljava/util/List;

    goto :goto_0

    .line 207
    .restart local v1       #i:I
    :cond_2
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->set_filename:Ljava/util/List;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getFilename()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 213
    :cond_3
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    goto/16 :goto_2

    .line 218
    :cond_4
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mSerialNo:Ljava/lang/String;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getDeviceSN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 219
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 234
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->temp_isSelected:Ljava/util/List;

    .line 235
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v4, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_4

    .line 240
    :cond_7
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 241
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->temp_isSelected:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    :goto_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    .line 243
    :cond_8
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->temp_isSelected:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 248
    :cond_9
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->setIsSelected(Ljava/util/HashMap;)V

    goto/16 :goto_6

    .line 252
    :cond_a
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const/4 v2, 0x0

    .local v2, j:I
    :goto_9
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->set_filename:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_b

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_7

    .line 254
    :cond_b
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->set_filename:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 255
    .local v3, temp_file:Ljava/lang/String;
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, file:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 257
    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v4}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->temp_isSelected:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 66
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v1

    const-string/jumbo v2, "serialNo"

    invoke-virtual {v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mSerialNo:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil;->getDiagnoseLogFileList()Ljava/util/Vector;

    move-result-object v1

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->diagnosis_log:Ljava/util/Vector;

    .line 68
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    .line 69
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mSerialNo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 78
    .end local v0           #i:I
    :goto_1
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->initViews()V

    .line 79
    return-void

    .line 71
    .restart local v0       #i:I
    :cond_0
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mSerialNo:Ljava/lang/String;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v1}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;->getDeviceSN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v0           #i:I
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070591

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v6, 0x7f0704e7

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 194
    :goto_0
    return-void

    .line 151
    :pswitch_0
    const/4 v0, 0x0

    .line 152
    .local v0, checkFlag:Z
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, selectTxt:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 155
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    const v6, 0x7f0704e6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(I)V

    .line 160
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 164
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_next:Landroid/widget/Button;

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 157
    .end local v3           #i:I
    :cond_0
    const/4 v0, 0x1

    .line 158
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setText(I)V

    goto :goto_1

    .line 161
    .restart local v3       #i:I
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 170
    .end local v0           #checkFlag:Z
    .end local v3           #i:I
    .end local v4           #selectTxt:Ljava/lang/String;
    :pswitch_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/cnlaunch/x431pro/utils/CommonUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 171
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0704df

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 174
    :cond_2
    const/4 v2, 0x1

    .line 175
    .local v2, hasUpgrade:Z
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 176
    .local v1, feedbackListFile:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;>;"
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_3
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 183
    if-eqz v2, :cond_5

    .line 184
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0704e8

    invoke-static {v5, v6}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 177
    :cond_3
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v5}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 178
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->items_diagnosis_log:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;

    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 179
    const/4 v2, 0x0

    .line 176
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 186
    :cond_5
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mContext:Landroid/content/Context;

    invoke-static {v5, v1}, Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil;->toSendDiagnosticLog(Landroid/content/Context;Ljava/util/Vector;)V

    goto/16 :goto_0

    .line 191
    .end local v1           #feedbackListFile:Ljava/util/Vector;,"Ljava/util/Vector<Lcom/cnlaunch/x431pro/utils/diagnose/DiagnoseLogInfoSearchUtil$DiagnoseLogFileInfo;>;"
    .end local v2           #hasUpgrade:Z
    .end local v3           #i:I
    :pswitch_2
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->mainActivity:Lcom/cnlaunch/x431pro/activity/MainActivity;

    const v6, 0x7f0c02ef

    invoke-virtual {v5, v6}, Lcom/cnlaunch/x431pro/activity/MainActivity;->showActivity(I)V

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0492
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 83
    const v0, 0x7f03018a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->refreshView()V

    .line 91
    return-void
.end method

.method public selectAllChanged()V
    .locals 8

    .prologue
    const v7, 0x7f0704e6

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 276
    const/4 v2, 0x0

    .line 277
    .local v2, selected:Z
    const/4 v1, 0x0

    .line 278
    .local v1, listSize:I
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 280
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 288
    .end local v0           #i:I
    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    .line 289
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 290
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 291
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    const v4, 0x7f0704e7

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    .line 292
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_next:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 304
    :goto_2
    return-void

    .line 281
    .restart local v0       #i:I
    :cond_1
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->adapter:Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;

    invoke-virtual {v3}, Lcom/cnlaunch/x431pro/activity/setting/adapter/OneKeyFeedbackAdapter;->getIsSelected()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 282
    const/4 v2, 0x1

    .line 283
    goto :goto_1

    .line 280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    .end local v0           #i:I
    :cond_3
    if-lez v1, :cond_4

    .line 294
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v3, v6}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 295
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 296
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setText(I)V

    .line 297
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_next:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 299
    :cond_4
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 300
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v3, v7}, Landroid/widget/CheckBox;->setText(I)V

    .line 301
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_select_all:Landroid/widget/CheckBox;

    invoke-virtual {v3, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 302
    iget-object v3, p0, Lcom/cnlaunch/x431pro/activity/setting/OneKeyFeedbackFragment;->btn_onekey_feedback_next:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2
.end method
