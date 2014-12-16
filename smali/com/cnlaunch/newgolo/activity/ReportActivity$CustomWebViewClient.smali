.class Lcom/cnlaunch/newgolo/activity/ReportActivity$CustomWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "ReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/activity/ReportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/activity/ReportActivity;


# direct methods
.method constructor <init>(Lcom/cnlaunch/newgolo/activity/ReportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity$CustomWebViewClient;->this$0:Lcom/cnlaunch/newgolo/activity/ReportActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 58
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity$CustomWebViewClient;->this$0:Lcom/cnlaunch/newgolo/activity/ReportActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ReportActivity;->hit:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ReportActivity;->access$1(Lcom/cnlaunch/newgolo/activity/ReportActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 51
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity$CustomWebViewClient;->this$0:Lcom/cnlaunch/newgolo/activity/ReportActivity;

    #setter for: Lcom/cnlaunch/newgolo/activity/ReportActivity;->currentPath:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/cnlaunch/newgolo/activity/ReportActivity;->access$0(Lcom/cnlaunch/newgolo/activity/ReportActivity;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v0, "ReportActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "currentPath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/cnlaunch/newgolo/activity/ReportActivity$CustomWebViewClient;->this$0:Lcom/cnlaunch/newgolo/activity/ReportActivity;

    #getter for: Lcom/cnlaunch/newgolo/activity/ReportActivity;->hit:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/cnlaunch/newgolo/activity/ReportActivity;->access$1(Lcom/cnlaunch/newgolo/activity/ReportActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
