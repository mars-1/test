.class public Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
.super Ljava/lang/Object;
.source "DiagnoseAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private cancelable:Z

.field private contentView:Landroid/view/View;

.field private context:Landroid/content/Context;

.field private mIconId:I

.field private message:Ljava/lang/String;

.field private negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private negativeButtonText:Ljava/lang/String;

.field private positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private positiveButtonText:Ljava/lang/String;

.field private style:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->context:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "style"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->context:Landroid/content/Context;

    .line 63
    iput p2, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->style:I

    .line 64
    return-void
.end method

.method static synthetic access$0(Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public create()Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->create(Z)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public create(Z)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;
    .locals 8
    .parameter "flag"

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/16 v5, 0x8

    .line 198
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->context:Landroid/content/Context;

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 200
    .local v1, inflater:Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->style:I

    if-nez v3, :cond_0

    .line 201
    sget v3, Lcom/cnlaunch/diagnosemodule/R$style;->DiagnoseMessageDialogTheme:I

    iput v3, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->style:I

    .line 203
    :cond_0
    new-instance v0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;

    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->context:Landroid/content/Context;

    iget v4, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->style:I

    invoke-direct {v0, v3, v4}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 204
    .local v0, dialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;
    if-nez p1, :cond_1

    .line 256
    :goto_0
    return-object v0

    .line 206
    :cond_1
    sget v3, Lcom/cnlaunch/diagnosemodule/R$layout;->alert_dialog:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 207
    .local v2, layout:Landroid/view/View;
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    sget v3, Lcom/cnlaunch/diagnosemodule/R$id;->title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->positiveButtonText:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 212
    sget v3, Lcom/cnlaunch/diagnosemodule/R$id;->positiveButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->positiveButtonText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_2

    .line 214
    sget v3, Lcom/cnlaunch/diagnosemodule/R$id;->positiveButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder$1;

    invoke-direct {v4, p0, v0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder$1;-><init>(Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->negativeButtonText:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 227
    sget v3, Lcom/cnlaunch/diagnosemodule/R$id;->negativeButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->negativeButtonText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_3

    .line 229
    sget v3, Lcom/cnlaunch/diagnosemodule/R$id;->negativeButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    new-instance v4, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder$2;

    invoke-direct {v4, p0, v0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder$2;-><init>(Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->message:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 242
    sget v3, Lcom/cnlaunch/diagnosemodule/R$id;->message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    :goto_3
    iget-object v3, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->contentView:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 250
    sget v3, Lcom/cnlaunch/diagnosemodule/R$id;->fl_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 251
    sget v3, Lcom/cnlaunch/diagnosemodule/R$id;->fl_content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->contentView:Landroid/view/View;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    sget v3, Lcom/cnlaunch/diagnosemodule/R$id;->content:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 254
    :cond_4
    invoke-virtual {v0, v2}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;->setContentView(Landroid/view/View;)V

    .line 255
    iget-boolean v3, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->cancelable:Z

    invoke-virtual {v0, v3}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;->setCancelable(Z)V

    goto/16 :goto_0

    .line 223
    :cond_5
    sget v3, Lcom/cnlaunch/diagnosemodule/R$id;->positiveButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 238
    :cond_6
    sget v3, Lcom/cnlaunch/diagnosemodule/R$id;->negativeButton:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 245
    :cond_7
    sget v3, Lcom/cnlaunch/diagnosemodule/R$id;->message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method public setCancelable(Z)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    .locals 0
    .parameter "cancelable"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->cancelable:Z

    .line 79
    return-object p0
.end method

.method public setIcon(I)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    .locals 0
    .parameter "iconId"

    .prologue
    .line 134
    iput p1, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->mIconId:I

    .line 135
    return-object p0
.end method

.method public setMessage(I)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->message:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public setMessage(Ljava/lang/String;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    .locals 0
    .parameter "message"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->message:Ljava/lang/String;

    .line 74
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    .locals 1
    .parameter "negativeButtonText"
    .parameter "listener"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 174
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    .locals 0
    .parameter "negativeButtonText"
    .parameter "listener"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->negativeButtonText:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->negativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 187
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    .locals 1
    .parameter "positiveButtonText"
    .parameter "listener"

    .prologue
    .line 146
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 148
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    .locals 0
    .parameter "positiveButtonText"
    .parameter "listener"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->positiveButtonText:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->positiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 161
    return-object p0
.end method

.method public setTitle(I)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    .locals 1
    .parameter "title"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->title:Ljava/lang/String;

    .line 101
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    .locals 0
    .parameter "title"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->title:Ljava/lang/String;

    .line 112
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;
    .locals 0
    .parameter "v"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->contentView:Landroid/view/View;

    .line 124
    return-object p0
.end method

.method public show()Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;
    .locals 2

    .prologue
    .line 264
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog$Builder;->create(Z)Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;

    move-result-object v0

    .line 265
    .local v0, dialog:Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;
    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/wiget/DiagnoseAlertDialog;->show()V

    .line 266
    return-object v0
.end method
