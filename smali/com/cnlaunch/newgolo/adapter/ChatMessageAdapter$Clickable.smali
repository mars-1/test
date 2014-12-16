.class Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$Clickable;
.super Landroid/text/style/ClickableSpan;
.source "ChatMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Clickable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

.field private urlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "path"

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$Clickable;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 1094
    iput-object p2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$Clickable;->urlPath:Ljava/lang/String;

    .line 1095
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1099
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$Clickable;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$5(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/cnlaunch/newgolo/activity/ReportActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1100
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "urlpath"

    iget-object v2, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$Clickable;->urlPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1101
    iget-object v1, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$Clickable;->this$0:Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;

    #getter for: Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;->access$5(Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1102
    const-string/jumbo v1, "ChatMessageAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "urlpath:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/cnlaunch/newgolo/adapter/ChatMessageAdapter$Clickable;->urlPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void
.end method
