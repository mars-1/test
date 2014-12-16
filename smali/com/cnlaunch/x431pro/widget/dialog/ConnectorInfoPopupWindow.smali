.class public Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;
.super Ljava/lang/Object;
.source "ConnectorInfoPopupWindow.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private popupWindow:Landroid/widget/PopupWindow;

.field private tv_deviceInfo:Landroid/widget/TextView;

.field private tv_poptext:Landroid/widget/TextView;

.field private tv_softInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030141

    invoke-virtual {v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, popview:Landroid/view/View;
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0, v4, v4, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    .line 46
    const v1, 0x7f0c02a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->tv_poptext:Landroid/widget/TextView;

    .line 47
    const v1, 0x7f0c03a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->tv_deviceInfo:Landroid/widget/TextView;

    .line 48
    const v1, 0x7f0c03a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->tv_softInfo:Landroid/widget/TextView;

    .line 49
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 50
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 51
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 52
    iget-object v1, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 103
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 99
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;Lcom/cnlaunch/physics/entity/DPUHardwareInfo;)V
    .locals 4
    .parameter "view"
    .parameter "dpInfo"

    .prologue
    .line 73
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 74
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->tv_deviceInfo:Landroid/widget/TextView;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0705a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cnlaunch/physics/entity/DPUHardwareInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 80
    :cond_0
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;Lcom/cnlaunch/physics/entity/DPUSoftInfo;)V
    .locals 4
    .parameter "view"
    .parameter "dsInfo"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->tv_softInfo:Landroid/widget/TextView;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706ec

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->getBootVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 90
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->getDiagnoseSoftVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->getDownloadSersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706ef

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/cnlaunch/physics/entity/DPUSoftInfo;->getProductFunctionVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 95
    :cond_0
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "activateTime"

    .prologue
    .line 61
    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->tv_poptext:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0706e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v0, p0, Lcom/cnlaunch/x431pro/widget/dialog/ConnectorInfoPopupWindow;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    .line 66
    :cond_0
    return-void
.end method
