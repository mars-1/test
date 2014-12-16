.class public abstract Lorg/vudroid/core/BaseViewerActivity;
.super Landroid/app/Activity;
.source "BaseViewerActivity.java"

# interfaces
.implements Lorg/vudroid/core/events/CurrentPageListener;
.implements Lorg/vudroid/core/events/DecodingProgressListener;


# static fields
.field private static final DOCUMENT_VIEW_STATE_PREFERENCES:Ljava/lang/String; = "DjvuDocumentViewState"


# instance fields
.field private currentPageModel:Lorg/vudroid/core/models/CurrentPageModel;

.field private decodeService:Lorg/vudroid/core/DecodeService;

.field private documentView:Lorg/vudroid/core/DocumentView;

.field private pageNumberToast:Landroid/widget/Toast;

.field private viewerPreferences:Lorg/vudroid/core/PDFPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createMainContainer()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private initDecodeService()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/vudroid/core/BaseViewerActivity;->decodeService:Lorg/vudroid/core/DecodeService;

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lorg/vudroid/core/BaseViewerActivity;->createDecodeService()Lorg/vudroid/core/DecodeService;

    move-result-object v0

    iput-object v0, p0, Lorg/vudroid/core/BaseViewerActivity;->decodeService:Lorg/vudroid/core/DecodeService;

    .line 104
    :cond_0
    return-void
.end method

.method private saveCurrentPage()V
    .locals 4

    .prologue
    .line 121
    .line 122
    const-string/jumbo v2, "DjvuDocumentViewState"

    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0, v2, v3}, Lorg/vudroid/core/BaseViewerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 123
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 124
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0}, Lorg/vudroid/core/BaseViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 125
    iget-object v3, p0, Lorg/vudroid/core/BaseViewerActivity;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v3}, Lorg/vudroid/core/DocumentView;->getCurrentPage()I

    move-result v3

    .line 124
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 127
    return-void
.end method

.method private setFullScreen()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 90
    iget-object v0, p0, Lorg/vudroid/core/BaseViewerActivity;->viewerPreferences:Lorg/vudroid/core/PDFPreferences;

    invoke-virtual {v0}, Lorg/vudroid/core/PDFPreferences;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lorg/vudroid/core/BaseViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 92
    invoke-virtual {p0}, Lorg/vudroid/core/BaseViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 94
    :cond_0
    return-void
.end method

.method private setWindowTitle()V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lorg/vudroid/core/BaseViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, name:Ljava/lang/String;
    invoke-virtual {p0}, Lorg/vudroid/core/BaseViewerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method


# virtual methods
.method protected abstract createDecodeService()Lorg/vudroid/core/DecodeService;
.end method

.method public currentPageChanged(I)V
    .locals 4
    .parameter "pageIndex"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/vudroid/core/BaseViewerActivity;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-interface {v2}, Lorg/vudroid/core/DecodeService;->getPageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, pageText:Ljava/lang/String;
    iget-object v1, p0, Lorg/vudroid/core/BaseViewerActivity;->pageNumberToast:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lorg/vudroid/core/BaseViewerActivity;->pageNumberToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 73
    :goto_0
    iget-object v1, p0, Lorg/vudroid/core/BaseViewerActivity;->pageNumberToast:Landroid/widget/Toast;

    const/16 v2, 0x33

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 74
    iget-object v1, p0, Lorg/vudroid/core/BaseViewerActivity;->pageNumberToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 75
    invoke-direct {p0}, Lorg/vudroid/core/BaseViewerActivity;->saveCurrentPage()V

    .line 76
    return-void

    .line 71
    :cond_0
    const/16 v1, 0x12c

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lorg/vudroid/core/BaseViewerActivity;->pageNumberToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method public decodingProgressChanged(I)V
    .locals 0
    .parameter "currentlyDecoding"

    .prologue
    .line 63
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-direct {p0}, Lorg/vudroid/core/BaseViewerActivity;->initDecodeService()V

    .line 34
    new-instance v3, Lorg/vudroid/core/models/ZoomModel;

    invoke-direct {v3}, Lorg/vudroid/core/models/ZoomModel;-><init>()V

    .line 35
    .local v3, zoomModel:Lorg/vudroid/core/models/ZoomModel;
    new-instance v1, Lorg/vudroid/core/models/DecodingProgressModel;

    invoke-direct {v1}, Lorg/vudroid/core/models/DecodingProgressModel;-><init>()V

    .line 36
    .local v1, progressModel:Lorg/vudroid/core/models/DecodingProgressModel;
    invoke-virtual {v1, p0}, Lorg/vudroid/core/models/DecodingProgressModel;->addEventListener(Ljava/lang/Object;)V

    .line 37
    new-instance v4, Lorg/vudroid/core/models/CurrentPageModel;

    invoke-direct {v4}, Lorg/vudroid/core/models/CurrentPageModel;-><init>()V

    iput-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->currentPageModel:Lorg/vudroid/core/models/CurrentPageModel;

    .line 38
    iget-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->currentPageModel:Lorg/vudroid/core/models/CurrentPageModel;

    invoke-virtual {v4, p0}, Lorg/vudroid/core/models/CurrentPageModel;->addEventListener(Ljava/lang/Object;)V

    .line 39
    new-instance v4, Lorg/vudroid/core/DocumentView;

    iget-object v5, p0, Lorg/vudroid/core/BaseViewerActivity;->currentPageModel:Lorg/vudroid/core/models/CurrentPageModel;

    invoke-direct {v4, p0, v3, v1, v5}, Lorg/vudroid/core/DocumentView;-><init>(Landroid/content/Context;Lorg/vudroid/core/models/ZoomModel;Lorg/vudroid/core/models/DecodingProgressModel;Lorg/vudroid/core/models/CurrentPageModel;)V

    iput-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->documentView:Lorg/vudroid/core/DocumentView;

    .line 40
    iget-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v3, v4}, Lorg/vudroid/core/models/ZoomModel;->addEventListener(Ljava/lang/Object;)V

    .line 41
    iget-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->documentView:Lorg/vudroid/core/DocumentView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Lorg/vudroid/core/DocumentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    iget-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-virtual {p0}, Lorg/vudroid/core/BaseViewerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/vudroid/core/DecodeService;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 43
    iget-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->decodeService:Lorg/vudroid/core/DecodeService;

    iget-object v5, p0, Lorg/vudroid/core/BaseViewerActivity;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-interface {v4, v5}, Lorg/vudroid/core/DecodeService;->setContainerView(Landroid/view/View;)V

    .line 44
    iget-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->documentView:Lorg/vudroid/core/DocumentView;

    iget-object v5, p0, Lorg/vudroid/core/BaseViewerActivity;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-virtual {v4, v5}, Lorg/vudroid/core/DocumentView;->setDecodeService(Lorg/vudroid/core/DecodeService;)V

    .line 45
    iget-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-virtual {p0}, Lorg/vudroid/core/BaseViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/vudroid/core/DecodeService;->open(Landroid/net/Uri;)V

    .line 47
    new-instance v4, Lorg/vudroid/core/PDFPreferences;

    invoke-direct {v4, p0}, Lorg/vudroid/core/PDFPreferences;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->viewerPreferences:Lorg/vudroid/core/PDFPreferences;

    .line 49
    invoke-direct {p0}, Lorg/vudroid/core/BaseViewerActivity;->createMainContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 50
    .local v0, frameLayout:Landroid/widget/FrameLayout;
    iget-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 51
    invoke-direct {p0}, Lorg/vudroid/core/BaseViewerActivity;->setFullScreen()V

    .line 52
    invoke-virtual {p0, v0}, Lorg/vudroid/core/BaseViewerActivity;->setContentView(Landroid/view/View;)V

    .line 54
    const-string/jumbo v4, "DjvuDocumentViewState"

    invoke-virtual {p0, v4, v7}, Lorg/vudroid/core/BaseViewerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 55
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    iget-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {p0}, Lorg/vudroid/core/BaseViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/vudroid/core/DocumentView;->goToPage(I)V

    .line 56
    iget-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->documentView:Lorg/vudroid/core/DocumentView;

    invoke-virtual {v4}, Lorg/vudroid/core/DocumentView;->showDocument()V

    .line 58
    iget-object v4, p0, Lorg/vudroid/core/BaseViewerActivity;->viewerPreferences:Lorg/vudroid/core/PDFPreferences;

    invoke-virtual {p0}, Lorg/vudroid/core/BaseViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/vudroid/core/PDFPreferences;->addRecent(Landroid/net/Uri;)V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/vudroid/core/BaseViewerActivity;->decodeService:Lorg/vudroid/core/DecodeService;

    invoke-interface {v0}, Lorg/vudroid/core/DecodeService;->recycle()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/vudroid/core/BaseViewerActivity;->decodeService:Lorg/vudroid/core/DecodeService;

    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 118
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 85
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-direct {p0}, Lorg/vudroid/core/BaseViewerActivity;->setWindowTitle()V

    .line 87
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 111
    return-void
.end method
