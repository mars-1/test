.class public Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;
.super Landroid/app/Dialog;
.source "LoadDialog.java"


# static fields
.field private static loadDialog:Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;

.field private static messageView:Landroid/widget/TextView;


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
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 52
    iput-boolean p2, p0, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->canNotCancel:Z

    .line 53
    iput-object p3, p0, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->tipMsg:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1030131

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 59
    sget v1, Lcom/cnlaunch/diagnosemodule/R$layout;->layout_dialog_loading:I

    invoke-virtual {p0, v1}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->setContentView(I)V

    .line 62
    const v1, 0x102000b

    invoke-virtual {p0, v1}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sput-object v1, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->messageView:Landroid/widget/TextView;

    .line 63
    sget-object v1, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {p0, v3}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->setCancelable(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 75
    .local v0, window:Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 76
    return-void
.end method

.method public static dismiss(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 141
    :try_start_0
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 142
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    const/4 v2, 0x0

    sput-object v2, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->loadDialog:Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;

    .line 163
    .local v0, e:Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 148
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    sget-object v2, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->loadDialog:Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->loadDialog:Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    sget-object v2, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->loadDialog:Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 150
    .local v1, loadContext:Landroid/content/Context;
    if-eqz v1, :cond_2

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    .line 151
    check-cast v1, Landroid/app/Activity;

    .end local v1           #loadContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 152
    const/4 v2, 0x0

    sput-object v2, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->loadDialog:Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    sput-object v3, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->loadDialog:Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;

    goto :goto_0

    .line 156
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v2, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->loadDialog:Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;

    invoke-virtual {v2}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->dismiss()V

    .line 157
    const/4 v2, 0x0

    sput-object v2, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->loadDialog:Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static show(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 95
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 96
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "message"

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->show(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 108
    return-void
.end method

.method private static show(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "message"
    .parameter "isCancel"

    .prologue
    .line 121
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 122
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-object v0, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->loadDialog:Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->loadDialog:Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    sget-object v0, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :cond_1
    new-instance v0, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;

    invoke-direct {v0, p0, p2, p1}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    sput-object v0, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->loadDialog:Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;

    .line 132
    sget-object v0, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->loadDialog:Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;

    invoke-virtual {v0}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 80
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 81
    iget-boolean v0, p0, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->canNotCancel:Z

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cnlaunch/diagnosemodule/wiget/LoadDialog;->tipMsg:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 83
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
