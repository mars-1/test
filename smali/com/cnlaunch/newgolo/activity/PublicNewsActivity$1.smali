.class Lcom/cnlaunch/newgolo/activity/PublicNewsActivity$1;
.super Landroid/webkit/WebViewClient;
.source "PublicNewsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;

    .line 102
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->access$0(Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->access$0(Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 123
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 112
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->progressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->access$0(Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity$1;->this$0:Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;

    invoke-virtual {v0}, Lcom/cnlaunch/newgolo/activity/PublicNewsActivity;->showProgressDialog()V

    .line 115
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method
