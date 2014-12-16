.class public Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;
.super Landroid/app/Dialog;
.source "LoadDialog.java"


# static fields
.field private static loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;


# instance fields
.field private canNotCancel:Z

.field private tipMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 4
    .parameter "ctx"
    .parameter "canNotCancel"
    .parameter "tipMsg"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 49
    iput-boolean p2, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->canNotCancel:Z

    .line 50
    iput-object p3, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->tipMsg:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1030131

    invoke-virtual {v2, v3}, Landroid/content/Context;->setTheme(I)V

    .line 56
    const v2, 0x7f0300d6

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->setContentView(I)V

    .line 61
    const v2, 0x102000b

    invoke-virtual {p0, v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 63
    .local v0, tv:Landroid/widget/TextView;
    invoke-static {p3}, Lcom/cnlaunch/x431pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 68
    .local v1, window:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 69
    return-void
.end method

.method public static dismiss(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 148
    if-nez p0, :cond_1

    .line 149
    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    .line 175
    .end local p0
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 153
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p0
    :cond_1
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 154
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    const/4 v2, 0x0

    sput-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    sput-object v3, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    goto :goto_0

    .line 160
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    sget-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 162
    .local v1, loadContext:Landroid/content/Context;
    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_3

    .line 163
    check-cast v1, Landroid/app/Activity;

    .end local v1           #loadContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    const/4 v2, 0x0

    sput-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    goto :goto_0

    .line 168
    :cond_3
    sget-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    invoke-virtual {v2}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->dismiss()V

    .line 169
    const/4 v2, 0x0

    sput-object v2, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 89
    return-void
.end method

.method public static show(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resourceId"

    .prologue
    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 113
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "message"

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 101
    return-void
.end method

.method private static show(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "message"
    .parameter "isCancel"

    .prologue
    .line 126
    if-nez p0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 131
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    goto :goto_0

    .line 136
    :cond_2
    sget-object v0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    :cond_3
    new-instance v0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    invoke-direct {v0, p0, p2, p1}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    .line 140
    sget-object v0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->loadDialog:Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 73
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 74
    iget-boolean v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->canNotCancel:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/LoadDialog;->tipMsg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->shortToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
