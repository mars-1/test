.class public Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "ChangePhoneFragment.java"


# instance fields
.field private final REQBINDGPHONECODE:I

.field private but_mine_phone:Landroid/widget/Button;

.field private et_mine_phone:Landroid/widget/EditText;

.field private is_bind_mobile:Ljava/lang/String;

.field private mPhoneNumber:Ljava/lang/String;

.field private useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 29
    const/16 v0, 0x83d

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->REQBINDGPHONECODE:I

    .line 32
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mPhoneNumber:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->is_bind_mobile:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->but_mine_phone:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->et_mine_phone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private initViews()V
    .locals 9

    .prologue
    const v8, 0x7f0706db

    const/4 v7, 0x0

    .line 54
    const v5, 0x7f0705ac

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->setTitle(I)V

    .line 55
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020521

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0d0089

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->et_mine_phone:Landroid/widget/EditText;

    .line 57
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0d008a

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->but_mine_phone:Landroid/widget/Button;

    .line 58
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->but_mine_phone:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 59
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->et_mine_phone:Landroid/widget/EditText;

    new-instance v6, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$1;

    invoke-direct {v6, p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$1;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 79
    const-string/jumbo v5, "1"

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->is_bind_mobile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070747

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, alreadyBind:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, editStr:Ljava/lang/String;
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    .line 83
    .local v4, start:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 84
    .local v2, end:I
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 85
    .local v3, ss:Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v6, -0x333334

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v6, 0x12

    invoke-virtual {v3, v5, v4, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 86
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->et_mine_phone:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->et_mine_phone:Landroid/widget/EditText;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 88
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->but_mine_phone:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 99
    .end local v0           #alreadyBind:Ljava/lang/String;
    .end local v1           #editStr:Ljava/lang/String;
    .end local v2           #end:I
    .end local v3           #ss:Landroid/text/SpannableString;
    .end local v4           #start:I
    :goto_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->but_mine_phone:Landroid/widget/Button;

    new-instance v6, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$2;

    invoke-direct {v6, p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment$2;-><init>(Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    return-void

    .line 90
    :cond_0
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->et_mine_phone:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->et_mine_phone:Landroid/widget/EditText;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 92
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->but_mine_phone:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->but_mine_phone:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v5, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->but_mine_phone:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public doInBackground(I)Ljava/lang/Object;
    .locals 4
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/cnlaunch/framework/network/http/HttpException;
        }
    .end annotation

    .prologue
    .line 116
    packed-switch p1, :pswitch_data_0

    .line 124
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->doInBackground(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    .line 119
    :pswitch_0
    new-instance v1, Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    .line 120
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->useraction:Lcom/cnlaunch/x431pro/module/user/action/UserAction;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->et_mine_phone:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cnlaunch/x431pro/module/user/action/UserAction;->modifyPhoneNumber(Ljava/lang/String;)Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    move-result-object v0

    .line 121
    .local v0, resBinding:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    const-string/jumbo v1, "hxm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "resBinding=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x83d
        :pswitch_0
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "phone_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mPhoneNumber:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->bundle:Landroid/os/Bundle;

    const-string/jumbo v1, "is_bind_mobile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->is_bind_mobile:Ljava/lang/String;

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->initViews()V

    .line 45
    return-void
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 50
    const v0, 0x7f030026

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onFailure(IILjava/lang/Object;)V
    .locals 3
    .parameter "requestCode"
    .parameter "state"
    .parameter "result"

    .prologue
    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onFailure(IILjava/lang/Object;)V

    .line 153
    packed-switch p1, :pswitch_data_0

    .line 159
    :goto_0
    return-void

    .line 155
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 156
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0706dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x83d
        :pswitch_0
    .end packed-switch
.end method

.method public onSuccess(ILjava/lang/Object;)V
    .locals 4
    .parameter "requestCode"
    .parameter "result"

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onSuccess(ILjava/lang/Object;)V

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss(Landroid/content/Context;)V

    .line 135
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 136
    check-cast v0, Lcom/cnlaunch/x431pro/module/base/CommonResponse;

    .line 137
    .local v0, res:Lcom/cnlaunch/x431pro/module/base/CommonResponse;
    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->isSuccess(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 139
    :cond_1
    const/16 v1, 0x7538

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/module/base/CommonResponse;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 140
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/mine/ChangePhoneFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cnlaunch/framework/utils/NToast;->longToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x83d
        :pswitch_0
    .end packed-switch
.end method
