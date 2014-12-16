.class public abstract Lcom/cnlaunch/golo3/message/BaseActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseActivity.java"


# instance fields
.field contentView:Landroid/view/View;

.field public header:Landroid/widget/TextView;

.field protected header_view:Landroid/widget/LinearLayout;

.field protected ivLeftNav:Landroid/widget/ImageView;

.field protected ivRightNav:Landroid/widget/ImageView;

.field protected leftNav:Landroid/widget/LinearLayout;

.field private listener:Landroid/view/View$OnClickListener;

.field protected rightNav:Landroid/widget/LinearLayout;

.field rootLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 69
    new-instance v0, Lcom/cnlaunch/golo3/message/BaseActivity$1;

    invoke-direct {v0, p0}, Lcom/cnlaunch/golo3/message/BaseActivity$1;-><init>(Lcom/cnlaunch/golo3/message/BaseActivity;)V

    iput-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->listener:Landroid/view/View$OnClickListener;

    .line 14
    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 48
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->leftNav:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/message/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->leftNav:Landroid/widget/LinearLayout;

    .line 49
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->leftNav:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->rightNav:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/message/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->rightNav:Landroid/widget/LinearLayout;

    .line 51
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->rightNav:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->titleName:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/message/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->header:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->sub_view:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/message/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->rootLayout:Landroid/widget/LinearLayout;

    .line 54
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->iv_left:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/message/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->ivLeftNav:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->iv_right:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/message/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->ivRightNav:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcom/cnlaunch/golo3/message/R$id;->header_view:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/message/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->header_view:Landroid/widget/LinearLayout;

    .line 57
    return-void
.end method


# virtual methods
.method public addContentView(I)V
    .locals 2
    .parameter "res"

    .prologue
    .line 40
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->contentView:Landroid/view/View;

    .line 41
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->rootLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->contentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 42
    return-void
.end method

.method public getLeftImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->ivLeftNav:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRightImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->ivRightNav:Landroid/widget/ImageView;

    return-object v0
.end method

.method public abstract leftNavClick()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    sget v0, Lcom/cnlaunch/golo3/message/R$layout;->header_view_im:I

    invoke-virtual {p0, v0}, Lcom/cnlaunch/golo3/message/BaseActivity;->setContentView(I)V

    .line 25
    invoke-direct {p0}, Lcom/cnlaunch/golo3/message/BaseActivity;->initUI()V

    .line 26
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 62
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 67
    return-void
.end method

.method public abstract rightNavClick()V
.end method

.method public setHeaderViewAlpha(F)V
    .locals 0
    .parameter "value"

    .prologue
    .line 151
    return-void
.end method

.method public setLeftBG(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->ivLeftNav:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 138
    return-void
.end method

.method public setLeftBtnVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->leftNav:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->leftNav:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRightBtnVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->rightNav:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->rightNav:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRightIsClickable(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->rightNav:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 155
    return-void
.end method

.method public setRightIsEnable(Z)V
    .locals 1
    .parameter "isEnable"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->rightNav:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 159
    return-void
.end method

.method public setRigthBG(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->ivRightNav:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 147
    return-void
.end method

.method public setSubviewBackgroundColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->rootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 167
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->header:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 163
    return-void
.end method

.method public setTitel(Ljava/lang/String;)V
    .locals 1
    .parameter "titleString"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/cnlaunch/golo3/message/BaseActivity;->header:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    return-void
.end method
