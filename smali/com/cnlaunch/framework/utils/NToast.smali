.class public Lcom/cnlaunch/framework/utils/NToast;
.super Ljava/lang/Object;
.source "NToast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static longToast(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public static longToast(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "resId"
    .parameter "gravity"

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lcom/cnlaunch/framework/utils/NToast;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 55
    return-void
.end method

.method public static longToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "text"

    .prologue
    .line 42
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/cnlaunch/framework/utils/NToast;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 43
    return-void
.end method

.method public static longToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "text"
    .parameter "gravity"

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/cnlaunch/framework/utils/NToast;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 59
    return-void
.end method

.method public static shortToast(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/cnlaunch/framework/utils/NToast;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 31
    return-void
.end method

.method public static shortToast(Landroid/content/Context;II)V
    .locals 2
    .parameter "context"
    .parameter "resId"
    .parameter "gravity"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p2}, Lcom/cnlaunch/framework/utils/NToast;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 47
    return-void
.end method

.method public static shortToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "text"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/cnlaunch/framework/utils/NToast;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public static shortToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .parameter "context"
    .parameter "text"
    .parameter "gravity"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/cnlaunch/framework/utils/NToast;->showToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 51
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 63
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, toast:Landroid/widget/Toast;
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 65
    .local v0, inflate:Landroid/view/LayoutInflater;
    sget v4, Lcom/launch/core/R$layout;->layout_toast:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 66
    .local v3, v:Landroid/view/View;
    sget v4, Lcom/launch/core/R$id;->toast_message:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 67
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 69
    invoke-virtual {v1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 70
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 72
    .end local v0           #inflate:Landroid/view/LayoutInflater;
    .end local v1           #toast:Landroid/widget/Toast;
    .end local v2           #tv:Landroid/widget/TextView;
    .end local v3           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 7
    .parameter "context"
    .parameter "text"
    .parameter "duration"
    .parameter "gravity"

    .prologue
    const/4 v6, 0x0

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    new-instance v1, Landroid/widget/Toast;

    invoke-direct {v1, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, toast:Landroid/widget/Toast;
    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 78
    .local v0, inflate:Landroid/view/LayoutInflater;
    sget v4, Lcom/launch/core/R$layout;->layout_toast:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 79
    .local v3, v:Landroid/view/View;
    sget v4, Lcom/launch/core/R$id;->toast_message:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 80
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v1, p3, v6, v6}, Landroid/widget/Toast;->setGravity(III)V

    .line 82
    invoke-virtual {v1, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 83
    invoke-virtual {v1, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 84
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 86
    .end local v0           #inflate:Landroid/view/LayoutInflater;
    .end local v1           #toast:Landroid/widget/Toast;
    .end local v2           #tv:Landroid/widget/TextView;
    .end local v3           #v:Landroid/view/View;
    :cond_0
    return-void
.end method
