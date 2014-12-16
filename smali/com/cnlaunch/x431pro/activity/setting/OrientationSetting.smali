.class public Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;
.super Lcom/cnlaunch/x431pro/activity/BaseFragment;
.source "OrientationSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnApply:Landroid/widget/Button;

.field private currentType:I

.field private mHandler:Landroid/os/Handler;

.field private oldType:I

.field private setting_Freedom:Landroid/widget/RadioButton;

.field private setting_Horizontal:Landroid/widget/RadioButton;

.field private setting_Vertical:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    .line 26
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/BaseFragment;-><init>()V

    .line 32
    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->currentType:I

    .line 33
    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->oldType:I

    .line 116
    new-instance v0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$1;-><init>(Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;)V

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->mHandler:Landroid/os/Handler;

    .line 26
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;)I
    .locals 1
    .parameter

    .prologue
    .line 32
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->currentType:I

    return v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->oldType:I

    return v0
.end method

.method static synthetic access$2(Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->btnApply:Landroid/widget/Button;

    return-object v0
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    const v0, 0x7f070723

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setTitle(I)V

    .line 48
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020525

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0498

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Horizontal:Landroid/widget/RadioButton;

    .line 50
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Horizontal:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0499

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Vertical:Landroid/widget/RadioButton;

    .line 52
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Vertical:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c0497

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Freedom:Landroid/widget/RadioButton;

    .line 54
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Freedom:Landroid/widget/RadioButton;

    invoke-virtual {v0, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0c049a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->btnApply:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->btnApply:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/cnlaunch/framework/common/PreferencesManager;->getInstance(Landroid/content/Context;)Lcom/cnlaunch/framework/common/PreferencesManager;

    move-result-object v0

    const-string/jumbo v1, "Orientation"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/cnlaunch/framework/common/PreferencesManager;->get(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->currentType:I

    .line 58
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->currentType:I

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->oldType:I

    .line 59
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->currentType:I

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Freedom:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 61
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Horizontal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Vertical:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 72
    :goto_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 73
    return-void

    .line 63
    :cond_0
    iget v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->currentType:I

    if-ne v0, v4, :cond_1

    .line 64
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Horizontal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 65
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Vertical:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 66
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Freedom:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Horizontal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 69
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Vertical:Landroid/widget/RadioButton;

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 70
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Freedom:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/cnlaunch/x431pro/activity/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 38
    invoke-direct {p0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->initViews()V

    .line 39
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Horizontal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 80
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Vertical:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Freedom:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 82
    iput v4, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->currentType:I

    .line 83
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Horizontal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 87
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Vertical:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 88
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Freedom:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 89
    iput v1, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->currentType:I

    .line 90
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 93
    :pswitch_2
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Horizontal:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 94
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Vertical:Landroid/widget/RadioButton;

    invoke-virtual {v0, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->setting_Freedom:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 96
    const/4 v0, 0x2

    iput v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->currentType:I

    .line 97
    iget-object v0, p0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 100
    :pswitch_3
    new-instance v0, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$2;

    invoke-direct {v0, p0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$2;-><init>(Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;)V

    .line 111
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0704fc

    const v3, 0x7f070726

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/cnlaunch/x431pro/activity/setting/OrientationSetting$2;->showDialog(Landroid/content/Context;IIZ)V

    goto :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0497
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateFragmentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 43
    const v0, 0x7f03018b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
