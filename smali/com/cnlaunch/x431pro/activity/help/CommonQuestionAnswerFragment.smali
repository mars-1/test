.class public Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "CommonQuestionAnswerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$HelpViewHandler;
    }
.end annotation


# instance fields
.field lastClickedTitle:Ljava/lang/String;

.field private mHandler:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$HelpViewHandler;

.field private mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

.field mLayoutQ2A:Landroid/widget/LinearLayout;

.field mbtn_com_question_answ:Landroid/widget/Button;

.field mbtn_func_display:Landroid/widget/Button;

.field mtvLastClicked:Landroid/widget/TextView;

.field mtvLastShow:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mLayoutQ2A:Landroid/widget/LinearLayout;

    .line 30
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mtvLastClicked:Landroid/widget/TextView;

    .line 31
    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mtvLastShow:Landroid/widget/TextView;

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->lastClickedTitle:Ljava/lang/String;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->writeLastClicked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sget-object v2, Lcom/cnlaunch/x431pro/activity/help/HelpStringConstant;->type_read_question_answer:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    .line 48
    new-instance v0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$HelpViewHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$HelpViewHandler;-><init>(Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$HelpViewHandler;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mHandler:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$HelpViewHandler;

    .line 49
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mHelpDocInstance:Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;

    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mHandler:Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$HelpViewHandler;

    invoke-virtual {v0, v1}, Lcom/cnlaunch/x431pro/activity/help/HelpDocManger;->setViewHandler(Landroid/os/Handler;)V

    .line 50
    const-class v0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->readInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->lastClickedTitle:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private initViews()V
    .locals 2

    .prologue
    .line 57
    const v0, 0x7f0704f1

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->setTitle(I)V

    .line 58
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c00ba

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mLayoutQ2A:Landroid/widget/LinearLayout;

    .line 59
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c00b7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mbtn_func_display:Landroid/widget/Button;

    .line 60
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c00b8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mbtn_com_question_answ:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mbtn_func_display:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    return-void
.end method

.method private writeLastClicked(Ljava/lang/String;)Z
    .locals 1
    .parameter "strValue"

    .prologue
    .line 54
    const-class v0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cnlaunch/x431pro/activity/help/HelpOperatInfo;->WriteInfo(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 42
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->initViews()V

    .line 43
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->initData()V

    .line 45
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 37
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 77
    :goto_0
    return-void

    .line 74
    :pswitch_0
    const-class v0, Lcom/cnlaunch/x431pro/activity/help/HelpFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->replaceFragment(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x7f0c00b7
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 67
    const v0, 0x7f030033

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public recQ2AData(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p1, lstQ2A:Ljava/util/ArrayList;,"Ljava/util/ArrayList<+Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v2, v10, :cond_1

    .line 155
    :cond_0
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 94
    .local v0, act:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 98
    new-instance v8, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 99
    .local v8, verll:Landroid/widget/LinearLayout;
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 100
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 101
    .local v5, mLayoutInflate:Landroid/view/LayoutInflater;
    const v10, 0x7f030095

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 102
    .local v1, answerView:Landroid/widget/TextView;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getItemRef()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    const v10, 0x7f030096

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 107
    .local v9, viewItem:Landroid/view/View;
    const v10, 0x7f0c0220

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 108
    .local v4, ll2:Landroid/widget/LinearLayout;
    const v10, 0x7f0c0221

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 109
    .local v3, itemHeader:Landroid/widget/TextView;
    new-instance v10, Ljava/lang/StringBuilder;

    add-int/lit8 v11, v2, 0x1

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, strTitle:Ljava/lang/String;
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v10, 0x7f0c0222

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 112
    .local v7, title:Landroid/widget/TextView;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;

    invoke-virtual {v10}, Lcom/cnlaunch/x431pro/activity/help/HelpFileInfo;->getItem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->lastClickedTitle:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 115
    iput-object v7, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mtvLastClicked:Landroid/widget/TextView;

    .line 116
    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mtvLastShow:Landroid/widget/TextView;

    .line 117
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f020484

    const/4 v13, 0x0

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 124
    :goto_1
    new-instance v10, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;

    invoke-direct {v10, p0, v1, v7, v6}, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    iget-object v10, p0, Lcom/cnlaunch/x431pro/activity/help/CommonQuestionAnswerFragment;->mLayoutQ2A:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 120
    :cond_2
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7f02012c

    const/4 v13, 0x0

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method
